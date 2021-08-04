package org.academiadecodigo.codezillas.persistence.dao.employerAddress;

import org.academiadecodigo.codezillas.persistence.dao.GenericDAO;
import org.academiadecodigo.codezillas.persistence.model.employer.EmployerAddress;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class EmployerAddressDAOImpl extends GenericDAO<EmployerAddress> implements EmployerAddressDAO {

    public EmployerAddressDAOImpl() {
        super(EmployerAddress.class);
    }

    @Override
    public List<EmployerAddress> findAllByEmployerId(Integer employerId) {

        return em.createQuery(
                "from " + modelType.getSimpleName() +
                        " where employer.id= :param", modelType
                )
                .setParameter("param", employerId)
                .getResultList();
    }
}
