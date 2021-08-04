package org.academiadecodigo.codezillas.controller.education;

import org.academiadecodigo.codezillas.persistence.dao.education.EducationDAO;
import org.academiadecodigo.codezillas.persistence.model.education.Education;
import org.academiadecodigo.codezillas.service.education.EducationSvc;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("/education")
@SessionAttributes("education")
public class EducationCtrl {

    private EducationSvc educationSvc;

    public EducationCtrl() {

    }

    @Autowired
    public EducationCtrl(EducationSvc educationSvc) {
        this.educationSvc = educationSvc;
    }

    @GetMapping("create")
    public String create(Model model) {

        System.out.println("\n************************* inside EducationCtrl/create");

        model.addAttribute("education", new Education());

        return "education/create";
    }

    @PostMapping("process")
    public String process(
            Education education,
            RedirectAttributes redirectAttributes) {

        System.out.println("\n************************* inside EducationCtrl/process");

        Education savedEducation = educationSvc.saveOrUpdate(education);

        redirectAttributes.addAttribute("educationId", savedEducation.getId());

        return "redirect:/education/createConfirmation";
    }

    @GetMapping("createConfirmation")
    public String createConfirmation(
            @RequestParam("educationId") Integer educationId,
            Model model) {

        System.out.println("\n************************* inside EducationCtrl/createConfirmation");

        model.addAttribute("education", educationSvc.find(educationId));

        return "education/createConfirmation";
    }
}
