package org.academiadecodigo.codezillas.persistence.dao.identity;

import org.academiadecodigo.codezillas.persistence.dao.GenericDAO;
import org.academiadecodigo.codezillas.persistence.model.identity.IdentityAddress;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class IdentityAddressDAOImpl extends GenericDAO<IdentityAddress> implements IdentityAddressDAO {

    // in Darby's tutorial he uses field-based dependency injection but
    // there are drawbacks to using field-based dependency injection
    // so I'm using Constructor-based dependency injection as recommended for required dependencies
    // see this post: https://blog.marcnuri.com/field-injection-is-not-recommended/
    @Autowired
    public IdentityAddressDAOImpl() {
        super(IdentityAddress.class);
    }

    @Override
    public IdentityAddress findByProfileId(Integer profileId) {
        return em.createQuery(
                "from " + modelType.getSimpleName() +
                        " where identity.id= :param", modelType
        )
        .setParameter("param", profileId)
        .getSingleResult();
    }

    @Override
    public List<IdentityAddress> findAllByProfileId(Integer profileId) {

        return em.createQuery(
                "from " + modelType.getSimpleName() +
                        " where identity.id= :param", modelType
        )
        .setParameter("param", profileId)
        .getResultList();
    }

    @Override
    public IdentityAddress findByCurrent() {

        return em.createQuery(
                "from " + modelType.getSimpleName() +
                        " where current = true", modelType
        )
        .getSingleResult();
    }

    public void update() {

    }

}
