package com.cafe24.pjmall.config;


import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.context.annotation.Import;

import com.cafe24.pjmall.config.web.MVCConfig;



@Configuration
@EnableAspectJAutoProxy
@ComponentScan({"com.cafe24.pjmall.controller", "com.cafe24.pjmall.exception"})
@Import({ MVCConfig.class })
public class WebConfig {
}