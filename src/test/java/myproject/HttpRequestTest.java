package myproject;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.boot.web.server.LocalServerPort;
import org.springframework.http.HttpEntity;
import org.springframework.test.context.junit4.SpringRunner;

import com.project.ethlete.Application;
import com.project.ethlete.domain.User;
import com.project.ethlete.domain.UserName;

@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT, classes=Application.class)
public class HttpRequestTest {
	@LocalServerPort
    private int port;

    @Autowired
    private TestRestTemplate restTemplate;

    @Test
    public void greetingShouldReturnDefaultMessage() throws Exception {
        assertThat(this.restTemplate.getForObject("http://localhost:" + port + "/",
                String.class)).contains("Hello World");
    }

    @Test
    public void addUserShouldReturnSavedMessage() throws Exception {
		User user = new User();
		UserName name = new UserName();
		name.setFirstName("蒋亚晖");
		user.setEmail("nuwanda.jiang@dbschenker.com");
        HttpEntity<User> formEntity = new HttpEntity<User>(user);

        String url = "http://localhost:" + port + "/demo/add";
        String result = restTemplate.postForObject(url, formEntity, String.class);
        assertThat(result).contains("Saved");

    }
}
