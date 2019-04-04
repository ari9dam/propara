/**PrepareToLearnException.java
 * 5:12:57 PM @author Arindam
 */
package propara;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import org.apache.commons.io.FileUtils;

/**
 * @author Arindam
 *
 */
public class PrepareToLearnException {
	
	public static void prepare() throws IOException{
		String in = "src/main/resources/destroy_rules.txt";
		String output="src/main/resources/destroy_rules_out.bk";
		List<String> lines = FileUtils.readLines(new File(in), 
				Charset.defaultCharset());
		List<String> out = new LinkedList<String>();
		int c1=0,c2=0,c3=0,c4=0;
		for(String l:lines){
			String rule  = l;
			if(rule.contains("eobservedAt")&&rule.contains("somethingGotCreated")){
				boolean flag = false;
				do{
					flag = false;
//					if(rule.contains("description")){
//						int idx = rule.indexOf("description");
//						int eidx = rule.indexOf(')', idx);
//						rule = rule.substring(0,idx) + rule.substring(eidx+2);
//						flag = true;
//						c1++;
//					}
//					if(rule.contains("groundObservation")){
//						int idx = rule.indexOf("groundObservation");
//						int eidx = rule.indexOf(')', idx);
//						rule = rule.substring(0,idx) + rule.substring(eidx+2);
//						flag = true;
//						c2++;
//					}
					if(rule.contains("entityObservation")){
						int idx = rule.indexOf("entityObservation");
						int eidx = rule.indexOf(')', idx);
						rule = rule.substring(0,idx) + rule.substring(eidx+2);
						flag = true;
						c3++;
					}
					if(rule.contains("filename")){
						int idx = rule.indexOf("filename");
						int eidx = rule.indexOf(')', idx);
						rule = rule.substring(0,idx) + rule.substring(eidx+2);
						flag = true;
						c4++;
					}
				}while(flag);
			}
			
			out.add(rule);
		}
		
		FileUtils.writeLines(new File(output), out);
		System.out.println(c1);
		System.out.println(c2);
		System.out.println(c3);
		System.out.println(c4);
		System.out.println(lines.size()-out.size());
	}
	/**
	 * @param args
	 * @throws IOException 
	 */
	
	public static void prepare2() throws IOException{
		String in = "src/main/resources/destroy_rules.txt";
		String output="src/main/resources/destroy_exception_rules_out.bk";
		List<String> lines = FileUtils.readLines(new File(in), 
				Charset.defaultCharset());
		List<String> out = new LinkedList<String>();
		int c1=0,c2=0,c3=0,c4=0;
		for(String l:lines){
			String rule  = l;
			if(rule.contains("eobservedAt")&&rule.contains("somethingGotCreated")){
				boolean flag = false;
				do{
					flag = false;
//					if(rule.contains("description")){
//						int idx = rule.indexOf("description");
//						int eidx = rule.indexOf(')', idx);
//						rule = rule.substring(0,idx) + rule.substring(eidx+2);
//						flag = true;
//						c1++;
//					}
//					if(rule.contains("groundObservation")){
//						int idx = rule.indexOf("groundObservation");
//						int eidx = rule.indexOf(')', idx);
//						rule = rule.substring(0,idx) + rule.substring(eidx+2);
//						flag = true;
//						c2++;
//					}
					if(rule.contains("entityObservation")){
						int idx = rule.indexOf("entityObservation");
						int eidx = rule.indexOf(')', idx);
						rule = rule.substring(0,idx) + rule.substring(eidx+2);
						flag = true;
						c3++;
					}
					if(rule.contains("filename")){
						int idx = rule.indexOf("filename");
						int eidx = rule.indexOf(')', idx);
						rule = rule.substring(0,idx) + rule.substring(eidx+2);
						flag = true;
						c4++;
					}
				}while(flag);
			}
			
			if(rule.contains("eobservedAt")&&!rule.contains("somethingGotCreated")
					&&!rule.contains("\"be\"")){
				boolean flag = false;
				do{
					flag = false;
//					if(rule.contains("description")){
//						int idx = rule.indexOf("description");
//						int eidx = rule.indexOf(')', idx);
//						rule = rule.substring(0,idx) + rule.substring(eidx+2);
//						flag = true;
//						c1++;
//					}
//					if(rule.contains("groundObservation")){
//						int idx = rule.indexOf("groundObservation");
//						int eidx = rule.indexOf(')', idx);
//						rule = rule.substring(0,idx) + rule.substring(eidx+2);
//						flag = true;
//						c2++;
//					}
					if(rule.contains("entityObservation")){
						int idx = rule.indexOf("entityObservation");
						int eidx = rule.indexOf(')', idx);
						rule = rule.substring(0,idx) + rule.substring(eidx+2);
						flag = true;
						c3++;
					}
					if(rule.contains("filename")){
						int idx = rule.indexOf("filename");
						int eidx = rule.indexOf(')', idx);
						rule = rule.substring(0,idx) + rule.substring(eidx+2);
						flag = true;
						c4++;
					}
				}while(flag);
			}
			
			out.add(rule);
		}
		
		FileUtils.writeLines(new File(output), out);
		System.out.println(c1);
		System.out.println(c2);
		System.out.println(c3);
		System.out.println(c4);
		System.out.println(lines.size()-out.size());
	}
	public static void main(String[] args) throws IOException {
		prepare2();
	}

}
