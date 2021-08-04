package org.academiadecodigo.codezillas.controller.employer;

import org.academiadecodigo.codezillas.persistence.model.employer.Employer;
import org.academiadecodigo.codezillas.persistence.model.employer.EmployerAddress;
import org.academiadecodigo.codezillas.service.employerAddress.EmployerAddressSvc;
import org.academiadecodigo.codezillas.service.employer.EmployerSvc;
import org.academiadecodigo.codezillas.service.portfolio.PortfolioSvc;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("/employer")
@SessionAttributes({"employer", "employerAddress"})
public class EmployerCtrl {

    private final EmployerSvc employerSvc;
    private final EmployerAddressSvc employerAddressSvc;
    private final PortfolioSvc portfolioSvc;

    @Autowired
    public EmployerCtrl(EmployerSvc employerSvc, EmployerAddressSvc employerAddressSvc, PortfolioSvc portfolioSvc) {
        this.employerSvc = employerSvc;
        this.employerAddressSvc = employerAddressSvc;
        this.portfolioSvc = portfolioSvc;
    }

    @GetMapping("/admin")
    public String admin(
            @RequestParam("employerId") Integer id,
            Model model) {

        System.out.println("\n********************** inside EmployerCtrl/admin" );

        model.addAttribute("employer", employerSvc.find(id));
        model.addAttribute("employerAddressList", employerAddressSvc.findAllByEmployerId(id));

        return "employer/admin";
    }

    @GetMapping("/create")
    public String create(Model model) {

        System.out.println("\n********************** inside EmployerCtrl/create" );

        model.addAttribute("employer", new Employer());
        return "employer/create";
    }

    @GetMapping("/createAddress")
    public String createAddress(Employer employer, Model model) {

        System.out.println("\n********************** inside EmployerCtrl/create" );

        model.addAttribute("employerAddress", new EmployerAddress());
        return "employer/create";
    }

    @GetMapping("edit")
    public String update(@RequestParam("employerId") Integer employerId, Model model) {

        System.out.println("\n********************** inside EmployerCtrl/update" );

        Employer employer = employerSvc.find(employerId);
        model.addAttribute("employer", employer);

        return "employer/edit";
    }

    @PostMapping("/process")
    public String process(
            Employer employer,
            EmployerAddress employerAddress,
            RedirectAttributes redirectAttributes) {

        System.out.println("\n********************** inside EmployerCtrl/process" );

        employerSvc.saveOrUpdate(employer);
        return "redirect:/employer/admin";
    }

    @GetMapping("delete")
    public String delete(@RequestParam("employerId") Integer id) {

        System.out.println("\n********************** inside EmployerCtrl/delete" );

        List<EmployerAddress> employerAddressList = employerAddressSvc.findAllByEmployerId(id);

        for (EmployerAddress address : employerAddressList) {
            address.setEmployer(null);
            employerAddressSvc.saveOrUpdate(address);
        }

        employerSvc.delete(id);
        return "redirect:/employer/admin";
    }

}
