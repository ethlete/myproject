package myproject;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.http.HttpEntity;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.RequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import com.project.ethlete.Application;
import com.project.ethlete.domain.User;

@AutoConfigureMockMvc
@RunWith(SpringRunner.class)
@SpringBootTest(classes=Application.class)
public class MockMVCTest {
	
	@Autowired
    private MockMvc mockMvc;
	
	@Test
	public void addUser() throws Exception {
		User user = new User();
		   
		user.setFirstName("蒋亚晖");
		user.setEmail("nuwanda.jiang@dbschenker.com");
        HttpEntity<User> formEntity = new HttpEntity<User>(user);

        String uri = "/demo/add";
		mockMvc.perform(MockMvcRequestBuilders.post(uri, formEntity)).andExpect(status().isOk());
		
	}

}
