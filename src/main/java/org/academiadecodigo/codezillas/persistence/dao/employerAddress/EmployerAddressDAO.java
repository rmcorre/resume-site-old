package org.academiadecodigo.codezillas.persistence.dao.employerAddress;

import org.academiadecodigo.codezillas.persistence.dao.DAO;
import org.academiadecodigo.codezillas.persistence.model.employer.EmployerAddress;

import java.util.List;

public interface EmployerAddressDAO extends DAO<EmployerAddress> {

    List<EmployerAddress> findAllByEmployerId(Integer employerId);
}
