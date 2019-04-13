package com.wap.spring.mvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping
public class AppController {
    @GetMapping
    public String showStartPage() {
        return "/js_data/WardrobeIndex";
    }

    @GetMapping(path = "/WardrobePodstrona")
    public String showWardrobePodstrona(){
        return "/js_data/WardrobePodstrona";

    }
    @GetMapping(path = "/podstrona")
    public String showPodstrona(){
        return "/js_data/podstrona";
    }





}
