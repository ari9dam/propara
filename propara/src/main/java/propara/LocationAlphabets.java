/**LocationAlphabets.java
 * 8:57:34 PM @author Arindam
 */
package propara;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.apache.commons.io.FileUtils;

import edu.asu.nlu.common.parsing.Lemmatizer;

/**
 * @author Arindam
 *
 */
public class LocationAlphabets {

	/**
	 * @param args
	 * @throws IOException 
	 */
	public static void main(String[] args) throws IOException {
		String fname = "C:\\Users\\Arindam\\Downloads\\"
				+ "propara_final\\final_relations3\\test";
		
		File train = new File(fname);
		
		
		Set<String> out = new HashSet<String>();
		Set<String> locations = new HashSet<String>();
		for(File f : train.listFiles()){
			
			List<String> lines = FileUtils.readLines(f,Charset.defaultCharset());
			//get all the locations that annotator tagged
			for(String s:lines){
				if(s.startsWith("annotation(")){
					String location = s.split("\"")[1];
					for(char c:location.toCharArray()){
						if(Character.isLetterOrDigit(c)||Character.isSpace(c)
								||c=='-'||c=='?'||c=='.'||c==','||c=='\'')
							continue;
						else{
							out.add(c+"");
							locations.add(c+":"+f.getName());
						}
					}
				}
			}
		}
		
		for(String s:out)
			System.out.println(s);
		
		System.out.println(locations.size());
		for(String s:locations)
			System.out.println(s);

	}

}
