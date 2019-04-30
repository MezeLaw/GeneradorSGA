package com.mz.GeneradorSGA.web;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@EnableWebMvc
public class MvcConfig implements WebMvcConfigurer {
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");

		registry.addResourceHandler("/css/**").addResourceLocations("/css/");

		registry.addResourceHandler("/img/**").addResourceLocations("/img/");

		registry.addResourceHandler("/js/**").addResourceLocations("/js/");

		System.out.println(">>>>>>>>> Configurado el /resources/ <<<<<<<<<<<<");
	}
}