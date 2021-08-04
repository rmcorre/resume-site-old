package Profile;

import org.academiadecodigo.codezillas.persistence.model.identity.Identity;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class IdentityAddressTest {

    private org.academiadecodigo.codezillas.persistence.model.identity.IdentityAddress identityAddress;

    //Setup
    @Before
    public void setUp() {
        this.identityAddress = new org.academiadecodigo.codezillas.persistence.model.identity.IdentityAddress();
    }

    @Test
    public void testBuildingNumberSetter() {

        //Execute
        identityAddress.setHouseAptSuite("19");
        String result = identityAddress.getHouseAptSuite();

        //Verify
        Assert.assertEquals("19", result);
    }

    @Test
    public void testStreetSetter() {

        //Execute
        identityAddress.setAddress("Rua Eng Hernani Santos");
        String result = identityAddress.getAddress();

        //Verify
        Assert.assertEquals("Rua Eng Hernani Santos", result);
    }

    @Test
    public void testParishTownCitySetter() {

        //Execute
        identityAddress.setParishTownCity("Vila de Nordeste");
        String result = identityAddress.getParishTownCity();

        //Verify
        Assert.assertEquals("Vila de Nordeste", result);
    }

    @Test
    public void testStateProvinceSetter() {

        //Execute
        identityAddress.setCountyStateProvince("Nordeste");
        String result = identityAddress.getCountyStateProvince();

        //Verify
        Assert.assertEquals("Nordeste", result);
    }

    @Test
    public void testCountrySetter() {

        //Execute
        identityAddress.setCountryRegion("Portugal");
        String result = identityAddress.getCountryRegion();

        //Verify
        Assert.assertEquals("Portugal", result);
    }

    @Test
    public void testPostalCodeSetter() {

        //Execute
        identityAddress.setPostalCode("9630-202");
        String result = identityAddress.getPostalCode();

        //Verify
        Assert.assertEquals("9630-202", result);
    }

    @Test
    public void testCurrentSetter() {

        //Execute
        identityAddress.setCurrent(true);
        Boolean result = identityAddress.getCurrent();

        //Verify
        Assert.assertEquals(true, result);
    }

    @Test
    public void testProfileSetter() {

        //Setup
        Identity identity = new Identity();
        identity.setId(1);

        //Execute
        identityAddress.setProfile(identity);
        Identity result = identityAddress.getProfile();

        //Verify
        Assert.assertEquals(identity, result);
    }
}
