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
    boolean compiled;
    boolean executed;

    public boolean isCompiled() {
        return compiled;
    }

    public void setCompiled(boolean compiled) {
        this.compiled = compiled;
    }

    public boolean isExecuted() {
        return executed;
    }

    public void setExecuted(boolean executed) {
        this.executed = executed;
    }

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
