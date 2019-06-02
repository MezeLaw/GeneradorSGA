package com.mz.GeneradorSGA.web.controllers;

import java.util.ArrayList;
import java.util.Date;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class InicioController {

	protected final Log logger = LogFactory.getLog(getClass());

	@RequestMapping(value = "/")
	public ModelAndView handleRequest() {
		String now = (new Date()).toString();
		logger.info("Returning Inicio view with " + now);
		return new ModelAndView("inicio", "now", now);
	}

	@RequestMapping(value = "/noticias")
	public ModelAndView mostrarNoticias() {
		String now = (new Date()).toString();
		logger.info("Returning Noticias view with " + now);
		return new ModelAndView("noticias", "now", now);
	}

	@RequestMapping(value = "/generarRotulo")
	public ModelAndView generarRotulo(Model model) {
		String now = (new Date()).toString();
		logger.info("Returning GenerarRotulo view with " + now);
		ArrayList<String> lista = new ArrayList<String>();
		lista.add("Monoxido de Carbono");
		lista.add("Butano");
		lista.add("Oxigeno");
		lista.add("Carburo");
		lista.add("Metanol");
		
		model.addAttribute("codigosElementos", lista);
		return new ModelAndView("generadorSGA", "now", now);
	}

}