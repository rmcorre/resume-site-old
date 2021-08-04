package org.academiadecodigo.codezillas.persistence.dao.identity;

import org.academiadecodigo.codezillas.persistence.dao.GenericDAO;
import org.academiadecodigo.codezillas.persistence.model.identity.Identity;
import org.springframework.stereotype.Repository;

@Repository
public class IdentityDAOImpl extends GenericDAO<Identity> implements IdentityDAO {

    public IdentityDAOImpl() {
        super(Identity.class);
    }

    @Override
    public Identity getActiveProfile() {

        return em.createQuery(
                "from " + modelType.getSimpleName() +
                        " where active = true", modelType
        )
        .getSingleResult();
    }

}

