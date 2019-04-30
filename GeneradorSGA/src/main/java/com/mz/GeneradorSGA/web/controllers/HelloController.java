package com.mz.GeneradorSGA.web.controllers;

import java.util.Date;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {

	protected final Log logger = LogFactory.getLog(getClass());

	@RequestMapping(value = "/inicio")
	public ModelAndView handleRequest() {
		String now = (new Date()).toString();
		logger.info("Returning hello view with " + now);
		return new ModelAndView("inicio", "now", now);
	}

	@RequestMapping(value = "/noticias")
	public ModelAndView mostrarNoticias() {
		String now = (new Date()).toString();
		logger.info("Returning hello view with " + now);
		return new ModelAndView("noticias", "now", now);
	}

	@RequestMapping(value = "/generarRotulo")
	public ModelAndView generarRotulo() {
		String now = (new Date()).toString();
		logger.info("Returning hello view with " + now);
		return new ModelAndView("generadorSGA", "now", now);
	}

}