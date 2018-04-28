package myproject;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.project.ethlete.domain.UserName;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.http.HttpEntity;
import org.springframework.http.MediaType;
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

	@Autowired
	ObjectMapper objectMapper;
	
	@Test
	public void addUser() throws Exception {
		User user = new User();

		UserName userName = new UserName();
		userName.setFirstName("蒋亚晖");
		user.setName(userName);

        String uri = "/user/add";
//		mockMvc.perform(post(uri, formEntity)).andExpect(status().isOk());


		mockMvc.perform(post(uri).contentType(MediaType.APPLICATION_JSON).content(objectMapper.writeValueAsBytes(user))).andExpect(status().isOk());
		
	}

}
