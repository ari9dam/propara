/**TestSatisfiability.java
 * 1:10:34 PM @author Arindam
 */
package propara;

import java.io.File;
import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.nio.charset.Charset;
import java.util.LinkedList;
import java.util.List;

import org.apache.commons.io.FileUtils;

/**
 * @author Arindam
 *
 */
public class TestSatisfiability {

	/**
	 * @param args
	 * @throws IOException 
	 * @throws InterruptedException 
	 */
	public static void main(String[] args) throws IOException, InterruptedException {
		String folder = "C:\\Users\\Arindam\\Dropbox (ASU)\\propara";
		String kb = "";
		for(File f: new File(folder).listFiles()){
			if(!f.getName().contains(".bk"))
				continue;
			kb+= FileUtils.readFileToString(f, Charset.defaultCharset());
		}
		File in = new File("propara_satifiability.asp");
		File out = new File("propara_satifiability_out.asp"); 
		List<String> cmd = new LinkedList<String>();
		cmd.add("C:\\Users\\Arindam\\Downloads\\clingo-3.0.5-win64\\clingo.exe");
		cmd.add(in.getAbsolutePath().toString());
		for(File f: new File(folder).listFiles()){
			if(!f.getName().contains(".sample"))
				continue;
			
			String lines = FileUtils.readFileToString(f,Charset.defaultCharset());
			lines = lines.replaceAll("#example .*?=\\d+\\.", "");
			lines = lines.replaceAll("#example not", ":-");
			lines = lines.replaceAll("#example", ":-not");
			lines = lines + kb;
			FileUtils.writeStringToFile(in, lines, Charset.defaultCharset());
			Process clingo = new ProcessBuilder(cmd).
					redirectOutput(Redirect.to(out)).start();
			clingo.waitFor();
			String data = FileUtils.readFileToString(out, Charset.defaultCharset());


			if(data.contains("UNSATISFIABLE")){
				
				System.out.println(f.getName());
				if(f.getName().startsWith("11"))
					break;
			}
		}
	}

}
