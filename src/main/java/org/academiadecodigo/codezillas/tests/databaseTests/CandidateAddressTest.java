package org.academiadecodigo.codezillas.tests.databaseTests;

public class CandidateAddressTest {

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
//            Candidate c1 = new Candidate(
//                    "Horacio",
//                    "Correia",
//                    "Junior Fullstack Developer",
//                    "My identity summay",
//                    "rmcorre@gmail.com",
//                    "91 421 3861");
//
//            em.persist(c1);
//
//            // Get identity from database
//            int theId = 1;
//            Candidate horacio = em.find(Candidate.class, theId);
//
//            // Create some home addresses
//            CandidateAddress saoMiguel = new CandidateAddress(
//                    true,
//                    "19",
//                    "Rua Eng Hernani Santos",
//                    "Vila de Nordeste",
//                    "Sao Miguel",
//                    "Azores",
//                    "Portugal",
//                    "9630-202"
//            );
//
//            CandidateAddress edmonton = new CandidateAddress(
//                    false,
//                    null,
//                    "9436-153rd Street",
//                    "Edmonton",
//                    "Alberta",
//                    null,
//                    "Canada",
//                    "T5R-1R3"
//            );
//
//            CandidateAddress macclesfield = new CandidateAddress(
//                    false,
//                    "15",
//                    "Davies Street",
//                    "Macclesfield",
//                    "Cheshire",
//                    null,
//                    "UK",
//                    "Some-code"
//            );
//
//            // add home addresses to identity
//            horacio.add(saoMiguel);
//            horacio.add(edmonton);
//            horacio.add(macclesfield);
//
//            // save home addresses
//            em.persist(saoMiguel);
//            em.persist(edmonton);
//            em.persist(macclesfield);
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
