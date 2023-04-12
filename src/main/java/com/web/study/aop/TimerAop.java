package com.web.study.aop;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
import org.springframework.util.StopWatch;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Aspect
@Component
public class TimerAop {
	

	
	
	// 접근지정자 public은 생략 가능 !
	@Pointcut("execution( * com.web.study..*.*(..))")
	private void pointCut() {}
	
	@Pointcut("@annotation(com.web.study.aop.annotation.TimerAspect)")
	private void annotationPointCut() {}
	
	
	@Around("annotationPointCut()")
	public Object around(ProceedingJoinPoint joinPoint) throws Throwable {
		
		
		StopWatch stopWatch = new StopWatch();
		stopWatch.start();
		
		
		//전처리 
		Object logic = joinPoint.proceed(); //proceed = 메서드 호출
		System.out.println(logic);
		//후처리
		
		stopWatch.stop();
		log.info("[ Time ] >>> {}.{}: {}초",
				joinPoint.getSignature().getDeclaringTypeName(),
				joinPoint.getSignature().getName(),
				stopWatch.getTotalTimeSeconds());
		return logic;
	}
}
