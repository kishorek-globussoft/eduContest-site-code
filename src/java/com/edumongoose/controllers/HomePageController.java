/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edumongoose.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Admin
 */
@Controller
public class HomePageController {
    
    @RequestMapping(value = "home")
    public String home(){
        return "home";
    }
    
    @RequestMapping(value = "signin")
    public String signin(){
        return "signin";
    }
    
    @RequestMapping(value = "signup")
    public String signup(){
        return "signup";
    }
    
}
