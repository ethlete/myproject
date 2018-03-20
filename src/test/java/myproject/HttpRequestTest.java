package myproject;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.boot.web.server.LocalServerPort;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.test.context.junit4.SpringRunner;

import com.project.ethlete.Application;

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
    	String params = "name=蒋亚晖&email=nuwanda.jiang@dbschenker.com";
    	Map<String, String> data = new HashMap<>();
    	
    	data.put("name", "蒋亚晖");
    	data.put("email", "nuwanda.jiang@dbschenker.com");

    	HttpHeaders headers = new HttpHeaders();
    	 headers.setContentType(MediaType.TEXT_PLAIN);
    	 HttpEntity<String> entity = new HttpEntity<String>(params, headers);

    	
    	assertThat(this.restTemplate.postForObject("http://localhost:" + port + "/demo/add", entity, String.class)).contains("Saved");
    }
}
