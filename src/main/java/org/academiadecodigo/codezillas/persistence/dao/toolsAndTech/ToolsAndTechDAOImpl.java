package org.academiadecodigo.codezillas.persistence.dao.toolsAndTech;

import org.academiadecodigo.codezillas.persistence.dao.GenericDAO;
import org.academiadecodigo.codezillas.persistence.dao.toolsAndTech.ToolsAndTechDAO;
import org.academiadecodigo.codezillas.persistence.model.ToolsAndTechnology;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.ParameterExpression;
import javax.persistence.criteria.Root;
import java.util.List;

@Repository
public class ToolsAndTechDAOImpl extends GenericDAO<ToolsAndTechnology> implements ToolsAndTechDAO {

//    private final CriteriaBuilder cb = em.getCriteriaBuilder();

    /**
     * @see GenericDAO#GenericDAO(Class)
     */
    public ToolsAndTechDAOImpl() {
        super(ToolsAndTechnology.class);
    }

    @Override
    public List<String> readBySkillCategory(String skillCategory) {

//        CriteriaQuery<ToolsAndTechnology> q = cb.createQuery(modelType);
//        Root<ToolsAndTechnology> toolsAndTech = q.from(modelType);
//        ParameterExpression<String> param = cb.parameter(String.class);
//        q.select(toolsAndTech);
//        q.where()
//
//        Session session = sessionFactory.getCurrentSession();
//
//        Query<String> query = session.createQuery(
//                "select skill from ToolsAndTechnology where skillCategory=:skillCategory", String.class);
//        query.setParameter("skillCategory", skillCategory);
//
//        System.out.println("****************** list: " + query.getResultList());
//
//        return query.getResultList();

        return null;
    }
}
