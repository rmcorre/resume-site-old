package org.academiadecodigo.codezillas.service.portfolio;

import org.academiadecodigo.codezillas.persistence.dao.portfolio.PortfolioDAO;
import org.academiadecodigo.codezillas.persistence.model.Portfolio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class PortfolioSvcImpl implements PortfolioSvc {

    private final PortfolioDAO portfolioDAO;

    @Autowired
    public PortfolioSvcImpl(PortfolioDAO portfolioDAO) {
        this.portfolioDAO = portfolioDAO;
    }

    @Override
    public Portfolio find(Integer id) {
        return portfolioDAO.find(id);
    }

    @Override
    public Set<Portfolio> findAll() {
        List<Portfolio> portfolioList = portfolioDAO.findAll();
        return new HashSet<>(portfolioList);
    }

    @Override
    public Portfolio findActive() {
        return portfolioDAO.findActive();
    }

    @Override
    public List<Portfolio> findInactive() {
        return portfolioDAO.findInactive();
    }

    @Override
    @Transactional
    public List<Portfolio> findByProfileId(Integer id) {
        return portfolioDAO.findByProfileId(id);
    }

    @Override
    @Transactional
    public Portfolio saveOrUpdate(Portfolio portfolio) {
        return portfolioDAO.saveOrUpdate(portfolio);
    }
}
