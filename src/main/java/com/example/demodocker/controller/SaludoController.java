package com.example.demodocker.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SaludoController {
    @GetMapping("/saludar")
    public String saludar() {
        return "Hola Mundo";
    }
}

