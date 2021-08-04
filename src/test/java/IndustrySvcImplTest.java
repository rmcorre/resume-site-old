import org.academiadecodigo.codezillas.persistence.dao.industry.IndustryDAO;
import org.academiadecodigo.codezillas.persistence.model.industry.Industry;
import org.academiadecodigo.codezillas.service.industry.IndustrySvcImpl;
import org.junit.Before;
import org.junit.Test;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.*;

public class IndustrySvcImplTest {

    private IndustrySvcImpl industrySvc;
    private IndustryDAO industryDAO;

    @Before
    public void setUp() {
        industryDAO = mock(IndustryDAO.class);
        industrySvc = new IndustrySvcImpl(industryDAO);
    }

    @Test
    public void testGetAll() {

        //setup
        List<Industry> fakeIndustryList = new ArrayList<>();

        Industry industry1 = new Industry();
        industry1.setId(1);
        industry1.setDomain("Software Development");

        Industry industry2 = new Industry();
        industry2.setId(2);
        industry2.setDomain("Warehousing");

        fakeIndustryList.add(industry1);
        fakeIndustryList.add(industry2);
        when(industryDAO.findAll()).thenReturn(fakeIndustryList);

        //execute
        List<Industry> industryList = industrySvc.getAll();

        //verify
        assertEquals(fakeIndustryList, industryList);
    }


}
