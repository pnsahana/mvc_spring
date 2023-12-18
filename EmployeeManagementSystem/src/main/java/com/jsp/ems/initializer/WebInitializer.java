package com.jsp.ems.initializer;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import com.jsp.ems.configuration.ConfigClass;

public class WebInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	
	protected Class<?>[] getRootConfigClasses() {

		return null;
	}

	
	protected Class<?>[] getServletConfigClasses() {

		return new Class[] {ConfigClass.class};
	}

	
	protected String[] getServletMappings() {

		return new String[] {"/"};
	}

}
