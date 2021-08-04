package org.academiadecodigo.codezillas.persistence.dao.employer;

import org.academiadecodigo.codezillas.persistence.dao.GenericDAO;
import org.academiadecodigo.codezillas.persistence.model.employer.Employer;
import org.springframework.stereotype.Repository;

@Repository
public class EmployerDAOImpl extends GenericDAO<Employer> implements EmployerDAO {

    public EmployerDAOImpl() {
        super(Employer.class);
    }
}
