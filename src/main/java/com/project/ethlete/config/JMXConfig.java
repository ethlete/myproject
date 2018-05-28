package com.project.ethlete.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

@Configuration
@ImportResource({"classpath:config/spring-jmx.xml"})
public class JMXConfig {

}
