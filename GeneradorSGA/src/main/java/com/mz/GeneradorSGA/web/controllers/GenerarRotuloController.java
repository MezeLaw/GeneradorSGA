package com.mz.GeneradorSGA.web.controllers;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.sf.jasperreports.engine.JREmptyDataSource;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;

@Controller
@RequestMapping(value = "/Etiquetas")
public class GenerarRotuloController {


	protected final Log logger = LogFactory.getLog(getClass());

	@RequestMapping(value = "/generarPDF", method = RequestMethod.GET)
	public void generarPreFactura(HttpServletRequest request, HttpServletResponse response,
			@RequestParam String codigoChosen) {
		logger.info("Entraste a /Etiquetas/generarPDF");
		try {

			logger.info("Entraste al try de /Etiquetas/generarPDF");
			JasperReport report = JasperCompileManager.compileReport(
					request.getSession().getServletContext().getRealPath("/WEB-INF/views/reporte1.jrxml"));
			JasperPrint jasperPrint = JasperFillManager.fillReport(report, null, new JREmptyDataSource());

			response.setContentType("application/x-download");
			response.addHeader("Content-disposition", "attachment; filename=StatisticsrReport1.pdf");
			OutputStream out = response.getOutputStream();
			JasperExportManager.exportReportToPdfStream(jasperPrint, out);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(value = "/generarPDF2", method = RequestMethod.GET)
	public void generarPreFactura2(HttpServletRequest request, HttpServletResponse response) {
		logger.info("Entraste a /Etiquetas/generarPDF2");
		try {

			logger.info("Entraste al try de /Etiquetas/generarPDF2");
			JasperReport report = JasperCompileManager.compileReport(
					request.getSession().getServletContext().getRealPath("/WEB-INF/views/reporte1.jrxml"));
			JasperPrint jasperPrint = JasperFillManager.fillReport(report, null, new JREmptyDataSource());

			response.setContentType("application/x-download");
			response.addHeader("Content-disposition", "attachment; filename=StatisticsrReport1.pdf");
			OutputStream out = response.getOutputStream();
			JasperExportManager.exportReportToPdfStream(jasperPrint, out);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
