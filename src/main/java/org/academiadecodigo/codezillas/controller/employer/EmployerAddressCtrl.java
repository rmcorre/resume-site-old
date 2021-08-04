package org.academiadecodigo.codezillas.controller.employer;

import org.academiadecodigo.codezillas.persistence.model.employer.Employer;
import org.academiadecodigo.codezillas.persistence.model.employer.EmployerAddress;
import org.academiadecodigo.codezillas.service.employerAddress.EmployerAddressSvc;
import org.academiadecodigo.codezillas.service.employer.EmployerSvc;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("/employerAddress")
public class EmployerAddressCtrl {

    private EmployerSvc employerSvc;
    private EmployerAddressSvc addressSvc;

    public EmployerAddressCtrl() {

    }

    @Autowired
    public EmployerAddressCtrl(EmployerSvc employerSvc, EmployerAddressSvc addressSvc) {
        this.employerSvc = employerSvc;
        this.addressSvc = addressSvc;
    }

    // add an InitBinder... to trim leading and trailing whitespace
    // from input strings
    // resolves issue for our validation
    // this method will be called for every web request coming into
    // this controller
    @InitBinder
    public void initBinder(WebDataBinder webDataBinder) {

        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        webDataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }

    @ModelAttribute("employerAddress")
    public EmployerAddress addEmployerAddress() {
        return new EmployerAddress();
    }

    @GetMapping("/admin")
    public String admin(@RequestParam("employerId") Integer id, Model model) {

        System.out.println("\n************************* inside EmployerAddressCtrl/admin");

        Employer employer = employerSvc.find(id);
        model.addAttribute("employer", employer);

        List<EmployerAddress> addressList = addressSvc.findAllByEmployerId(id);
        model.addAttribute("addressList", addressList);

        return "employerAddress/admin";
    }

    @GetMapping("/create")
    public String create(@RequestParam("employerId") Integer employerId, Model model) {

        System.out.println("\n************************* inside EmployerAddressCtrl/create");

        model.addAttribute("employerId", employerId);
        return "employerAddress/create";
    }

    @GetMapping("/edit")
    public String update(
            @RequestParam("addressId") Integer id,
            @ModelAttribute("employerId") Integer employerId,
            Model model) {

        EmployerAddress employerAddress = addressSvc.find(id);
        model.addAttribute("employerAddress", employerAddress);
        model.addAttribute("employerId", employerId);
        return "employerAddress/edit";
    }

    @PostMapping("/process")
    public String process(
            @ModelAttribute("employerId") Integer employerId,
            @ModelAttribute("employerAddress") EmployerAddress employerAddress,
            RedirectAttributes redirectAttributes) {

        System.out.println("\n************************* inside EmployerAddressCtrl/process");

        Employer employer = employerSvc.find(employerId);
        employerAddress.setEmployer(employer);
        addressSvc.saveOrUpdate(employerAddress);

        redirectAttributes.addAttribute("employerId", employerAddress.getEmployer().getId());
        redirectAttributes.addFlashAttribute("employerAddress", employerAddress);

        return "redirect:/employer/admin";
    }

    @GetMapping("/delete")
    public String delete(
            @RequestParam("addressId") Integer addressId,
            @RequestParam("employerId") Integer employerId,
            RedirectAttributes redirectAttributes) {

        System.out.println("\n************************* inside EmployerAddressCtrl/delete");

        addressSvc.delete(addressId);
        redirectAttributes.addAttribute("employerId", employerId);

        return "redirect:/employerAddress/admin";
    }
}
