package com.example.springmvcdemo.mvc;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SellyMapping {

    @RequestMapping("/showForm")
    public String displayTheForm(){
        return "silly";
    }

    @RequestMapping("/processFormVersionThree")
    public String processFormVersionThree(@RequestParam("studentName")String theName, Model model){

        theName = theName.toUpperCase();

        String result = "Hey my Friend from v3! We're in Selly! " + theName;

        model.addAttribute("message", result);

        return "helloworld";

    }

}
