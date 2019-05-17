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

//	@RequestMapping(value = "/generarRotulo", method = RequestMethod.GET)
//	public String generarRotulo(HttpServletRequest request, HttpServletResponse response) {
//		System.out.println("XD");
//		return "1";
//	}

	// @RequestMapping(value = "/generarRotulo", method = RequestMethod.POST)
	// private void performTask(HttpServletRequest request, HttpServletResponse
	// response)
	// throws ServletException, IOException {
	//
	// String pdfFileName = "pdf-test.pdf";
	// // String contextPath = getServletContext().getRealPath(File.separator);
	// File pdfFile = new File(pdfFileName);
	//
	// response.setContentType("application/pdf");
	// response.addHeader("Content-Disposition", "attachment; filename=" +
	// pdfFileName);
	// response.setContentLength((int) pdfFile.length());
	//
	// FileInputStream fileInputStream = new FileInputStream(pdfFile);
	// OutputStream responseOutputStream = response.getOutputStream();
	// int bytes;
	// while ((bytes = fileInputStream.read()) != -1) {
	// responseOutputStream.write(bytes);
	// }
	//
	// }
//	@RequestMapping(value = "/generarRotulo", method = RequestMethod.GET)
//	private void performTask(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//
//		String pdfFileName = "pdf-test.pdf";
//		String contextPath = request.getServletContext().getRealPath(File.separator);
//		File pdfFile = new File(contextPath + pdfFileName);
//
//		response.setContentType("application/pdf");
//		response.addHeader("Content-Disposition", "attachment; filename=" + pdfFileName);
//		response.setContentLength((int) pdfFile.length());
//
//		FileInputStream fileInputStream = new FileInputStream(pdfFile);
//		OutputStream responseOutputStream = response.getOutputStream();
//		int bytes;
//		while ((bytes = fileInputStream.read()) != -1) {
//			responseOutputStream.write(bytes);
//		}
//
//	}
	
	
	
	
	@RequestMapping(value = "/generarRotulo", method = RequestMethod.GET)
	public void generarPreFactura(HttpServletRequest request, HttpServletResponse response, @RequestParam Integer numeroComprobante) {

//		List<ItemPreFactura> lista = facturaService.listarDetallesPorNumeroComprobante(numeroComprobante).getItemPreFacturas();
//		UserDetailImpl userDetails = (UserDetailImpl) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		try {
			Map parameters = new HashMap();

//			JRBeanCollectionDataSource jrList = new JRBeanCollectionDataSource(lista);
			//parametros
//			parameters.put("PRESTADOR_ID", userDetails.getPrestador().getCodigo());
//			parameters.put("RAZON_SOCIAL", userDetails.getPrestador().getRazonSocial());
//			parameters.put("NRO_COMPROBANTE", numeroComprobante.toString());
//			parameters.put("PERIODO", "Marzo 2019");//TODO: pasar periodo correctamente
//			parameters.put("PREFACTURAS_LIST", jrList);

            JasperReport report = JasperCompileManager.compileReport(request.getSession().getServletContext().getRealPath("/views/ejemploPictogramaSimple.jrxml"));
			JasperPrint jasperPrint = JasperFillManager.fillReport(report, parameters, new JREmptyDataSource());

			response.setContentType("application/x-download");
			response.addHeader("Content-disposition", "attachment; filename=StatisticsrReport1.pdf");
			OutputStream out = response.getOutputStream();
			JasperExportManager.exportReportToPdfStream(jasperPrint,out);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	

}
