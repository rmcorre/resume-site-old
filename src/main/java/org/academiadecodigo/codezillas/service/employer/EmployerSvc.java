package org.academiadecodigo.codezillas.service.employer;

import org.academiadecodigo.codezillas.persistence.model.employer.Employer;

import java.util.List;
import java.util.Set;

public interface EmployerSvc {

    Employer find(Integer employerId);

    Set<Employer> findAll();

    void saveOrUpdate(Employer employer);

    void delete(Integer id);
}
