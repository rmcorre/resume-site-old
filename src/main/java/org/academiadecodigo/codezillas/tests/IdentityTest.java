package org.academiadecodigo.codezillas.tests;

import org.academiadecodigo.codezillas.persistence.model.identity.Identity;
import org.academiadecodigo.codezillas.persistence.model.identity.IdentityAddress;

public class IdentityTest {

    public static void main(String[] args) {

        IdentityAddress saoMiguel = new org.academiadecodigo.codezillas.persistence.model.identity.IdentityAddress();
        saoMiguel.setHouseAptSuite("19");
        saoMiguel.setAddress("Rua Eng. Hernani Santos");
        saoMiguel.setParishTownCity("Vila De Nordeste");
        saoMiguel.setCountyStateProvince("Sao Miguel");
        saoMiguel.setCountryRegion("Azores");
        saoMiguel.setCountryRegion("Portugal");

        Identity me = new Identity();
        me.setFirstName("Horacio");
        me.setLastName("Correia");
        me.setEmail("rmcorre@gmail.com");
        me.setPhone("91 421 3861");

    }
}
