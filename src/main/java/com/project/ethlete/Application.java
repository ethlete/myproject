package com.project.ethlete;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

@SpringBootApplication
@EnableAspectJAutoProxy
@EnableCaching
public class Application {
	public static void main(String[] args) throws Exception {
//		System.setProperty("spring.devtools.restart.enabled", "false");
		SpringApplication.run(Application.class, args);
	}

}
