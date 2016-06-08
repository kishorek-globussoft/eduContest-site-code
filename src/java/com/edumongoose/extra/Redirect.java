/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edumongoose.extra;

/**
 *
 * @author Admin
 */
import java.io.*;

public class Redirect {

    public static void main(String args[]) {
	// Save the current standard input, output, and error streams
        // for later restoration.
        InputStream origIn = System.in;
        PrintStream origOut = System.out;
        PrintStream origErr = System.err;

        // Create a new input stream from a file.
        InputStream stdin = null;
        try {
            stdin = new FileInputStream("d://Redirect.in");
        } catch (Exception e) {
            // Sigh.  Couldn't open the file.
            System.out.println("Redirect:  Unable to open input file!");
            System.exit(1);
        }

        // Create a new output stream for the standard output.
        PrintStream stdout = null;
        try {
            stdout = new PrintStream(new FileOutputStream("d://Redirect.out"));
        } catch (Exception e) {
            // Sigh.  Couldn't open the file.
            System.out.println("Redirect:  Unable to open output file!");
            System.exit(1);
        }

        // Create new output stream for the standard error output.
        PrintStream stderr = null;
        try {
            stderr = new PrintStream(new FileOutputStream("d://Redirect.err"));
        } catch (Exception e) {
            // Sigh.  Couldn't open the file.
            System.out.println("Redirect:  Unable to open error file!");
            System.exit(1);
        }

	// Print stuff to the original output and error streams.
        // On most systems all of this will end up on your console when you
        // run this application.
        origOut.println("\nRedirect:  Round #1");
        System.out.println("Test output via 'System.out'.");
        origOut.println("Test output via 'origOut' reference.");
        System.err.println("Test output via 'System.err'.");
        origErr.println("Test output via 'origErr' reference.");

	// Set the System out and err streams to use our replacements.
	System.setIn(stdin);
	System.setOut(stdout);
	System.setErr(stderr);
	// Print stuff to the original output and error streams.
        // The stuff printed through the 'origOut' and 'origErr' references
        // should go to the console on most systems while the messages
        // printed through the 'System.out' and 'System.err' will end up in
        // the files we created for them.
        origOut.println("\nRedirect:  Round #2");
        System.out.println("Test output via 'System.out'.");
        origOut.println("Test output via 'origOut' reference.");
        System.err.println("Test output via 'System.err'.");
        origErr.println("Test output via 'origErr' reference.");

        // Read some input and dump it to the console.
        origOut.println("\nRedirect:  Round #3");
        int inChar = 0;
        while (-1 != inChar) {
            try {
                inChar = System.in.read();
            } catch (Exception e) {
                // Clean up the output and bail.
                origOut.print("\n");
                break;
            }
            origOut.write(inChar);
        }

        // Close the streams.
        try {
            stdin.close();
            stdout.close();
            stderr.close();
        } catch (Exception e) {
            origOut.println("Redirect:  Unable to close files!");
            System.exit(1);
        }
        System.exit(0);
    }
}
