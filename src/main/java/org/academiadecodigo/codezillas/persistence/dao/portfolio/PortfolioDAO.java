package org.academiadecodigo.codezillas.persistence.dao.portfolio;

import org.academiadecodigo.codezillas.persistence.dao.DAO;
import org.academiadecodigo.codezillas.persistence.model.Portfolio;

import java.util.List;

public interface PortfolioDAO extends DAO<Portfolio> {

    List<Portfolio> findByProfileId(Integer id);

    Portfolio findActive();

    List<Portfolio> findInactive();
}
