package com.dfp.example.controller;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {
    @GetMapping
    @RequestMapping(value = "/*",produces = MediaType.TEXT_HTML_VALUE)
    public String helloServer() {

        return "<!DOCTYPE html>\n" +
                "<html>\n" +
                "<head>\n" +
                "<title>Nodejs</title>\n" +
                "</head>\n" +
                "<body style=\"background-color: #ee9c34\">\n" +
                " <div style=\"color: white;font-size: 35px;padding: 10px;font-weight: 900px\">Neomegha</div>\n" +
                "    <div style=\"height: 250px\"></div>\n" +
                "<div>\n" +
                "    <center>\n" +
                "    <h1 style=\"color: white;font-size: 40px\">Welcome to Java Micro-services.</h1>\n" +
                "    <h6 style=\"color: white;font-size: 40px\">Modify the source code in this repository to build your application</h6>\n" +
                "    </center>    \n" +
                "</div>\n" +
                "</body>\n" +
                "</html>";
    }

}
