package com.cafe24.pjmall.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.context.annotation.Import;

import com.cafe24.pjmall.config.app.AppSecurityConfig;


@Configuration
@EnableAspectJAutoProxy
@ComponentScan({"com.cafe24.pjmall.security", "com.cafe24.pjmall.service",  "com.cafe24.pjmall.repository"})
@Import({AppSecurityConfig.class })
public class AppConfig {
}