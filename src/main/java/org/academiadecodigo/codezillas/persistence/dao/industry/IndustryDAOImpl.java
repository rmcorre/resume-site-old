package org.academiadecodigo.codezillas.persistence.dao.industry;

import org.academiadecodigo.codezillas.persistence.dao.GenericDAO;
import org.academiadecodigo.codezillas.persistence.model.industry.Industry;
import org.springframework.stereotype.Repository;

@Repository
public class IndustryDAOImpl extends GenericDAO<Industry> implements IndustryDAO {

    public IndustryDAOImpl() {
        super(Industry.class);
    }
}
