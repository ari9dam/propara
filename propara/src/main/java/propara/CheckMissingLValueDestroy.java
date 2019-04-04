/**CheckMissingLValueDestroy.java
 * 3:08:50 PM @author Arindam
 */
package propara;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;

/**
 * @author Arindam
 *
 */
public class CheckMissingLValueDestroy {

	/**
	 * @param args
	 * @throws IOException 
	 */
	public static void main(String[] args) throws IOException {
		File data = new File("src/main/resources/destroy_rules_all.txt");
		for(String lines: FileUtils.readLines(data)){
			if(lines.contains("ab(")){
				System.out.println(lines);
			}
		}

	}

}
