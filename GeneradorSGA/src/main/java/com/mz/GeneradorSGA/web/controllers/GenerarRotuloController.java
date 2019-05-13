package com.mz.GeneradorSGA.web.controllers;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/Etiquetas")
public class GenerarRotuloController {

	@RequestMapping(value = "/generarRotulo", method = RequestMethod.POST)
	public String generarRotulo(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("XD");
		return "1";
	}


}
	

