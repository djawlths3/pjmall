package com.cafe24.shopping.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.cafe24.config.web.FileuploadConfig;
import com.cafe24.config.web.MVCConfig;
import com.cafe24.config.web.MessageConfig;
import com.cafe24.config.web.SwaggerConfig;

@Configuration
@EnableWebMvc
@ComponentScan({"com.cafe24.shopping.controller"})
@Import({MVCConfig.class, FileuploadConfig.class, MessageConfig.class, SwaggerConfig.class})
public class WebConfig{
	
}
