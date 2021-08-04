package org.academiadecodigo.codezillas.tests.databaseTests;

public class EmployerAddressTest {

//    public static void main(String[] args) {
//
//        JpaBootstrap jpaBootstrap = new JpaBootstrap();
//        EntityManagerFactory emf = jpaBootstrap.start();
//        EntityManager em = emf.createEntityManager();
//
//
//        try {
//            em.getTransaction().begin();
//
//            Employer emp1 = new Employer(
//                    "Tesco",
//                    "Customer Service Representative",
//                    "May 2016",
//                    "Oct 2017",
//                    "Responsible for assisting customers in addition to:"
//            );
//
//            em.persist(emp1);
//
//            // Get employer from database
//            int theId = 1;
//            Employer tesco = em.find(Employer.class, theId);
//
//            // Create some home addresses
//            EmployerAddress tescoMacclesfield = new EmployerAddress(
//                    true,
//                    null,
//                    "Exchange St",
//                    "Macclesfield",
//                    "Cheshire",
//                    null,
//                    "UK",
//                    "SK11 6UZ"
//            );
//
//
//            // add employer addresses to identity
//            tesco.addEmployerAddress(tescoMacclesfield);
//
//            // save employer addresses
//            em.persist(tescoMacclesfield);
//
//            em.getTransaction().commit();
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            em.close();
//            jpaBootstrap.stop();
//        }
//    }
}
