package com.project.ethlete.aspect;

import java.util.Arrays;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.project.ethlete.properties.MyConfig;

@Aspect
@Component
public class PerformanceLogger {
	
	private Log log = LogFactory.getLog(PerformanceLogger.class);
	
	@Autowired
	private MyConfig config;

	@Pointcut("execution(* com.project.ethlete.repository.*.*(..))")
	public void repositoryExcuteOperation() {}
	
	@Around("com.project.ethlete.aspect.PerformanceLogger.repositoryExcuteOperation()")
	public Object logRepositoryExcution(ProceedingJoinPoint pjp) throws Throwable {
		
        String method = pjp.getSignature().getDeclaringTypeName() + "." + pjp.getSignature().getName();
        String args = Arrays.toString(pjp.getArgs());

		long t1 = System.currentTimeMillis();

        Object retVal = pjp.proceed();
        
        if(config.getAudit().isEnabled())
        	log.info("Method: " + method + " proceed in: " + (System.currentTimeMillis() - t1) + "ms. " + "With args: " + args);

        return retVal;
		
	}
}
