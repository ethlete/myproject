package com.project.ethlete.properties;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Component
@ConfigurationProperties(prefix="my.config")
public class MyConfig {
	
	private Audit audit = new Audit();

	public Audit getAudit() {
		return audit;
	}
	
	
}
