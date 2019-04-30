package com.mz.GeneradorSGA;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import com.mz.GeneradorSGA.business.GeneradorSgaBusinessConfig;
import com.mz.GeneradorSGA.web.GeneradorSGAWebConfig;

public class GeneradorSGAWebApplicationInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class<?>[] { GeneradorSgaBusinessConfig.class };
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class<?>[] { GeneradorSGAWebConfig.class };
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] { "/" };
	}
}
