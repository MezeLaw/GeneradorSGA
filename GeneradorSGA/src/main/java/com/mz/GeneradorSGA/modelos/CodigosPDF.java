package com.mz.GeneradorSGA.modelos;

public enum CodigosPDF {


	diluyenteIsoprint("diluyenteIsoprint","Diluyente Isoprint"),
	cleanAlPlus("cleanAlPlus", "Clean Al Plus"),
	gomaArabigaNatural("gomaArabigaNatural","Goma Arabiga Natural"),
	limpiadorProfundoDeMantillasRevividor("limpiadorProfundoDeMantillasRevividor", "Limpiador Profundo de Mantillas - Revividor"),
	limpiadorProfundoPlusDescristalizador("limpiadorProfundoPlusDescristalizador", "Limpiador Profundo Plus - Descristalizador"),
	reveladorPositivo("reveladorPositivo", "Revelador Positivo");

	private final String nombrePDF;
	private final String elemento;

	CodigosPDF(String nombrePdf, String elemento) {
		this.nombrePDF = nombrePdf;
		this.elemento = elemento;
	}

	public String getNombrePdf() {
		return this.nombrePDF;
	}

	public String getElemento() {
		return this.elemento;
	}
}
