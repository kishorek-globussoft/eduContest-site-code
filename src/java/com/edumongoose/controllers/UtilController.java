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
public class UtilController {

    @RequestMapping(value = "/pagenotfound")
    public String pageNotFound() {
        return "pagenotfound";
    }
    
    @RequestMapping(value = "/500exception")
    public String exception500() {
        return "500exception";
    }

}
