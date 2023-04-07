package com.web.study;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class StudyApplication {

	public static void main(String[] args) {
		SpringApplication.run(StudyApplication.class, args);
		//IocAndDiTest();
	}
	
	
//	public static void IocAndDiTest() {
//		//Inversion of Control
//		IocTest iocTest = new IocTest(new TestB());
//		iocTest.run();
//	}

}
