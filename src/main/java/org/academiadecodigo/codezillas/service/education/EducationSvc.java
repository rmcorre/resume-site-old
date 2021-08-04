package org.academiadecodigo.codezillas.service.education;

import org.academiadecodigo.codezillas.persistence.model.education.Education;

import java.util.List;
import java.util.Set;

public interface EducationSvc {

    Education find(Integer id);

    Set<Education> findAll();

    Education saveOrUpdate(Education education);
}
