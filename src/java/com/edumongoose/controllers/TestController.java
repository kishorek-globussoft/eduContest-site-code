/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edumongoose.controllers;

import com.edumongoose.entity.Person;
import com.fasterxml.jackson.core.JsonProcessingException;
import java.util.ArrayList;
import java.util.List;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Admin
 */
@Controller
public class TestController {

    @RequestMapping(value = "/name/{name}", method = RequestMethod.GET)
//    @RequestMapping(value = "/name/{name}", produces = "application/json")
    public @ResponseBody
    List<Person> test(@PathVariable String name) throws JsonProcessingException {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        Person person = (Person) context.getBean(Person.class);
        System.out.println("Test");
        List<Person> list = new ArrayList();
//        Person person = new Person();
        Person person1 = new Person();
        Person person2 = new Person();
        Person person3 = new Person();
        person.setAge(10);
        person.setGender("female");
        person.setName(name);

        person1.setAge(10);
        person1.setGender("male");
        person1.setName("agd");

        person2.setAge(10);
        person2.setGender("male");
        person2.setName("adgadgsa");

        person3.setAge(10);
        person3.setGender("male");
        person3.setName("ljandg;oaod");

        list.add(person);
        list.add(person1);
        list.add(person2);
        list.add(person3);
        return list;
    }

    @RequestMapping(value = "/index")
    public String index() {
        return "home";
    }

    @RequestMapping(value = "/ide")
    public String ide() {
        System.out.println("Index Test");
        return "ide";
    }

}
