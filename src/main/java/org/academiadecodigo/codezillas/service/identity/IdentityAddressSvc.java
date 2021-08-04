package org.academiadecodigo.codezillas.service.identity;

import org.academiadecodigo.codezillas.persistence.model.identity.IdentityAddress;

import java.util.List;
import java.util.Set;

public interface IdentityAddressSvc {

    IdentityAddress find(Integer id);

    Set<IdentityAddress> findAll();

    IdentityAddress findByProfileId(Integer profileId);

    List<IdentityAddress> findAllByProfileId(Integer profileId);

    IdentityAddress findByCurrent();

    void saveOrUpdate(IdentityAddress identityAddress);

    void remove(Integer id);
}
