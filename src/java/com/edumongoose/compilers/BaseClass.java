/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edumongoose.compilers;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class BaseClass {

    public static void main(String[] args) {
        
        String language = "c";
        boolean success = compile(language);
        if (success) {
            execute(language, "D://programs//c//in.txt");
        }
    }

    public static boolean compile(String language) {
        System.out.println("Code compilation started...");
        ProcessBuilder processBuilder;
        boolean compiled = true;
        if (language.equals("java")) {
            processBuilder = new ProcessBuilder("javac", "Main.java");
            processBuilder.directory(new File("d://programs//java"));
        } else if (language.equals("c")) {
            processBuilder = new ProcessBuilder("gcc", "-std=c++0x", "-w", "-o", "Main", "Main.c");
            processBuilder.directory(new File("d://programs//c"));
        } else {
            processBuilder = new ProcessBuilder("g++", "-std=c++0x", "-w", "-o", "Main", "Main.cpp");
            processBuilder.directory(new File("d://programs//cpp"));
        }

        processBuilder.redirectErrorStream(true);
        File compilerError = new File(processBuilder.directory() + "//compileError.txt");
        processBuilder.redirectOutput(compilerError);

        try {
            PrintWriter writer = new PrintWriter(compilerError);
            writer.write("");
            writer.close();
            Process process = processBuilder.start();
            process.waitFor();
//            InputStream inputStream = process.getInputStream();
            String temp;
            try (BufferedReader reader = new BufferedReader(new FileReader(compilerError))) {
                while ((temp = reader.readLine()) != null) {
                    compiled = false;
                    System.out.println(temp);
                }
                
            }

            if (compiled == false) {
//                inputStream.close();
                return false;
            } else {
//                inputStream.close();
                return true;
            }

        } catch (IOException | InterruptedException e) {
            System.out.println("in compile() " + e);
        }
        return false;
    }

    public static boolean execute(String language, String inputFileName) {
        System.out.println("Code started executing.");
        ProcessBuilder processBuilder;
        if (language.equals("java")) {
            processBuilder = new ProcessBuilder("java", "Main");
            processBuilder.directory(new File("d://programs//java"));
        } else if (language.equals("c")) {
            processBuilder = new ProcessBuilder("./Main");
            processBuilder.directory(new File("d://programs//c"));
        } else {
            processBuilder = new ProcessBuilder("./Main");
            processBuilder.directory(new File("d://programs//cpp"));
        }
        File inputFile = new File(inputFileName);
        processBuilder.redirectInput(inputFile);
        

        File outputFile = new File(processBuilder.directory() + "//output.txt");
        
        processBuilder.redirectErrorStream(true);
        processBuilder.redirectOutput(outputFile);
        
        if (outputFile.exists()) {
            System.out.println("Output file generated " + outputFile.getAbsolutePath());
        }
        try {
            Process process = processBuilder.start();
            process.waitFor();
            int exitCode = process.exitValue();

            System.out.println("Exit Value = " + process.exitValue());
            if (exitCode != 0) {
                return false;
            }
        } catch (IOException ioe) {
            System.err.println("in execute() " + ioe);
        } catch (InterruptedException ex) {
            Logger.getLogger(BaseClass.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Code execution finished!");
        //delete executables
        return true;
    }
}
