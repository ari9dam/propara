/**NormalizeLocations.java
 * 12:46:16 PM @author Arindam
 */
package propara;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.io.FileUtils;

import edu.asu.nlu.common.parsing.Lemmatizer;

class Comp implements Comparator<String> {
	public int compare(String o1, String o2) {
		return Integer.compare(o2.length(), o1.length());
	}
}

class Comp1 implements Comparator<String> {
	public int compare(String o1, String o2) {
		return Integer.compare(o1.length(), o2.length());
	}
}

/**
 * @author Arindam
 *
 */
public class NormalizeLocations {



	/**
	 * @param args
	 * @throws IOException 
	 */
	public static void main(String[] args) throws IOException {
		Lemmatizer lemmatizer = new Lemmatizer();
		String prefix = "C:\\Users\\Arindam\\Downloads\\"
				+ "propara_final\\final_relations3\\";
		String fname = prefix + "test_coref\\";
		
		File train = new File(fname);
		
		Pattern pat = Pattern.compile("(.*)\\((.+),(.+),\"(.+)\",(.+)\\).*");//
		
		
		for(File f : train.listFiles()){
			List<String> out = new LinkedList<String>();
			Set<String> locations = new HashSet<String>();
			List<String> lines = FileUtils.readLines(f,Charset.defaultCharset());
			//get all the locations that annotator tagged
			for(String s:lines){
				if(s.startsWith("annotation(")){
					String location = s.split("\"")[1];
					if(location.trim().length()>1)
						locations.add(location);
				}
			}
			
			// check which 

			//sort the locations via length
			String[] locs = new String[locations.size()];
			int i=0;
			for(String s: locations)
				locs[i++] = s;
			Arrays.sort(locs, new Comp());
			System.out.println(Arrays.toString(locs));

			// check if it is present in the 
			for(String s:lines){
				if(s.startsWith("observedAt(")){
					Matcher mat = pat.matcher(s);
					if(mat.matches()){
						String answer = mat.group(4);
						boolean changed = false;
						
						
						for(String l: locs){
							
							// check if the location appears in the lemma
							String lemma = lemmatizer.lemmatize(answer);
							if(lemma.contains(l)){
								answer = l;
								changed = true;
								break;
							}else{
								// break the location by splitting by , or, /
								// remove ``, "
								if(f.getName().equals("13.sample")){
									int j=0;
								}
								String l1 = l.replaceAll("``", "").replaceAll("\"", "");
								String[] tokens = l1.split(",| or | and |/|;");
								boolean flag = tokens.length>0;
								for(String t:tokens){
									if(!lemma.contains(t)){
										flag = false;
										break;
									}
								}
								if(flag){
									answer = l;
									changed = true;
									break;
								}
							}
						}
						
						for(String l: locs){
							if(changed)
								break;
							// check if the location appears in the answer
							if(answer.contains(l)){
								answer = l;
								changed = true;
								break;
							}
						}
						
						//String statement = mat.group(1)+"("+mat.group(2)
						//+","+mat.group(3)+",\""+answer+"\","+mat.group(5)+").";
						out.add(s);
						if(changed)
							out.add("lvalue(\""+mat.group(4)+"\",\""+answer+"\").");
					}
				}else if(!s.contains("annotation(")){
					out.add(s);
				}
			}
			//out.add("#example not p.");
			FileUtils.writeLines(f, out);
		}
       
	}

}
