package org.academiadecodigo.codezillas.controller.toolsAndTech;

import org.academiadecodigo.codezillas.persistence.model.ToolsAndTechnology;
import org.academiadecodigo.codezillas.service.toolsAndTech.ToolsAndTechSvc;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("/toolsAndTechnology")
public class ToolsAndTechCtrl {

    private final ToolsAndTechSvc toolsAndTechSvc;

    @Autowired
    public ToolsAndTechCtrl(ToolsAndTechSvc toolsAndTechSvc) {
        this.toolsAndTechSvc = toolsAndTechSvc;
    }

    @ModelAttribute("toolsAndTechnology")
    public ToolsAndTechnology addToolsAndTechnology() {
        return new ToolsAndTechnology();
    }

    @GetMapping("/toolsAndTechnologyAdmin")
    public String toolsAndTechnologyAdmin(Model model) {
        List<ToolsAndTechnology> toolsAndTechnologyList = toolsAndTechSvc.findAll();
        model.addAttribute("toolsAndTechnologyList", toolsAndTechnologyList);

        return "toolsAndTechnology/toolsAndTechnologyAdmin";
    }

    @GetMapping("/toolsAndTechnologyCreate")
    public String create() {
        return "toolsAndTechnology/toolsAndTechnologyCreate";
    }

    @PostMapping("processToolsAndTechnology")
    public String processIndustryKnowledge(
            @ModelAttribute("toolsAndTechnology") ToolsAndTechnology toolsAndTechnology,
            RedirectAttributes redirectAttributes,
            Model model) {

        toolsAndTechSvc.saveOrUpdate(toolsAndTechnology);
        return "redirect:/toolsAndTechnology/toolsAndTechnologyAdmin";
    }
}
