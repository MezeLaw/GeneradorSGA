package com.mz.GeneradorSGA.web.controllers;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mz.GeneradorSGA.modelos.CodigosPDF;

import net.sf.jasperreports.engine.JREmptyDataSource;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;

@Controller
@RequestMapping(value = "/Etiquetas")
public class GenerarRotuloController {

	protected final Log logger = LogFactory.getLog(getClass());

	// @RequestMapping(value = "/generarPDF", method = RequestMethod.GET)
	// public void generarPreFactura(HttpServletRequest request,
	// HttpServletResponse response,
	// @RequestParam String codigo) {
	// logger.info("Entraste a /Etiquetas/generarPDF");
	// try {
	// logger.info("Entraste al try de /Etiquetas/generarPDF");
	// if (codigo.equals("Metanol")) {
	//
	// JasperReport report = JasperCompileManager.compileReport(
	// request.getSession().getServletContext().getRealPath("/WEB-INF/reports/reporteMetanol.jrxml"));
	// JasperPrint jasperPrint = JasperFillManager.fillReport(report, null, new
	// JREmptyDataSource());
	//
	// response.setContentType("application/pdf");
	// response.addHeader("Content-disposition", "attachment");
	// OutputStream out = response.getOutputStream();
	// JasperExportManager.exportReportToPdfStream(jasperPrint, out);
	//
	// } else {
	// JasperReport report = JasperCompileManager.compileReport(
	// request.getSession().getServletContext().getRealPath("/WEB-INF/views/reporte1.jrxml"));
	// JasperPrint jasperPrint = JasperFillManager.fillReport(report, null, new
	// JREmptyDataSource());
	//
	// // response.setContentType("application/x-download");
	// response.setContentType("application/pdf");
	// response.addHeader("Content-disposition", "attachment");
	// OutputStream out = response.getOutputStream();
	// JasperExportManager.exportReportToPdfStream(jasperPrint, out);
	// }
	//
	// } catch (Exception e) {
	// e.printStackTrace();
	// }
	// }

	/**Metodo que devuelve un pdf alocado en el workspace **/
	
	@ResponseBody
	@RequestMapping(value = "/generarPDF", method = RequestMethod.GET)
	public void generarPDF(HttpServletRequest request, HttpServletResponse response, @RequestParam String codigo) {
		logger.info("Entraste a /Etiquetas/generarPDF");
		try {
			String pdfFileName = null;

			pdfFileName = CodigosPDF.valueOf(codigo).getNombrePdf();
			System.out.print(pdfFileName);


			String contextPath = request.getServletContext().getRealPath("/WEB-INF/reports/" + pdfFileName + ".pdf");
			File pdfFile = new File(contextPath);

			response.setContentType("application/pdf");
			response.addHeader("Content-Disposition", "attachment; filename=" + pdfFileName);
			response.setContentLength((int) pdfFile.length());

			FileInputStream fileInputStream = new FileInputStream(pdfFile);
			OutputStream responseOutputStream = response.getOutputStream();
			int bytes;
			while ((bytes = fileInputStream.read()) != -1) {
				responseOutputStream.write(bytes);
			}
			fileInputStream.close();

		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Se rompio al querer generar el PDF ... ");

		}
	}
}
