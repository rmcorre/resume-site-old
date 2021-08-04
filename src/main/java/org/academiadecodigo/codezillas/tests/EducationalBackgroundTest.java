package org.academiadecodigo.codezillas.tests;

import org.academiadecodigo.codezillas.persistence.model.education.Education;
import java.util.ArrayList;
import java.util.List;

public class EducationalBackgroundTest {

    private static final List<Education> educationMap = new ArrayList<>();

    public static void main(String[] args) {

        Education academiaDeCodigo = new Education();
        academiaDeCodigo.setInstitution("<ACADEMIA DE CODIGO_>");
        academiaDeCodigo.setCourse("Junior Fullstack Developer");
        academiaDeCodigo.setStartDate("May 2019");
        academiaDeCodigo.setEndDate("Aug 2019");
        academiaDeCodigo.setAddress("Terceira, Azores");
        educationMap.add(academiaDeCodigo);

        Education freeCodeCamp = new Education();
        freeCodeCamp.setInstitution("FREECODECAMP");
        freeCodeCamp.setCourse("Fullstack Web Development Certification");
        freeCodeCamp.setStartDate("Apr 2016");
        freeCodeCamp.setEndDate("Ongoing");
        freeCodeCamp.setAddress("Online");
        educationMap.add(freeCodeCamp);

        Education redeValorizar = new Education();
        redeValorizar.setInstitution("REDE VALORIZAR");
        redeValorizar.setCourse("Curso ABC");
        redeValorizar.setStartDate("Sep 2015");
        redeValorizar.setEndDate("Jan 2016");
        redeValorizar.setAddress("Sao Miguel, Azores");
        educationMap.add(redeValorizar);

        Education concordia = new Education();
        concordia.setInstitution("CONCORDIA UNIVERSITY COLLEGE OF ALBERTA");
        concordia.setCourse("Bachelor of Arts");
        concordia.setStartDate("Sep 1993");
        concordia.setEndDate("Apr 1995");
        concordia.setAddress("Edmonton, Alberta");
        educationMap.add(concordia);

        for (Education educationBackground : educationMap) {
            System.out.println(educationBackground.getInstitution());
            System.out.println(educationBackground.getCourse());
            System.out.println(educationBackground.getStartDate() + " - " + educationBackground.getEndDate());
            System.out.println(educationBackground.getAddress());
            System.out.println();
        }
    }
}
