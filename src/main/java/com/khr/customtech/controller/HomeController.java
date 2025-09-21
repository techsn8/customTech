package com.khr.customtech.controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

    @GetMapping("/home")
    public String sendGreetings() {
        return "Hello, World!";
    }
}

