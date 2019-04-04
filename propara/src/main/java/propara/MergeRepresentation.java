/**MergeRepresentation.java
 * 1:33:21 PM @author Arindam
 */
package propara;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;

/**
 * @author Arindam
 *
 */
public class MergeRepresentation {
	public static void main(String args[]) throws IOException{
		// take files from the ones in train_add folder
		// takes files from train folder
		// combine and output
		
		Map<String,List<String>> tmap = new HashMap<String,List<String>>();
		
		String fnameta = "C:\\Users\\Arindam\\Downloads\\"
				+ "propara_final\\final_relations3\\test_add";
		File trainadd = new File(fnameta);
		for(File f : trainadd.listFiles()){
			tmap.put(f.getName(), FileUtils.readLines(f,Charset.defaultCharset()));
		}
		
		String fnamet = "C:\\Users\\Arindam\\Downloads\\"
				+ "propara_final\\final_relations3\\test";
		String fnamem = "C:\\Users\\Arindam\\Downloads\\"
				+ "propara_final\\final_relations3\\test_merged\\";
		File train = new File(fnamet);
		for(File f : train.listFiles()){
			List<String> lines = FileUtils.readLines(f,Charset.defaultCharset());
			if(tmap.containsKey(f.getName())){
				lines.addAll(tmap.get(f.getName()));
			}
			FileUtils.writeLines(new File(fnamem+f.getName()), lines);
		}
		
		
		// take files from the ones in test_add folder
		// takes files from train folder
		// combine and output
	}
}
