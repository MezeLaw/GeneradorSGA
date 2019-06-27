package com.mz.GeneradorSGA.modelos;

public enum CodigosPDF {

	Metanol("metanolYPF", "Metanol"),
	Oxigeno("metanolYPF","Oxigeno"),
	Nitrogeno("metanolYPF", "nitro"),
	DiluyenteIsoprint("diluyenteIsoprint","diluIso");

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
