import java.io.FileReader;
import java.io.FileNotFoundException;
import java.io.IOException;

/**
 *
 * Project Part 3: Compiler
 *
 * @author Aya IFTISSEN, Eurielle Nkwinga
 *
 */

public class Main{
    /**
     *
     * The Compiler
     *
     * @param args  The argument(s) given to the program
     * @throws IOException java.io.IOException if an I/O-Error occurs
     * @throws FileNotFoundException java.io.FileNotFoundException if the specified file does not exist
     *
     */
    public static void main(String[] args) throws FileNotFoundException, IOException, SecurityException, Exception{
        // Display the usage when no arguments are given
        if(args.length == 0){
            System.out.println("Usage:  java -jar part3.jar [FILE]\n");
            System.exit(0);
        } else {
            FileReader codeSource = null;
            try {
                codeSource = new FileReader(args[args.length-1]);
            } catch (IOException e) {
                e.printStackTrace();
            }
            Parser parser = new Parser(codeSource);
            System.out.println(parser.parse());
        }
    }
}

