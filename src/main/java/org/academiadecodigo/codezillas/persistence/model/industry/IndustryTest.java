package org.academiadecodigo.codezillas.persistence.model.industry;

public class IndustryTest {

    public static void main(String[] args) {

        Industry industry = new Industry();
        industry.setDomain("Software Development");

        Branch branch1 = new Branch();
        branch1.setName("Front-End");

        Branch branch2 = new Branch();
        branch2.setName("Back-End");

        industry.addBranch(branch1);
        industry.addBranch(branch2);

        System.out.println("industry.getBranches(): " + industry.getBranches());
        System.out.println("branch1.getIndustry(): " + branch1.getIndustry());

        industry.removeBranch(branch1);

        System.out.println("\n*********** Remove branch1 *****************");
        System.out.println("industry.getBranches(): " + industry.getBranches());
    }
}
