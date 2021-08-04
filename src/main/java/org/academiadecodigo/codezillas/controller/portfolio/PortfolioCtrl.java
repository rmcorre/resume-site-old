package org.academiadecodigo.codezillas.controller.portfolio;

import org.academiadecodigo.codezillas.dto.PortfolioDTO;
import org.academiadecodigo.codezillas.persistence.model.Portfolio;
import org.academiadecodigo.codezillas.persistence.model.education.Education;
import org.academiadecodigo.codezillas.persistence.model.identity.Identity;
import org.academiadecodigo.codezillas.persistence.model.identity.IdentityAddress;
import org.academiadecodigo.codezillas.service.education.EducationSvc;
import org.academiadecodigo.codezillas.service.employer.EmployerSvc;
import org.academiadecodigo.codezillas.service.identity.IdentityAddressSvc;
import org.academiadecodigo.codezillas.service.identity.IdentitySvc;
import org.academiadecodigo.codezillas.service.portfolio.PortfolioSvc;
import org.academiadecodigo.codezillas.service.toolsAndTech.ToolsAndTechSvc;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

@Controller
@RequestMapping("/portfolio")
@SessionAttributes({"portfolioDTO"})
public class PortfolioCtrl {

    private final PortfolioSvc portfolioSvc;
    private final IdentitySvc identitySvc;
    private final IdentityAddressSvc identityAddressSvc;
    private final EducationSvc educationSvc;
    private final EmployerSvc employerSvc;
    private final ToolsAndTechSvc toolsAndTechSvc;


    @Autowired
    public PortfolioCtrl(
            PortfolioSvc portfolioSvc,
            IdentitySvc identitySvc,
            IdentityAddressSvc identityAddressSvc,
            EducationSvc educationSvc,
            EmployerSvc employerSvc,
            ToolsAndTechSvc toolsAndTechSvc
    ) {
        this.portfolioSvc = portfolioSvc;
        this.identitySvc = identitySvc;
        this.identityAddressSvc = identityAddressSvc;
        this.educationSvc = educationSvc;
        this.employerSvc = employerSvc;
        this.toolsAndTechSvc = toolsAndTechSvc;
    }

    @GetMapping("/admin")
    public String admin(
            @RequestParam("portfolioId") Integer portfolioId,
            Model model) {

        Portfolio portfolio = portfolioSvc.find(portfolioId);

        model.addAttribute("portfolio", portfolio);

        return "portfolio/admin";
    }

    @GetMapping("/create")
    public String create(Model model) {

        System.out.println("\n************************* inside PortfolioCtrl/create");

        Set<Identity> identitySet = identitySvc.findAll();
        Map<Integer, String> identityMap = new HashMap<>();
        for (Identity i : identitySet) {
            identityMap.put(i.getId(), i.getFirstName());
        }

        model.addAttribute("portfolioDTO", new PortfolioDTO());
        model.addAttribute("identityMap", identityMap);

        return "portfolio/create";
    }

    @PostMapping("/process")
    public String process2(
            PortfolioDTO portfolioDTO,
            RedirectAttributes redirectAttributes) {

        System.out.println("\n************************* inside PortfolioCtrl/process2");

        Identity identity = identitySvc.find(portfolioDTO.getIdentity());

        Portfolio portfolio = new Portfolio();
        portfolio.setCategory(portfolioDTO.getCategory());
        portfolio.setPortfolioName(portfolioDTO.getPortfolioName());
        portfolio.setSummary(portfolioDTO.getSummary());
        portfolio.addIdentity(identity);
        portfolio.setActive(portfolioDTO.getActive());


        Portfolio saved = portfolioSvc.saveOrUpdate(portfolio);

        redirectAttributes.addAttribute("portfolioId", saved.getId());
        return "redirect:/portfolio/createConfirmation";
    }

    @GetMapping("/createConfirmation")
    public String createConfirmation(
            @RequestParam("portfolioId") Integer portfolioId,
            Model model) {

        System.out.println("\n************************* inside PortfolioCtrl/createConfirmation");

        Portfolio portfolio = portfolioSvc.find(portfolioId);
        Identity activeIdentity = portfolio.getActiveIdentity();
        IdentityAddress currentAddress = activeIdentity.getCurrentAddress();


        model.addAttribute("portfolio", portfolio);
        model.addAttribute("activeIdentity", activeIdentity);
        model.addAttribute("currentAddress", currentAddress);

        return "portfolio/createConfirmation";
    }

    @GetMapping("/edit")
    public String update(@RequestParam("portfolioId") Integer id, Model model) {

        System.out.println("\n************************* inside PortfolioCtrl/edit");

        model.addAttribute("portfolio", portfolioSvc.find(id));
        return "portfolio/edit";
    }

    @GetMapping("/portfolio")
    public String portfolio(Model model) {

        Portfolio portfolio = portfolioSvc.findActive();
        Set<Education> educationSet = educationSvc.findAll();


        Set<Identity> identitySet = portfolio.getIdentities();
        Identity activeIdentity = null;
        for (Identity i : identitySet) {
            if (i.isActive()) {
                activeIdentity = i;
            }
        }

        Set<IdentityAddress> addressList = activeIdentity.getAddresses();
        IdentityAddress activeAddress = null;
        for (IdentityAddress i : addressList) {
            if (i.isCurrent()) {
               activeAddress = i;
            }
        }

        model.addAttribute("portfolio", portfolio);
        model.addAttribute("identity", activeIdentity);
        model.addAttribute("identityAddress", activeAddress);
        model.addAttribute("educationSet", educationSet);

        return "portfolio";
    }

    @GetMapping("/portfolioTest")
    public String portfolioTest() {

        Portfolio portfolio = new Portfolio();
        Identity identity1 = new Identity();
        Identity identity2 = new Identity();

        IdentityAddress identityAddress1 = new IdentityAddress();
        IdentityAddress identityAddress2 = new IdentityAddress();

        Education education1 = new Education();
        Education education2 = new Education();

        portfolio.setPortfolioName("Back-end Developer");

        identity1.setFirstName("Fabio");
        identity1.setLastName("Barbosa");
        identityAddress1.setCountryRegion("Azores");
        identity1.add(identityAddress1);

        identity2.setFirstName("Jorge");
        identity2.setLastName("Almeida");
        identityAddress2.setCountryRegion("Edmonton");
        identity2.add(identityAddress2);

        education1.setInstitution("Concordia College");
        education2.setInstitution("FreeCodeCamp");

        portfolio.addIdentity(identity1);
        identity1.getPortfolios().add(portfolio);
        portfolio.addEducation(education1);

        portfolio.addIdentity(identity2);
        identity2.getPortfolios().add(portfolio);
        portfolio.addEducation(education2);

        portfolioSvc.saveOrUpdate(portfolio);

        return "portfolio/portfolioTest";
    }

    @GetMapping("/savedPortfolioTest")
    public void savedPortfolioTest() {

        Portfolio portfolioSaved = portfolioSvc.find(1);
        Set<Identity> identities = portfolioSaved.getIdentities();
        Set<Education> educations = portfolioSaved.getEducation();

        System.out.println(identities.toString());
        System.out.println(educations.toString());
    }

    @GetMapping("/dashboard")
    public String dashBoard(Model model) {

        Portfolio activePortfolio = portfolioSvc.findActive();
        Identity activeIdentity = activePortfolio.getActiveIdentity();

        model.addAttribute("activePortfolio", activePortfolio);
        model.addAttribute("activeProfile", activeIdentity);
        return "dashboard";
    }


}
