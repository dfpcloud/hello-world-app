package com.dfp.example.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {
    @GetMapping
    @RequestMapping("/")
    public String helloServer() {

        return "{\n" +
                "\"msg\": \"Hello!! Greetings from DFP. You have successfully deployed your first Spring boot application on DFP cloud platform!. Modify the source code in this repository to build your application.\",\n" +
                "\"version\":\"v1.0\",\n" +
                "\"service\":\"server\"\n" +
                "}";
    }

}
