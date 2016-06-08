package com.edumongoose.compilers;

import com.edumongoose.entity.Program;
import com.edumongoose.entity.Result;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Kishore
 */
public class CompilerClass {

    final static String SEPERATOR = File.separator;
//    final static String JAVAPATH = System.getProperty("user.home") + SEPERATOR + "java" + SEPERATOR;
    final static String JAVAPATH = "d://programs//java";
//    final static String CPATH = System.getProperty("user.home") + SEPERATOR + "c" + SEPERATOR;
    final static String CPATH = "d://programs//c";
    final static String CPLUSPATH = "d://programs//cpp";
//    final static String CPLUSPATH = System.getProperty("user.home") + SEPERATOR + "cpp" + SEPERATOR;

    public static void main(String[] args) {
        Program program = new Program();
        String code = "#include <iostream>\r\n"
                + "using std::cout;\r\n"
                + "\r\n"
                + "int main()\r\n"
                + "{\r\n"
                + "	cout << \"Hello World!\\nWas't that easy?\\n\";\r\n"
                + "	return 0;\r\n"
                + "}\r";
        String language = "2";
        String input = "10 20";
//        String code = "class Main{\r\n"
//                + "public static void main(String args[]){\r\n"
//                + "System.out.println(\"Hello World TEsting\");\r\n"
//                + "}\r\n"
//                + "}";
        program.setCode(code);
        program.setInput(input);
        program.setLanguage(language);
        new CompilerClass().compiler(program);

    }

    public Result compiler(Program program) {

        int language = Integer.parseInt(program.getLanguage());
        String code = program.getCode().trim();
        String input = program.getInput().trim();
        ProcessBuilder processBuilder;
        Result result = new Result();

        boolean compiled;
        boolean executed;

        String cProgramFileName;
        String javaProgramFileName;
        String cPlusProgramFileName;

        String cInputFileName;
        String javaInputFileName;
        String cPlusInputFileName;

        String cOutputFileName;
        String javaOutputFileName;
        String cPlusOutputFileName;

        List<String> commands = null;

        File programFile;
        File inputFile;
        FileWriter writer;

        switch (language) {
            case 1:
                cProgramFileName = "Main.c";
                cInputFileName = "input.txt";
                cOutputFileName = "output.txt";

                programFile = writeToFile(CPATH, cProgramFileName, code);
                inputFile = writeToFile(CPATH, cInputFileName, input);

                commands = new ArrayList<>();
                commands.add("gcc");
                commands.add("-std=c++0x");
                commands.add("-w");
                commands.add("-o");
                commands.add("Main");
                commands.add(cProgramFileName);
                processBuilder = preCompile(commands, CPATH);
                System.out.println("Command " +processBuilder.command());
                compiled = compile(processBuilder, cOutputFileName);

                if (compiled) {
                    commands = new ArrayList<>();
                    commands.add("./Main");
                    processBuilder = preExecute(commands, CPATH, inputFile, cOutputFileName);
                    executed = execute(processBuilder);
                    if (executed) {
                        result.setExecuted(true);
                        result.setOutput(readFromFile(CPATH, cOutputFileName));
                    }
                } else {
                    result.setCompilerError(readFromFile(CPATH, cOutputFileName));
                    result.setCompiled(false);
                }
//                System.out.println("Compiler Error : " + result.getCompilerError());
                System.out.println("Ouput : " + result.getOutput());
                break;

            case 2:
                cPlusProgramFileName = "Main.cpp";
                cPlusInputFileName = "input.txt";
                cPlusOutputFileName = "output.txt";

                programFile = writeToFile(CPLUSPATH, cPlusProgramFileName, code);
                inputFile = writeToFile(CPLUSPATH, cPlusInputFileName, input);

                commands = new ArrayList<>();
                commands.add("g++");
                commands.add("-std=c++0x");
                commands.add("-w");
                commands.add("-o");
                commands.add("Main");
                commands.add(cPlusProgramFileName);
                processBuilder = preCompile(commands, CPLUSPATH);
                System.out.println("Command " +processBuilder.command());
                System.out.println("Directory " +processBuilder.directory());
                compiled = compile(processBuilder, cPlusOutputFileName);

                if (compiled) {
                    commands = new ArrayList<>();
                    commands.add("./Main");
                    processBuilder = preExecute(commands, CPLUSPATH, inputFile, cPlusOutputFileName);
                    executed = execute(processBuilder);
                    if (executed) {
                        result.setExecuted(true);
                        result.setOutput(readFromFile(CPLUSPATH, cPlusOutputFileName));
                    }
                } else {
                    result.setCompilerError(readFromFile(CPLUSPATH, cPlusOutputFileName));
                    result.setCompiled(false);
                }
//                System.out.println("Compiler Error : " + result.getCompilerError());
                System.out.println("Ouput : " + result.getOutput());
                break;

            case 3:
                javaProgramFileName = "Main.java";
                javaInputFileName = "input.txt";
                javaOutputFileName = "output.txt";

                programFile = writeToFile(JAVAPATH, javaProgramFileName, code);
                inputFile = writeToFile(JAVAPATH, javaInputFileName, input);

                commands = new ArrayList<>();
                commands.add("javac");
                commands.add(javaProgramFileName);
                processBuilder = preCompile(commands, JAVAPATH);
                compiled = compile(processBuilder, javaOutputFileName);

                if (compiled) {
                    commands = new ArrayList<>();
                    commands.add("java");
                    commands.add("Main");
                    processBuilder = preExecute(commands, JAVAPATH, inputFile, javaOutputFileName);
                    executed = execute(processBuilder);
                    if (executed) {
                        result.setExecuted(true);
                        result.setOutput(readFromFile(JAVAPATH, javaOutputFileName));
                    }
                } else {
                    result.setCompilerError(readFromFile(JAVAPATH, javaOutputFileName));
                    System.out.println("Compiler Error : " + result.getCompilerError());
                    result.setCompiled(false);
                }
//                System.out.println("Compiler Error : " + result.getCompilerError());
                System.out.println("Ouput : " + result.getOutput());
            default:
                break;
        }
        return new Result();
    }

