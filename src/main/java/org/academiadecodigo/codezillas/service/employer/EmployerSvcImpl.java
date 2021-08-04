package org.academiadecodigo.codezillas.service.employer;

import org.academiadecodigo.codezillas.persistence.dao.employer.EmployerDAO;
import org.academiadecodigo.codezillas.persistence.model.employer.Employer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class EmployerSvcImpl implements EmployerSvc {

    private final EmployerDAO employerDAO;

    @Autowired
    public EmployerSvcImpl(EmployerDAO employerDAO) {
        this.employerDAO = employerDAO;
    }

    @Override
    @Transactional
    public Employer find(Integer employerId) {
        return employerDAO.find(employerId);
    }

    @Override
    @Transactional
    public Set<Employer> findAll() {
        List<Employer> employerList = employerDAO.findAll();
        return new HashSet<>(employerList);
    }

    @Override
    @Transactional
    public void saveOrUpdate(Employer employer) {
        employerDAO.saveOrUpdate(employer);
    }

    @Override
    @Transactional
    public void delete(Integer id) {
        employerDAO.delete(id);
    }
}
