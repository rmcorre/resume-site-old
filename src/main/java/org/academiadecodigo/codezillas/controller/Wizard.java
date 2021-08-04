package org.academiadecodigo.codezillas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@SessionAttributes("identity")
@RequestMapping("/wizard")
public class Wizard {

    @GetMapping("/start")
    String start(Model model) {

//        model.addAttribute("identity", new Identity());
        return "wizard";
    }
}
