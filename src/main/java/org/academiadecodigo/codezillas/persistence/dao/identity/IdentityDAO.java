package org.academiadecodigo.codezillas.persistence.dao.identity;

import org.academiadecodigo.codezillas.persistence.dao.DAO;
import org.academiadecodigo.codezillas.persistence.model.identity.Identity;

public interface IdentityDAO extends DAO<Identity> {

    Identity getActiveProfile();

}
