package com.project.ethlete.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class PerformanceLogger {
	
	@Pointcut("execution(* com.project.ethlete.repository.*.*(..))")
	public void repositoryExcuteOperation() {}
	
	@Around("com.project.ethlete.aspect.PerformanceLogger.repositoryExcuteOperation()")
	public Object logRepositoryExcution(ProceedingJoinPoint pjp) throws Throwable {
		
		// start watch
		System.out.println("start watch");
		long t1 = System.currentTimeMillis();
        Object retVal = pjp.proceed();
        
		System.out.println("method proceed in: " + (System.currentTimeMillis() - t1) + "ms");

        // stop watch
		System.out.println("stop watch");
        return retVal;
		
	}
	
	

}
