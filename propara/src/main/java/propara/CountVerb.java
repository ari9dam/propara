/**CountVerb.java
 * 11:37:51 PM @author Arindam
 */
package propara;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;

import org.apache.commons.io.FileUtils;

/**
 * @author Arindam
 *
 */
public class CountVerb {

	/**
	 * @param args
	 * @throws IOException 
	 */
	public static void main(String[] args) throws IOException {
		String fname = "C:\\Users\\Arindam\\Downloads\\"
				+ "final_relations3\\final_relations3\\train";
		int count=0;
		File train = new File(fname);
		for(File f : train.listFiles()){
			String s = FileUtils.readFileToString(f,Charset.defaultCharset());
			if(s.contains("question")){
				count++;
				System.out.println(f.getName());
			}
		}
		
		System.out.println(count);
	}

}