    private File writeToFile(String path, String fileName, String content) {
        File file = new File(path + "//" + fileName);
        FileWriter writer;
        try {
            writer = new FileWriter(file);
            writer.write(content);
            writer.flush();
            writer.close();
        } catch (IOException ex) {
            System.out.println("Exception Occured in writing to the file");
        }
        return file;
    }

    private String readFromFile(String path, String fileName) {
        BufferedReader reader;
        String content = null;
        try {
            reader = new BufferedReader(new FileReader(path +"//"+ fileName));
            StringBuilder sb = new StringBuilder();
            content = reader.readLine();

            while (content != null) {
                sb.append(content);
                sb.append("\n");
                content = reader.readLine();
            }
            reader.close();
            content = sb.toString();
        } catch (FileNotFoundException ex) {
            System.out.println(ex.getMessage());
        } catch (IOException ex) {
            System.out.println(ex.getMessage());
        }
        return content;
    }

    private ProcessBuilder preCompile(List<String> commands, String directory) {
        ProcessBuilder processBuilder;
        processBuilder = new ProcessBuilder(commands);
        processBuilder.directory(new File(directory));
        processBuilder.redirectErrorStream(true);
        return processBuilder;
    }

    public boolean compile(ProcessBuilder processBuilder, String compilerErrorFile) {
        boolean compiled = true;
        try {
            Process process = processBuilder.start();
            InputStream inputStream = process.getInputStream();
            process.waitFor();
            String compilerOutput = null;
            StringBuilder sb = new StringBuilder();
            try (BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream))) {
                compilerOutput = reader.readLine();
                while (compilerOutput != null) {
                    sb.append(compilerOutput);
                    sb.append("\r\n");
                    compiled = false;
                    compilerOutput = reader.readLine();
                }
                compilerOutput = sb.toString();
            }
            if (compiled == false) {
                writeToFile(processBuilder.directory() + "//", compilerErrorFile, compilerOutput);
                return false;
            } else {
                System.out.println("Compilation Success");
                PrintWriter writer = new PrintWriter(new File(compilerErrorFile));
                writer.write("");
                writer.close();
                return true;
            }
        } catch (IOException | InterruptedException e) {
            System.out.println("in compile() " + e);
        }
        return false;
    }

    private ProcessBuilder preExecute(List<String> commands, String directory, File inputFile, String outputFilename) {
        File outputFile;

        ProcessBuilder processBuilder;
        processBuilder = new ProcessBuilder(commands);
        processBuilder.directory(new File(directory));
        processBuilder.redirectInput(inputFile);
        outputFile = new File(processBuilder.directory() + "//" + outputFilename);
        processBuilder.redirectErrorStream(true);
        processBuilder.redirectOutput(outputFile);
        return processBuilder;
    }

    public static boolean execute(ProcessBuilder processBuilder) {
        try {
            Process process = processBuilder.start();
            process.waitFor();
            int exitCode = process.exitValue();
            System.out.println("Exit Value = " + process.exitValue());
            if (exitCode != 0) {
                return false;
            }
        } catch (IOException ioe) {
            ioe.printStackTrace();
//            System.err.println("in execute() " + ioe);
        } catch (InterruptedException ex) {
            Logger.getLogger(CompilerClass.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Code execution finished!");
        return true;
    }
}
