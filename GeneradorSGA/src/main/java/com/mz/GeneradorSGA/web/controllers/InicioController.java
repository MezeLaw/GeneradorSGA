package com.mz.GeneradorSGA.web.controllers;

import java.util.ArrayList;
import java.util.Date;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mz.GeneradorSGA.modelos.Elemento;

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
		ArrayList<Elemento> lista = new ArrayList<Elemento>();
		
		Elemento e1 = new Elemento("DiluyenteIsoprint","Diluyente Isoprint");
		Elemento e2 = new Elemento("Metanol","Metanol");
		Elemento e3 = new Elemento("Oxigeno","Oxigeno");
		Elemento e4 = new Elemento("Nitrogeno","Nitrogeno");
		
		lista.add(e1);
		lista.add(e2);
		lista.add(e3);
		lista.add(e4);
		
		model.addAttribute("codigosElementos", lista);
		return new ModelAndView("generadorSGA", "now", now);
	}

}