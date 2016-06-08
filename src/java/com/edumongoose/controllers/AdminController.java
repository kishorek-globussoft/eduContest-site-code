/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edumongoose.controllers;

import com.edumongoose.dao.ProblemDao;
import com.edumongoose.entity.Problem;
import com.google.gson.Gson;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author Admin
 */
@Controller
@RequestMapping(value = "/admin")
public class AdminController {

    @Autowired
    ProblemDao problemDao;

    public void setProblemDao(ProblemDao problemDao) {
        this.problemDao = problemDao;
    }

    @RequestMapping(value = "/dashboard")
    public String dashboard() {
        return "admindashboard";
    }

    @RequestMapping(value = "uploadproblem")
    public String uploadProblem() {
        return "uploadproblem";
    }

    @RequestMapping(value = "submitproblem", method = RequestMethod.POST)
    public String submitProblem(Problem problem) {
        System.out.println(problem.getCode());
        System.out.println(problem.getQuestion());
        problem.setAuthor("Edumongoose");
        problem.setDate(new Date());
        problem.setDifficulty(1);
        problem.setInput("adf");
        problem.setOutput("adgd");
        problemDao.saveProblem(problem);
        return "uploadproblem";
    }
    
    @RequestMapping(value = "getProblems")
    @ResponseBody
    public String getProblems(){
        Gson gson = new Gson();
        List<Problem> list = problemDao.getAllProblems();
        for(Problem problem : list){
            System.out.println("Problem : " + problem.getQuestion());
        }
        return gson.toJson(list);
    }
    
    @RequestMapping(value = "problemlisting")
    public String listProblems(ModelMap map){
        List<Problem> list = problemDao.getAllProblems();
        map.addAttribute("problems", list);
        return "problemlisting";
    }
    
}
