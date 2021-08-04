package org.academiadecodigo.codezillas.service.identity;

import org.academiadecodigo.codezillas.persistence.model.identity.Identity;

import java.util.List;
import java.util.Set;

public interface IdentitySvc {

    Identity find(Integer id);

    Set<Identity> findAll();

    Identity saveOrUpdate(Identity identity);

    void delete(Integer id);

    Identity getActive();
}
