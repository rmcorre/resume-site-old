package org.academiadecodigo.codezillas.tests.databaseTests;

import org.academiadecodigo.codezillas.persistence.model.identity.Identity;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.stereotype.Component;

@Component
public class ManyToOne {


    public static void main(String[] args) {

        ApplicationContext context = new FileSystemXmlApplicationContext("C:\\Users\\rmcor\\Desktop\\jpaPortfolioSite\\src\\main\\webapp\\WEB-INF\\spring\\spring-config.xml");
        SessionFactory sessionFactory = (SessionFactory) context.getBean("sessionFactory");

        Identity identity1 = new Identity();
        identity1.setFirstName("Fabio");
        identity1.setLastName("Barbosa");
        identity1.setEmail("fabio@gmail.com");
        identity1.setPhone("9999999999");
        identity1.setActive(false);

        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(identity1);


    }
}
