package org.academiadecodigo.codezillas.service.industry;

import org.academiadecodigo.codezillas.persistence.dao.industry.IndustryDAO;
import org.academiadecodigo.codezillas.persistence.model.industry.Industry;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class IndustrySvcImpl implements IndustrySvc {

    private final IndustryDAO industryDAO;

    @Autowired
    public IndustrySvcImpl(IndustryDAO industryDAO) {
        this.industryDAO = industryDAO;
    }

    @Override
    @Transactional
    public List<Industry> getAll() {
        return industryDAO.findAll();
    }
}
