package org.academiadecodigo.codezillas.service.employerAddress;

import org.academiadecodigo.codezillas.persistence.model.employer.EmployerAddress;

import java.util.List;
import java.util.Set;

public interface EmployerAddressSvc {

    EmployerAddress find(Integer id);

    Set<EmployerAddress> findAll();

    List<EmployerAddress> findAllByEmployerId(Integer employerId);

    void saveOrUpdate(EmployerAddress employerAddress);

    void delete(Integer id);
}
