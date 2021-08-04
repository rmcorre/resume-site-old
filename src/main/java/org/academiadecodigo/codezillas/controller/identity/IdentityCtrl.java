package org.academiadecodigo.codezillas.controller.identity;

import org.academiadecodigo.codezillas.persistence.model.identity.Identity;
import org.academiadecodigo.codezillas.persistence.model.identity.IdentityAddress;
import org.academiadecodigo.codezillas.service.employer.EmployerSvc;
import org.academiadecodigo.codezillas.service.employerAddress.EmployerAddressSvc;
import org.academiadecodigo.codezillas.service.portfolio.PortfolioSvc;
import org.academiadecodigo.codezillas.service.identity.IdentitySvc;
import org.academiadecodigo.codezillas.service.identity.IdentityAddressSvc;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/identity")
@SessionAttributes({"identity", "address"})
public class IdentityCtrl {

    private final PortfolioSvc portfolioSvc;
    private final IdentitySvc identitySvc;
    private final IdentityAddressSvc identityAddressSvc;

    @Autowired
    public IdentityCtrl(PortfolioSvc portfolioSvc, IdentitySvc identitySvc, IdentityAddressSvc identityAddressSvc, EmployerSvc employerSvc, EmployerAddressSvc employerAddressSvc) {
        this.portfolioSvc = portfolioSvc;
        this.identitySvc = identitySvc;
        this.identityAddressSvc = identityAddressSvc;
    }

    @InitBinder
    public void initBinder(WebDataBinder webDataBinder) {
        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        webDataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }

    @GetMapping("/list")
    public String list(Model model) {

        System.out.println("\n********************** inside IdentityCtrl/admin" );

        model.addAttribute("portfolioList", portfolioSvc.findAll());
        model.addAttribute("profileList", identitySvc.findAll());
        return "identity/list";
    }

    @GetMapping("/admin")
    public String admin(@RequestParam("identityId") Integer identityId, Model model) {

        System.out.println("\n********************** inside IdentityCtrl/admin" );

        model.addAttribute("identity", identitySvc.find(identityId));

        return "identity/admin";
    }

    @GetMapping("/create")
    public String create(Model model) {

        System.out.println("\n************************* inside IdentityCtrl/create");

        model.addAttribute("identity", new Identity());

        return "identity/create";
    }

    @GetMapping("/createAddress")
    public String createAddress(Identity identity, Model model) {

        System.out.println("\n************************* inside IdentityCtrl/createAddress");

        model.addAttribute("address", new IdentityAddress());

        return "identityAddress/create";
    }

    @PostMapping("/process")
    public String process(
            Identity identity,
            IdentityAddress address,
            RedirectAttributes redirectAttributes) {

        System.out.println("\n************************* inside IdentityCtrl/process");

        Identity savedIdentity = identitySvc.saveOrUpdate(identity.add(address));
        IdentityAddress savedAddress = identityAddressSvc.findByProfileId(savedIdentity.getId());

        redirectAttributes.addAttribute("identityId", savedIdentity.getId());
        redirectAttributes.addAttribute("addressId", savedAddress.getId());
        return "redirect:/identity/createConfirmation";
    }

    @GetMapping("/createConfirmation")
    public String createConfirmation(
            @RequestParam("identityId") Integer identityId,
            @RequestParam("addressId") Integer addressId,
            Model model) {

        System.out.println("\n********************** inside IdentityCtrl/createConfirmation" );

        model.addAttribute("identity", identitySvc.find(identityId));
        model.addAttribute("address", identityAddressSvc.find(addressId));

        return "identity/createConfirmation";
    }

    @GetMapping("/edit")
    public String update(@RequestParam("profileId") Integer profileId, Model model) {

        System.out.println("\n************************* inside IdentityCtrl/update");

        model.addAttribute("identity", identitySvc.find(profileId));
        return "identity/edit";
    }


    @GetMapping("/delete")
    public String delete(@RequestParam("profileId") Integer profileId) {

        System.out.println("\n************************* inside IdentityCtrl/delete");

        identitySvc.delete(profileId);
        return "redirect:/identity/admin";
    }

}
