/**Evaluator.java
 * 8:08:15 AM @author Arindam
 */
package propara;

import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.lang.ProcessBuilder.Redirect;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVParser;
import org.apache.commons.csv.CSVPrinter;
import org.apache.commons.csv.CSVRecord;
import org.apache.commons.io.FileUtils;

/**
 * @author Arindam
 *
 */
public class Evaluator {

	/**
	 * @param args
	 * @throws IOException 
	 * @throws InterruptedException 
	 */
	public static void main(String[] args) throws IOException, InterruptedException {
		// read the test files
		// read bks and make a call to clingo
		// read clingo output and prepare the time for indivudual entity
		String[] clingo = new String[5];
		clingo[0]="C:\\Users\\Arindam\\Downloads\\clingo-3.0.5-win64\\clingo.exe";
		clingo[1] = new File("src\\main\\resources\\test\\inertia.bk").getAbsolutePath();
		clingo[2] = new File("src\\main\\resources\\test\\domain_knowledge.bk").getAbsolutePath();
		clingo[3] = new File("src\\main\\resources\\test\\learned.txt").getAbsolutePath();
		clingo[4] = new File("src\\main\\resources\\test\\observation.asp").getAbsolutePath();
		File ob = new File(clingo[4]);
		String testDir = "C:\\Users\\Arindam\\Downloads\\propara_final\\final_relations3\\test_coref";
		File testData =  new File(testDir);
		Pattern locPattern = Pattern.compile("prediction\\((.+?),\"(.+?)\",(.+?)\\)");
		Pattern namePattern = Pattern.compile("description\\((..),\"(.+?)\"\\)");

		BufferedWriter writer = Files.newBufferedWriter(new File("predictions_proKM_reproduce.tsv").toPath());
		CSVPrinter printer = new CSVPrinter(writer, CSVFormat.DEFAULT.withDelimiter('\t'));
		File[] fnames = testData.listFiles();
		Arrays.sort(fnames, new Comparator<File>(){

			public int compare(File arg0, File arg1) {
				String nam1 = arg0.getName().split(".sample")[0];
				String nam2 = arg1.getName().split(".sample")[0];
				return Integer.valueOf(nam1).compareTo(Integer.parseInt(nam2));
			}
			
		});
		for(File f: fnames){
			FileUtils.writeStringToFile(ob, FileUtils.readFileToString(f,Charset.defaultCharset()),
					Charset.defaultCharset());
			String output = executeClingo(clingo);

			Map<String,String> entityNamesMap = readNames();

			int maxTime = 0;
			String pid = f.getName().substring(0, f.getName().indexOf('.'));
			Map<String,String[]> timeline = new HashMap<String,String[]>();
			Matcher nameMatcher = namePattern.matcher(output);
			Set<String> uniqueNames = new HashSet<String>();
			while(nameMatcher.find()){
				String id = nameMatcher.group(1);
				String description = nameMatcher.group(2);
				entityNamesMap.put(id, description);
				uniqueNames.add(id);
				timeline.put(id, new String[15]);
			}
			List<String> names  = new ArrayList<String>(uniqueNames);
			Collections.sort(names);
			Matcher locMatcher = locPattern.matcher(output);
			while(locMatcher.find()){
				String id = locMatcher.group(1);
				String location = locMatcher.group(2);
				int time = Integer.parseInt(locMatcher.group(3));
				maxTime = Math.max(maxTime, time);
				timeline.get(id)[time] = location;
			}
			
			if(uniqueNames.size()==0){
				System.out.println(pid);
				System.out.println(output);
			}

			//add to tsv
			for(String id: names){
				for(int time=1;time<maxTime;time++){
					String before = timeline.get(id)[time];
					String after = timeline.get(id)[time+1];
					String event = "MOVE";
					if(before.equalsIgnoreCase("-")&&!"-".equalsIgnoreCase(after))
						event = "CREATE";
					else if(!before.equalsIgnoreCase("-")&&"-".equalsIgnoreCase(after))
						event = "DESTROY";
					else if(before.equalsIgnoreCase(after))
						event = "NONE";
					String name = entityNamesMap.get(pid+"@"+id.trim());
					printer.printRecord(pid,time,name,event, before, after);
				}
			}
		}
		
		printer.close();

	}
	
	public static String predict(){
		String out = "";
		return out;
	}
	
	public static  HashMap<String, String> readNames() throws IOException {
		String testDir = "C:\\Users\\Arindam\\Downloads\\propara_final\\final_relations3\\test";
		String annotations = "C:\\Users\\Arindam\\Downloads\\propara_final\\final_relations3\\ProPara.csv";

		HashSet<String> names = new HashSet<String>();
		HashMap<String,String> map =  new HashMap<String,String>();

		File f = new File(testDir);
		for(File n: f.listFiles()){
			names.add(n.getName().split(".sample")[0]);
		}

		Reader reader = Files.newBufferedReader(Paths.get(annotations));
		CSVParser csv = new CSVParser(reader,CSVFormat.DEFAULT);

		for(CSVRecord record: csv){
			String pid = record.get(0);
			if(names.contains(pid)){
				int i=1;
				Iterator<String> it = record.iterator();
				it.next();
				it.next();
				it.next();
				while(it.hasNext()){
					String val = it.next();
					if(val.isEmpty())
						break;
					map.put(pid+"@p"+i, val);
					i++;
				}
				names.remove(pid);
			}

		}
		csv.close();
		
		return map;

	}
	
	private static String executeClingo(String[] clingo) throws InterruptedException, IOException{
		File output = new File("clingo_out.txt");
		Process proc = new ProcessBuilder(clingo).redirectOutput(Redirect.to(output)).redirectError(output).start();
		proc.waitFor();
		return FileUtils.readFileToString(output,Charset.defaultCharset());
	}

}
