package com.project.ethlete;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.context.annotation.EnableMBeanExport;
import org.springframework.jmx.support.MBeanServerFactoryBean;

@SpringBootApplication
@EnableAspectJAutoProxy
@EnableCaching
@EnableMBeanExport
public class Application {
	
	@Bean
	public MBeanServerFactoryBean mBeanServer() throws Exception {
		MBeanServerFactoryBean beanServerFactory = new MBeanServerFactoryBean();
		
		return beanServerFactory;
	}
	
	public static void main(String[] args) throws Exception {
//		System.setProperty("spring.devtools.restart.enabled", "false");
		SpringApplication.run(Application.class, args);
	}

}
