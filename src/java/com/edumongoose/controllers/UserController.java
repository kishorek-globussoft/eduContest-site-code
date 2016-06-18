/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edumongoose.controllers;

import com.edumongoose.dao.ProblemDao;
import com.edumongoose.entity.Problem;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Admin
 */
@Controller
@RequestMapping(value = "user")
public class UserController {

    @Autowired
    ProblemDao problemDao;

    public void setProblemDao(ProblemDao problemDao) {
        this.problemDao = problemDao;
    }

    @RequestMapping(value = "dashboard")
    public String index() {
        return "dashboard";
    }

    @RequestMapping(value = "solveproblem")
    public String ide(@RequestParam(required = true,name = "code") String code,ModelMap map) {
        System.out.println("Code Received is : " + code);
        Problem problem = problemDao.getProblem(code);
        map.put("problem", problem);
        return "solveproblem";
    }

    @RequestMapping(value = "listing")
    public String listing(ModelMap map) {
        List<Problem> list = problemDao.getAllProblems();
        map.addAttribute("problems", list);
        return "listing";
    }

}
