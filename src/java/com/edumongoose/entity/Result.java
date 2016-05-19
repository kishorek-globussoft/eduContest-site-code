/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edumongoose.entity;

/**
 *
 * @author Admin
 */
public class Result {

    String compilerError;
    String runtimeError;
    String output;

    public String getCompilerError() {
        return compilerError;
    }

    public void setCompilerError(String compilerError) {
        this.compilerError = compilerError;
    }

    public String getRuntimeError() {
        return runtimeError;
    }

    public void setRuntimeError(String runtimeError) {
        this.runtimeError = runtimeError;
    }

    public String getOutput() {
        return output;
    }

    public void setOutput(String output) {
        this.output = output;
    }
}
