package com.thisissvikas.restaurant_management_app.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {

    @GetMapping("/health")
    public ResponseEntity<String> hello() {
        return ResponseEntity.ok("Hello!");
    }

}
