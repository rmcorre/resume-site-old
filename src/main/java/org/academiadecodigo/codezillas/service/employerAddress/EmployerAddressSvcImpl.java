package org.academiadecodigo.codezillas.service.employerAddress;

import org.academiadecodigo.codezillas.persistence.dao.employerAddress.EmployerAddressDAO;
import org.academiadecodigo.codezillas.persistence.model.employer.EmployerAddress;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class EmployerAddressSvcImpl implements EmployerAddressSvc {

    private final EmployerAddressDAO employerAddressDAO;

    @Autowired
    public EmployerAddressSvcImpl(EmployerAddressDAO employerAddressDAO) {
        this.employerAddressDAO = employerAddressDAO;
    }

    @Override
    @Transactional
    public EmployerAddress find(Integer id) {
        return employerAddressDAO.find(id);
    }

    @Override
    @Transactional
    public Set<EmployerAddress> findAll() {
        List<EmployerAddress> employerAddressList = employerAddressDAO.findAll();
        return new HashSet<>(employerAddressList);
    }

    @Override
    @Transactional
    public List<EmployerAddress> findAllByEmployerId(Integer employerId) {
        return employerAddressDAO.findAllByEmployerId(employerId);
    }

    @Override
    @Transactional
    public void saveOrUpdate(EmployerAddress employerAddress) {
        employerAddressDAO.saveOrUpdate(employerAddress);
    }

    @Override
    @Transactional
    public void delete(Integer id) {
        employerAddressDAO.delete(id);
    }
}
