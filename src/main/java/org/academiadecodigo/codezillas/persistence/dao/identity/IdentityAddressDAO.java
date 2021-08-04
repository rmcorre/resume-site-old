package org.academiadecodigo.codezillas.persistence.dao.identity;

import org.academiadecodigo.codezillas.persistence.dao.DAO;
import org.academiadecodigo.codezillas.persistence.model.identity.IdentityAddress;

import java.util.List;

public interface IdentityAddressDAO extends DAO<IdentityAddress> {

    IdentityAddress findByProfileId(Integer profileId);

    List<IdentityAddress> findAllByProfileId(Integer candidateId);

    IdentityAddress findByCurrent();
}
