/**PrepareExcelsheetForCoref.java
 * 11:16:17 PM @author Arindam
 */
package propara;

import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map.Entry;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVParser;
import org.apache.commons.csv.CSVPrinter;
import org.apache.commons.csv.CSVRecord;
import org.apache.commons.io.FileUtils;

import edu.asu.nlu.common.parsing.Lemmatizer;

/**
 * @author Arindam
 *
 */
public class PrepareExcelsheetForCoref {

	/**
	 * @param args
	 * @throws IOException 
	 */
	public static void main(String[] args) throws IOException {
		Lemmatizer lemmatizer = new Lemmatizer();
		// read the paragraphs
		// save it in a map
		Reader reader = Files.newBufferedReader(
				Paths.get("src/main/resources/Paragraphs.csv"));
        CSVParser csvParser = new CSVParser(reader, CSVFormat.DEFAULT.withFirstRecordAsHeader());
        HashMap<String,String> pmap = new HashMap<String,String>();
        for(CSVRecord record: csvParser.getRecords()){
        	String pid = record.get(2);
        	for(int i=1;i<=10;i++){
        		pmap.put(pid+"@"+i, record.get(i+2));
        	} 
        }
        csvParser.close();
        
        String fname = "C:\\Users\\Arindam\\Downloads\\"
				+ "propara_final\\final_relations3\\test";
		
		File train = new File(fname);
		
		Pattern pat = Pattern.compile("(.*)\\((.+),(.+),\"(.+)\",(.+)\\).*");//
		Pattern description = Pattern.compile("(.*)\\((.+),\"(.+)\"\\).*");
		for(File f : train.listFiles()){
			// create a csv
			// write p1,p2,p3,..
			// write value1, ...., valuen
			// read all the observedAt predicate
			// extract the time and the answer
			// create a row [ sentence at i, answer, annotation]
			
			List<String> lines = FileUtils.readLines(f,Charset.defaultCharset());
			HashMap<String,String> map = new HashMap<String,String>();
			BufferedWriter writer = Files.newBufferedWriter(new 
					File("src/main/resources/coref/test/"
			+f.getName().replace("sample", "csv")).toPath());
			
			String name = f.getName().split("\\.")[0];
	        CSVPrinter csvPrinter = new CSVPrinter(writer, CSVFormat.DEFAULT);
	        
	        ArrayList<String> ps = new ArrayList<String>();
	        ArrayList<String> vs = new ArrayList<String>();
			for(String s:lines){
				if(s.startsWith("description")){
					Matcher mat = description.matcher(s);
					if(mat.matches()){
						String k = mat.group(2);
						String v = mat.group(3);
						if(map.containsKey(k)){
							map.put(k, map.get(k)+", "+v);
						}else{
							map.put(k, v);
							ps.add(k);
						}
					}
				}
			}
			
			for(String p: ps){
				vs.add(map.get(p));
			}
			
			csvPrinter.printRecord(ps);
			csvPrinter.printRecord(vs);
			
			csvPrinter.printRecord("SENTENCE","PHRASE","REFERENCE");
			
			for(String s:lines){
				if(s.startsWith("observedAt")){
					Matcher mat = pat.matcher(s);
					if(mat.matches()){
						String t = mat.group(5);
						String a = mat.group(4);
						String sen = pmap.get(name+"@"+t);
						
						String ref = checkRef(a,map,lemmatizer);
						csvPrinter.printRecord(sen,a,ref);
						
					}
				}
			}
			
			csvPrinter.close();
			
		}
		
	}

	/**
	 * @param a
	 * @param map
	 * @param lemmatizer 
	 * @return
	 */
	private static String checkRef(String a, HashMap<String, String> map, Lemmatizer lemmatizer) {
		String ret = "";
		for(Entry<String, String> entry: map.entrySet()){
			String[] vs = entry.getValue().split(",");
			for(String v: vs){
				String lemmaV = lemmatizer.lemmatize(v.toLowerCase());
				String lemmaA = lemmatizer.lemmatize(a.toLowerCase());
				if(lemmaA.contains(lemmaV)){
					if(!ret.isEmpty())
						ret = ret+","+entry.getKey();
					else
						ret = entry.getKey();
					break;
				}
			}
		}
		return ret;
	}

}
