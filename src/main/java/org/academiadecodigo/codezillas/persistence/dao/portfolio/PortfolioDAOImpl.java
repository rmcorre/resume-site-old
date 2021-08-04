package org.academiadecodigo.codezillas.persistence.dao.portfolio;

import org.academiadecodigo.codezillas.persistence.dao.GenericDAO;
import org.academiadecodigo.codezillas.persistence.model.Portfolio;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PortfolioDAOImpl extends GenericDAO<Portfolio> implements PortfolioDAO {

    public PortfolioDAOImpl() {
        super(Portfolio.class);
    }

    @Override
    public List<Portfolio> findByProfileId(Integer id) {
//        Session session = sessionFactory.getCurrentSession();
//        Query<Portfolio> query = session.createQuery("from Portfolio where identity.id=:id", Portfolio.class);
//        query.setParameter("id", id);
//        return query.getResultList();

        return null;
    }

    @Override
    public Portfolio findActive() {
        return em.createQuery(
                "from " + modelType.getSimpleName() +
                        " where active = true", modelType
        )
        .getSingleResult();
    }

    @Override
    public List<Portfolio> findInactive() {
        return em.createQuery(
                "from " + modelType.getSimpleName() +
                        " where active = false", modelType
        )
        .getResultList();
    }
}
