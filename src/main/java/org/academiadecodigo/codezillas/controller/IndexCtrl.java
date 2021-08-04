package org.academiadecodigo.codezillas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexCtrl {

    @RequestMapping("/")
    public String showIndexView() {
        return "index";
    }
}
