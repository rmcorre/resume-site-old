package org.academiadecodigo.codezillas.tests.databaseTests;

public class EmployerDutyTest {

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
//            // Create some duties
//            EmployerDuty employerDuty1 = new EmployerDuty("Merchandising",
//                    "Stocking, organizing, and  labelling shelves"
//            );
//
//            EmployerDuty employerDuty2 = new EmployerDuty("Product Quality and Assurance",
//                    "Checking product for expiration dates"
//            );
//
//            EmployerDuty employerDuty3 = new EmployerDuty("Product Quality and Assurance",
//                    "Reducing prices on products due to expire"
//            );
//
//            EmployerDuty employerDuty4 = new EmployerDuty("Checkout",
//                    "Checkout duties when required"
//            );
//
//            // add duties to identity
//            tesco.addDuty(employerDuty1);
//            tesco.addDuty(employerDuty2);
//            tesco.addDuty(employerDuty3);
//            tesco.addDuty(employerDuty4);
//
//            // save duties to database
//            em.persist(employerDuty1);
//            em.persist(employerDuty2);
//            em.persist(employerDuty3);
//            em.persist(employerDuty4);
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
