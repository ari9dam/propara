/**MergeCoref.java
 * 3:51:40 PM @author Arindam
 */
package propara;

import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVParser;
import org.apache.commons.csv.CSVRecord;
import org.apache.commons.io.FileUtils;

/**
 * @author Arindam
 *
 */
public class MergeCoref {

	/**
	 * @param args
	 * @throws IOException 
	 */
	public static void main(String[] args) throws IOException {
		
		Reader reader = Files.newBufferedReader(
				Paths.get("src/main/resources/Paragraphs.csv"));
        CSVParser csvParser = new CSVParser(reader, CSVFormat.DEFAULT.withFirstRecordAsHeader());
        HashMap<String,String> pmap = new HashMap<String,String>();
        for(CSVRecord record: csvParser.getRecords()){
        	String pid = record.get(2);
        	for(int i=1;i<=10;i++){
        		pmap.put(pid+"@"+record.get(i+2), i+"");
        	} 
        }
        csvParser.close();
        
		// read train merged file
		Map<String,List<String>> tmap = new HashMap<String,List<String>>();

		String fnamet = "C:\\Users\\Arindam\\Downloads\\"
				+ "propara_final\\final_relations3\\test_merged";
		File trainadd = new File(fnamet);
		for(File f : trainadd.listFiles()){
			tmap.put(f.getName(), FileUtils.readLines(f,Charset.defaultCharset()));
		}
		
		String coref_merged = "C:\\Users\\Arindam\\Downloads\\"
				+ "propara_final\\final_relations3\\test_coref\\";
		String csvs_train = "src/main/resources/coref/test/";
		File csv_t = new File(csvs_train);
		for(File f : csv_t.listFiles()){
			String filename = f.getName().substring(0,f.getName().indexOf('.'));
			reader = Files.newBufferedReader(f.toPath());
	        csvParser = new CSVParser(reader, CSVFormat.DEFAULT);
	        List<String> crf = new LinkedList<String>();
	        int i=0;
	        String key = f.getName().replace("csv", "sample");
	        for(CSVRecord record: csvParser.getRecords()){
	        	i++;
	        	if(i<4)
	        		continue;
	        		
	        	String sen = record.get(0);
	        	String answer = record.get(1);
	        	String refs = record.get(2);
	        	if(!refs.trim().isEmpty()&& !answer.isEmpty()){
	        		String[] list = refs.split(",");
	        		for(String s:list){
	        			tmap.get(key).add("refers("+pmap.get(filename+"@"+sen)+","+s.trim()+",\""+answer.trim()+"\").");
	        		}
	        	}
	        }
	        
	        FileUtils.writeLines(new File(coref_merged+key), tmap.get(key));
		}

	}

}
