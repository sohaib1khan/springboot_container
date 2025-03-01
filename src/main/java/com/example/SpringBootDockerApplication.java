package com.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@SpringBootApplication
public class SpringBootDockerApplication {
    public static void main(String[] args) {
        SpringApplication.run(SpringBootDockerApplication.class, args);
    }
}

@Controller
@RequestMapping("/")
class HelloController {
    @GetMapping
    public String home() {
        return "index";  // This will serve templates/index.html
    }
}
