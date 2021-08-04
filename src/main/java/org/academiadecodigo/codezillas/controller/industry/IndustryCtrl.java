package org.academiadecodigo.codezillas.controller.industry;

import org.academiadecodigo.codezillas.persistence.model.industry.Industry;
import org.academiadecodigo.codezillas.service.industry.IndustrySvc;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/industry")
public class IndustryCtrl {

    private final IndustrySvc industrySvc;

    @Autowired
    public IndustryCtrl(IndustrySvc industrySvc) {
        this.industrySvc = industrySvc;
    }

    @GetMapping("/admin")
    public String admin(Model model) {

        model.addAttribute("industryList", industrySvc.getAll());
        return "industry/admin";
    }

    @GetMapping("/create")
    public String create(Model model) {

        model.addAttribute("industry", new Industry());
        return "industry/create";
    }
}
