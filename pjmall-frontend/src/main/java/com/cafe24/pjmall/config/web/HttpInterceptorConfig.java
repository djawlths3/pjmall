package com.cafe24.pjmall.config.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import com.cafe24.pjmall.security.AuthInterceptor;

@Configuration
public class HttpInterceptorConfig extends WebMvcConfigurerAdapter {


	@Bean
	AuthInterceptor authInterceptor() {
         return new AuthInterceptor();
    }
	

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		
		registry.addInterceptor(authInterceptor())
				.addPathPatterns("/**")
				.excludePathPatterns("/assets/**")
				.excludePathPatterns("/user/logout")
				.excludePathPatterns("/user/auth");
	}
	
}
