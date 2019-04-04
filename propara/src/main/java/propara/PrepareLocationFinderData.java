/**PrepareLocationFinderData.java
 * 3:13:52 PM @author Arindam
 */
package propara;

import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVPrinter;
import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;

import edu.asu.nlu.common.parsing.Lemmatizer;

/**
 * @author Arindam
 *
 */
public class PrepareLocationFinderData {

	/**
	 * @param args
	 * @throws IOException 
	 */
	public static void main(String[] args) throws IOException {
		
		Lemmatizer lemmatizer = new Lemmatizer();
		String prefix = "C:\\Users\\Arindam\\Downloads\\"
				+ "propara_final\\final_relations3\\";
		String fname = prefix + "train_coref_pratyay\\" ; // "train_coref_pratyay\\"
		String out_file = "src/main/resources/location_training.csv";
		boolean istrain = true;
		File train = new File(fname);
		
		Pattern pat = Pattern.compile("(.*)\\(\"(.+)\",\"(.+)\",\"(.+)\",(.+)\\).*");//
		List<Entry<String,String>> postives = new LinkedList<Entry<String,String>>();
		List<Entry<String,String>> negatives = new LinkedList<Entry<String,String>>();
		
		for(File f : train.listFiles()){
			List<String> out = new LinkedList<String>();
			Set<String> locations = new HashSet<String>();
			List<String> lines = FileUtils.readLines(f,Charset.defaultCharset());
			
			for(String s:lines){
				if(s.startsWith("annotation(")){
					String location = s.split("\"")[1];
					if(location.trim().length()>1)
						locations.add(location);
				}
			}
			
			String[] locs = new String[locations.size()];
			int i=0;
			for(String s: locations)
				locs[i++] = s;
			Arrays.sort(locs, new Comp());
			System.out.println(Arrays.toString(locs));

			// check if it is present in the answer
			for(String s:lines){
				if(s.startsWith("observedAt(")){
					Matcher mat = pat.matcher(s);
					if(mat.matches()){
						String answer = mat.group(4);
						String verb = mat.group(2);
						String question = mat.group(3);
						boolean changed = false;
						String lemma = lemmatizer.lemmatize(answer);
						
						for(String l: locs){
							
							// check if the location appears in the lemma
							if(lemma.contains(l)){
								answer = l;
								changed = true;
								break;
							}else{
								// break the location by splitting by , or, /
								// remove ``, "
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
						
						String premise = question.replace(" v ", " "+ verb + " ") + " " + lemma;
						out.add(s);
						List<String> candidates = generateLocationValues(lemma);
						String span = null;
						if(changed){
							span = findCorrectSpan(candidates,answer,mat.group(4));
							Entry<String, String> e = new AbstractMap.SimpleEntry<String, String>(premise,span);
							postives.add(e);
						}
						
						for(String candidate:candidates){
							if(!s.equals(span)){
								Entry<String, String> e = new AbstractMap.SimpleEntry<String, String>(premise,candidate);
								negatives.add(e);
							}
						}
					}
				}
			}
		}
		
		Collections.shuffle(negatives);
		int size = (int)(postives.size()* 1.5);
		
		BufferedWriter writer = Files.newBufferedWriter(
				new File(out_file).toPath());

        CSVPrinter csvPrinter = new CSVPrinter(writer, CSVFormat.DEFAULT);
        for(Entry<String, String> entry : postives){
        	csvPrinter.printRecord(entry.getKey(),entry.getValue(),1+"");
        }
        for(Entry<String, String> entry : negatives){
        	if(istrain && size==0)
        		break;
        	if(!postives.contains(entry) || !istrain){
        		csvPrinter.printRecord(entry.getKey(),entry.getValue(),0+"");
        		size--;
        	}
        }
        csvPrinter.close();
        System.out.println("done");
	}
	
	public static List<String> generateLocationValues(String answer){
		String[] lemmas = answer.split(" ");
		Set<String> out = new HashSet<String>();
		for(int i=0;i<lemmas.length;i++){
			String l= "";
			for(int j=i;j<lemmas.length;j++){
				if(StringUtils.isBlank(lemmas[j]))
					continue;
				l = l+" " + lemmas[j];
				out.add(l.trim());
			}
		}
		
		return new ArrayList<String>(out);
	}
	
	public static String findCorrectSpan(List<String> candidates, String loc,String answer){
		Collections.sort(candidates, new Comp1());
		for(String s: candidates){
			if(contains(s, loc))
				return s;
		}
		
		System.out.println(loc);
		System.out.println(answer);
		System.out.println(candidates);
		System.exit(0);
		return null;
	}
	
	public static boolean contains(String answer, String l){
		String lemma  = answer;
		
		if(lemma.contains(l)){
			return true;
		}else{
			// break the location by splitting by , or, /
			// remove ``, "
			String l1 = l.replaceAll("``", "").replaceAll("\"", "");
			String[] tokens = l1.split(",| or | and |/|;");
			boolean flag = tokens.length>0;
			for(String t:tokens){
				if(!lemma.contains(t.trim())){
					flag = false;
					break;
				}
			}
			return flag;
		}
	}

}
