package com.spring.biz.common;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;



@Service
@Aspect
public class AfterAdvice {
	
	
	
	
	@After("PointcutCommon.allPointcut()")
	public void afterLog() {
		System.out.println("[후처리-AfterAdvice.afterLog] 실행 후 로그(무조건");
	}
}
