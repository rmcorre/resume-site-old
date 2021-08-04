package org.academiadecodigo.codezillas.service.portfolio;

import org.academiadecodigo.codezillas.persistence.model.Portfolio;

import java.util.List;
import java.util.Set;

public interface PortfolioSvc {

    Portfolio find(Integer id);

    Set<Portfolio> findAll();

    Portfolio findActive();

    List<Portfolio> findInactive();

    List<Portfolio> findByProfileId(Integer id);

    Portfolio saveOrUpdate(Portfolio portfolio);
}
