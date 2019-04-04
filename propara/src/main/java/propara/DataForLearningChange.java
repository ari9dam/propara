/**DataForLearningChange.java
 * 9:24:55 PM @author Arindam
 */
package propara;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map.Entry;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.io.FileUtils;

/**
 * @author Arindam
 *
 */
class MyEntry{
	String time, name, location;

	public MyEntry(String time, String name, String location) {
		super();
		this.time = time;
		this.name = name;
		this.location = location;
	}
	public String toString(){
		return "holdsAt(locationOf("+name+","+location+"),"+time+")";
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((location == null) ? 0 : location.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((time == null) ? 0 : time.hashCode());
		return result;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MyEntry other = (MyEntry) obj;
		if (location == null) {
			if (other.location != null)
				return false;
		} else if (!location.equals(other.location))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (time == null) {
			if (other.time != null)
				return false;
		} else if (!time.equals(other.time))
			return false;
		return true;
	}
	
}

public class DataForLearningChange {
	
	/**
	 * @param args
	 * @throws IOException 
	 */
	public static void main(String[] args) throws IOException {
		// just add the create , destroy gold annotation
		String dir = "C:\\Users\\Arindam\\Downloads\\propara_final\\final_relations3\\";
		String folder = "train_coref_pratyay";
		File train = new File(dir+folder);
		
		for(File f : train.listFiles()){
			List<String> out = new LinkedList<String>();
			HashMap<String,HashMap<Integer,String>> states = 
					new HashMap<String,HashMap<Integer,String>>();
			HashMap<MyEntry,Integer> annon = new HashMap<MyEntry,Integer>();
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
							String[] parts = s.replace("annotation(", "").split(",");
							MyEntry entry = new MyEntry(mat.group(4).trim(),
									parts[1].trim(),"\""+mat.group(3)+"\"");
							if(!annon.containsKey(entry)){
								annon.put(entry, 0);
							}
							annon.put(entry, annon.get(entry)+1);
						}else{
							//out.add("#example holdsAt(locationOf("+entity+",\"-\"),"+mat.group(4).trim()+").");
						}
						
						if(!states.containsKey(entity)){
							states.put(entity, new HashMap<Integer,String>());
						}
						states.get(entity).put(time, location);
					}
					out.add(s);
				}else {
					out.add(s);
				}
			}
			
			for(String entity:states.keySet()){
				for(int i=1;i<max;i++){
					String loc1 = states.get(entity).get(i);
					String loc2 = states.get(entity).get(i+1);
					
					if(loc1.equals("?") && loc2.equals("-")){
						out.add("destroy("+entity+","+i+").");
					}else if(loc1.equals("-") && loc2.equals("?")){
						out.add("create("+entity+","+i+").");
					}
				}
				
			}
			
			for(Entry<MyEntry, Integer> entry:annon.entrySet()){
				if(entry.getValue()<8&&(entry.getKey().time.equals("1")||entry.getValue()>2))
					out.add("#example "+ entry.getKey().toString()+"="+((int)Math.pow(2, entry.getValue()))+".");
				else if(entry.getValue()>=8)
					out.add("#example "+ entry.getKey().toString()+".");
			}
			
			out.add("filename(\""+f.getName()+"\").");

			FileUtils.writeLines(new File(dir+"move\\"+f.getName()), out);
		}


	}

}
