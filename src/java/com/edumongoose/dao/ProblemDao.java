/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edumongoose.dao;

import com.edumongoose.entity.Problem;
import java.util.List;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Admin
 */

public interface ProblemDao {
    
    @Transactional(propagation = Propagation.REQUIRED)
    public int saveProblem(Problem problem);
    
    @Transactional(propagation = Propagation.REQUIRED)
    public List<Problem> getAllProblems();
    
    @Transactional(propagation = Propagation.REQUIRED)
    public List<Problem> getAllProblems(int userId);
    
    @Transactional(propagation = Propagation.REQUIRED)
    public Problem getProblem(int problemId);
    
    
}
