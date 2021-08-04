package org.academiadecodigo.codezillas.persistence.dao.education;

import org.academiadecodigo.codezillas.persistence.dao.GenericDAO;
import org.academiadecodigo.codezillas.persistence.model.education.Education;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class EducationDAOImpl extends GenericDAO<Education> implements EducationDAO {

    public EducationDAOImpl() {
        super(Education.class);
    }

//    @Override
//    public List<Education> getEducationList() {
//
//        return em.createQuery(
//                "from " + modelType.getSimpleName(), modelType).getResultList();
//
//    }
}
