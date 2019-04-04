/**DataForOnlyDestroy.java
 * 1:00:41 AM @author Arindam
 */
package propara;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.io.FileUtils;

/**
 * @author Arindam
 *
 */
public class DataForOnlyDestroy {

	public static void main(String[] args) throws IOException {

		String dir = "C:\\Users\\Arindam\\Downloads\\propara_final\\final_relations3\\";
		String folder = "train_coref_pratyay";
		File train = new File(dir+folder);

		for(File f : train.listFiles()){
			List<String> out = new LinkedList<String>();
			HashMap<String,HashMap<Integer,String>> states = 
					new HashMap<String,HashMap<Integer,String>>();
			List<String> lines = FileUtils.readLines(f,Charset.defaultCharset());
			Pattern pat = Pattern.compile("(.*)locationOf\\((.+),\"(.+)\"\\),([0-9]+)(.*)");//
			Pattern observation = Pattern.compile("(.*)\\((.+),(.+),\"(.+)\",(.+)\\).*");//
			int max = 0;
			for(String s:lines){
				if(s.startsWith("observedAt")){
					Matcher mat = observation.matcher(s);
					if(mat.matches()){
						String answer = mat.group(4);
						if(answer.contains("\"")){
							System.out.println(f.getName());
							s = s.replace(answer, answer.replaceAll("\"", ""));
						}
					}
					out.add(s);
				}else if(s.startsWith("annotation(")){
					Matcher mat = pat.matcher(s);
					if(mat.matches()){
						// get time, location, entity name
						// then add 
						String entity = mat.group(2).trim();
						Integer time = Integer.parseInt( mat.group(4).trim());
						max = Math.max(max, time);
						String location = mat.group(3).trim();
						if(!location.equals("-")){
							location = "?";
						}
						if(!states.containsKey(entity)){
							states.put(entity, new HashMap<Integer,String>());
						}
						states.get(entity).put(time, location);
					}
				}else if(!s.trim().equalsIgnoreCase("#example not p.")){
					out.add(s);
				}
			}
			
			for(String entity:states.keySet()){
				for(int i=1;i<max;i++){
					String loc1 = states.get(entity).get(i);
					String loc2 = states.get(entity).get(i+1);
					if(loc1.equals("?"))
						out.add("exists("+entity+","+i+").");
					
					if(loc1.equals("?") && loc2.equals("-")){
						out.add("#example destroy("+entity+","+i+").");
					}else if(loc1.equals("-") && loc2.equals("?")){
						out.add("create("+entity+","+i+").");
					}else{
						out.add("#example not destroy("+entity+","+i+").");
					}
				}
			}
			
			out.add("filename(\""+f.getName()+"\").");

			FileUtils.writeLines(new File(dir+"destroy\\"+f.getName()), out);
		}


	}

}
