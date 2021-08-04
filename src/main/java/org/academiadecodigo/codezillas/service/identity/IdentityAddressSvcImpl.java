package org.academiadecodigo.codezillas.service.identity;

import org.academiadecodigo.codezillas.persistence.dao.identity.IdentityDAO;
import org.academiadecodigo.codezillas.persistence.dao.identity.IdentityAddressDAO;
import org.academiadecodigo.codezillas.persistence.model.identity.IdentityAddress;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class IdentityAddressSvcImpl implements IdentityAddressSvc {

    private final IdentityDAO identityDAO;
    private final IdentityAddressDAO identityAddressDAO;

    @Autowired
    public IdentityAddressSvcImpl(IdentityDAO identityDAO, IdentityAddressDAO identityAddressDAO) {
        this.identityDAO = identityDAO;
        this.identityAddressDAO = identityAddressDAO;
    }

    @Override
    @Transactional
    public IdentityAddress find(Integer id) {
        return identityAddressDAO.find(id);
    }

    @Override
    @Transactional
    public Set<IdentityAddress> findAll() {
        List<IdentityAddress> identityAddressList = identityAddressDAO.findAll();
        return new HashSet<>(identityAddressList);
    }

    @Override
    public IdentityAddress findByProfileId(Integer profileId) {
        return identityAddressDAO.findByProfileId(profileId);
    }

    @Override
    @Transactional
    public List<IdentityAddress> findAllByProfileId(Integer profileId) {
        return identityAddressDAO.findAllByProfileId(profileId);
    }

    @Override
    public IdentityAddress findByCurrent() {
        return identityAddressDAO.findByCurrent();
    }

    @Override
    @Transactional
    public void saveOrUpdate(IdentityAddress identityAddress) {
        identityAddressDAO.saveOrUpdate(identityAddress);
    }

    @Override
    @Transactional
    public void remove(Integer id) {
        identityAddressDAO.delete(id);
    }
}
