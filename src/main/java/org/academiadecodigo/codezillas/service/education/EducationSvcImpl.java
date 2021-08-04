package org.academiadecodigo.codezillas.service.education;

import org.academiadecodigo.codezillas.persistence.dao.education.EducationDAO;
import org.academiadecodigo.codezillas.persistence.model.education.Education;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class EducationSvcImpl implements EducationSvc {

    private final EducationDAO educationDAO;

    public EducationSvcImpl(EducationDAO educationDAO) {
        this.educationDAO = educationDAO;
    }


    @Override
    @Transactional
    public Education find(Integer id) {
        return educationDAO.find(id);
    }

    @Override
    @Transactional
    public Set<Education> findAll() {
        List<Education> educationList = educationDAO.findAll();
        return new HashSet<>(educationList);
    }

    @Override
    @Transactional
    public Education saveOrUpdate(Education education) {
        return educationDAO.saveOrUpdate(education);
    }
}
