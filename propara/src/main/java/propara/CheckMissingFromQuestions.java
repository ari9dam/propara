/**CheckMissingFromQuestions.java
 * 11:46:19 PM @author Arindam
 */
package propara;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.io.FileUtils;

import edu.asu.nlu.common.parsing.Lemmatizer;

/**
 * @author Arindam
 *
 */
public class CheckMissingFromQuestions {

	/**
	 * @param args
	 * @throws IOException 
	 */
	public static void main(String[] args) throws IOException {
		
		String fname = "C:\\Users\\Arindam\\Downloads\\"
				+ "propara_final\\final_relations3\\train";
		
		File train = new File(fname);
		Pattern pat = Pattern.compile("(.*)\\((.+),(.+),\"(.+)\",(.+)\\).*");//
		List<String> out = new LinkedList<String>();
		for(File f : train.listFiles()){
			
			Set<String> locations = new HashSet<String>();
			List<String> lines = FileUtils.readLines(f,Charset.defaultCharset());
			//get all the locations that annotator tagged
			for(String s:lines){
				if(s.startsWith("observedAt(")){
					Matcher mat = pat.matcher(s);
					if(mat.matches()){
						String question = mat.group(3).toLowerCase();
						String answer = mat.group(4);
						if(answer.contains("from ")&&
								!(question.contains("where")||question.contains("from"))){
							out.add(s+"\t"+f.getName());
						}
					}
				}
			}
		}
		
		System.out.println(out.size());
		for(String f:out)
			System.out.println(f);
		
		

	}

}
