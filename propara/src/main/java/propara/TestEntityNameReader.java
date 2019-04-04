/**TestEntityNameReader.java
 * 5:34:09 PM @author Arindam
 */
package propara;

import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVParser;
import org.apache.commons.csv.CSVRecord;

/**
 * @author Arindam
 *
 */
public class TestEntityNameReader {

	/**
	 * @param args
	 * @throws IOException 
	 */
	public static void main(String[] args) throws IOException {
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
				System.out.println(it.next());
				System.out.println(it.next());
				System.out.println(it.next());
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
		
		System.out.println(map);
	}

}
