package com.web.study.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.web.study.IocAndDi.TestC;



// Bean을 생성해주는 어노테이션
// 라이브러리를 들고와서 사용할 경우, 생성자 생성이 반드시 필요할 때 사용
@Configuration
public class BeanConfig {
	
		@Bean
		public TestC testC() {
			return new TestC();
		}
}
