package org.academiadecodigo.codezillas.persistence.dao;

import org.academiadecodigo.codezillas.persistence.model.Model;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;
import java.util.Set;

public abstract class GenericDAO<T extends Model> implements DAO<T> {

    @PersistenceContext
    protected EntityManager em;

    protected Class<T> modelType;

    /**
     * Initializes a new GenericDAO instance given a model type
     *
     * @param modelType the model type
     */
    public GenericDAO(Class<T> modelType) {
        this.modelType = modelType;
    }


    public void setEm(EntityManager em) {
        this.em = em;
    }

    /**
     * @see DAO#find(Integer)
     */
    @Override
    public T find(Integer id) {
        return em.find(modelType, id);
    }

    /**
     * @see DAO#findAll()
     */
    @Override
    public List<T> findAll() {

        CriteriaBuilder cB = em.getCriteriaBuilder();
        CriteriaQuery<T> criteriaQuery = cB.createQuery(modelType);
        Root<T> root = criteriaQuery.from(modelType);
        CriteriaQuery<T> select = criteriaQuery.select(root);
        TypedQuery<T> typedQuery = em.createQuery(select);
        return typedQuery.getResultList();
    }

//    @Override
//    public Integer save(T modelObject) {
//        Session session = sessionFactory.getCurrentSession();
//        return (Integer) session.save(modelObject);
//    }

    /**
     * @see DAO#saveOrUpdate(Model)
     */
    @Override
    public T saveOrUpdate(T modelObject) {
        return em.merge(modelObject);
    }

    /**
     * @see DAO#delete(Integer)
     */
    @Override
    public void delete(Integer id) {
        em.remove(em.find(modelType, id));
    }
}
