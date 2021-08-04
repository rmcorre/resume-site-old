package org.academiadecodigo.codezillas.controller.identity;

import org.academiadecodigo.codezillas.persistence.model.identity.Identity;
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
@RequestMapping("/profileAddress")
@SessionAttributes({"address"})
public class IdentityAddressCtrl {

    private IdentitySvc identitySvc;
    private IdentityAddressSvc addressSvc;

    @Autowired
    public IdentityAddressCtrl(IdentitySvc identitySvc, IdentityAddressSvc addressSvc) {
        this.identitySvc = identitySvc;
        this.addressSvc = addressSvc;
    }

    @InitBinder
    public void initBinder(WebDataBinder webDataBinder) {
        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        webDataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }

    @GetMapping("/admin")
    public String admin(org.academiadecodigo.codezillas.persistence.model.identity.IdentityAddress address, Model model) {

        System.out.println("\n************************* inside IdentityAddressCtrl/admin");

        model.addAttribute("address", address);

        return "profileAddress/admin";
    }

    @GetMapping("/create")
    public String create() {

        System.out.println("\n************************* inside IdentityAddressCtrl/create");

        return "profileAddress/create";
    }

    @GetMapping("/edit")
    public String update(
            @RequestParam("profileId") Integer profileId,
            @RequestParam("addressId") Integer addressId,
            Model model) {

        System.out.println("\n***************************** inside IdentityAddressCtrl/update");
        org.academiadecodigo.codezillas.persistence.model.identity.IdentityAddress identityAddress = addressSvc.find(addressId);
        System.out.println(identityAddress.getProfile().getId());

        model.addAttribute("profileId", profileId);
        model.addAttribute("address", addressSvc.find(addressId));

        return "profileAddress/edit";
    }

    @GetMapping("/process")
    public String process(Identity identity, org.academiadecodigo.codezillas.persistence.model.identity.IdentityAddress address, Model model) {

        System.out.println("\n***************************** inside IdentityAddressCtrl/process");

        model.addAttribute("identity", identity);
        model.addAttribute("address", address);

        return "portfolio/portfolioTest";
    }

    @GetMapping("/delete")
    public String delete(
            @RequestParam("profileId") Integer profileId,
            @RequestParam("addressId") Integer addressId,
            RedirectAttributes redirectAttributes) {

        System.out.println("\n***************************** inside IdentityAddressCtrl/delete");

        addressSvc.remove(addressId);

        redirectAttributes.addAttribute("profileId", profileId);
        return "redirect:/profileAddress/admin";
    }
}
