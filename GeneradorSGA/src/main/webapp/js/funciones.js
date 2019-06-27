/* Inicio funciones */
$(document).ready(function() {
	var opcion = $("#elementos").val();
	if ("" == opcion) {
		$("#generarPDF").attr("disabled", true);
	} else {
		$("#generarPDF").attr("disabled", false);
	}
});

function generarPDF() {
	$("#generarPDF").attr("disabled", true);

	$.preloader.start({});

	var codigo = $("#elementos").val();

	$.ajax({
		url : 'Etiquetas/generarPDF',
		method : 'GET',
		xhrFields : {
			responseType : 'blob'
		},
		data : {
			"codigo" : codigo
		},
		success : function(data) {

			$.preloader.stop();

			var a = document.createElement('a');
			var url = window.URL.createObjectURL(data);
			a.href = url;
			a.download = 'Rotulo-SGA.pdf';
			a.click();
			window.URL.revokeObjectURL(url);
			$("#generarPDF").attr("disabled", false);
		},
		error : function(data) {

			$.preloader.stop();

			// Saco el disabled al alert
			$("#alertError").removeClass("hidden");
			$("#generarPDF").attr("disabled", false);
		}
	});

}

// function generarPDF() {
// $("#generarPDF").attr("disabled", true);
//	
// var codigo = $("#elementos").val();
//
// $.ajax({
// url : 'Etiquetas/generarPDF',
// method : 'GET',
// xhrFields : {
// responseType : 'application/json'
// },
// data : {
// "codigo" : codigo
// },
// success : function(data) {
// debugger
// var a = document.createElement('a');
// var url = window.URL.createObjectURL(data);
// a.href = url;
// a.download = 'Rotulo-SGA.pdf';
// a.click();
// window.URL.revokeObjectURL(url);
// $("#generarPDF").attr("disabled", false);
// },
// error : function(data) {
// // Saco el disabled al alert
// $("#alertError").removeClass("hidden");
// $("#generarPDF").attr("disabled", false);
// }
// });
//
// }

function verificarOpcion() {
	var opcion = $("#elementos").val();
	if ("" == opcion) {
		$("#generarPDF").attr("disabled", true);
	} else {
		$("#generarPDF").attr("disabled", false);
	}
};
