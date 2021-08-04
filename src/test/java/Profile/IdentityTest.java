package Profile;

import org.academiadecodigo.codezillas.persistence.model.identity.Identity;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class IdentityTest {

    private Identity identity;

    @Before
    public void setUp() {
        this.identity = new Identity();
    }

    @Test
    public void testFirstNameSetter() {

        //Execute
        identity.setFirstName("Horacio");
        String result = identity.getFirstName();

        //Verify
        Assert.assertEquals("Horacio", result);
    }

    @Test
    public void testLastNameSetter() {

        //Execute
        identity.setLastName("Correia");
        String result = identity.getLastName();

        //Verify
        Assert.assertEquals("Correia", result);
    }

    @Test
    public void testEmailSetter() {

        //Execute
        identity.setEmail("rmcorre@gmail.com");
        String result = identity.getEmail();

        //Verify
        Assert.assertEquals("rmcorre@gmail.com", result);
    }

    @Test
    public void testPhoneSetter() {

        //Execute
        identity.setPhone("91 111 1111");
        String result = identity.getPhone();

        //Verify
        Assert.assertEquals("91 111 1111", result);
    }

    @Test
    public void testActiveSetter() {

        //Execute
        identity.setActive(true);
        Boolean result = identity.getActive();

        //Verify
        Assert.assertEquals(true, result);
    }
}
