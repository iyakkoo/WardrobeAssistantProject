package com.wap.spring.mvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class AppController {

    @GetMapping(path = "WardrobeIndex")
    public String showStartPage() {
        return "WardrobeIndex";
    }

    @GetMapping(path = "/WardrobePodstrona")
    public String showWardrobePodstrona(){
        return "WardrobePodstrona";

    }
    @GetMapping(path = "/podstrona")
    public String showPodstrona(){
        return "podstrona";
    }





}
