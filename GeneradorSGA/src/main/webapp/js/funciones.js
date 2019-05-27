/* Creacion del chosen */
$(document).ready(function() {
	$('.sel').chosen({
		no_results_text : "No existen resultados para su b&uacute;squeda",
		width : "95%"
	});

});

// Chosen touch support. Esto es para que funcione mobile -version
if ($('.chosen-container-single').length > 0) {
	$('.chosen-container-single').on('touchstart', function(e) {
		e.stopPropagation();
		e.preventDefault();
		// Trigger the mousedown event.
		$(this).trigger('mousedown');
	});
}

/* Fin inicializacion de chosen */

/* Inicio funciones */

function generarPDF() {
	
	$.ajax({
		url : 'Etiquetas/generarPDF',
		method : 'GET',
		xhrFields : {
			responseType : 'blob'
		},
		data : {
			"codigoChosen" : "12"
		},
		success : function(data) {
			var a = document.createElement('a');
			var url = window.URL.createObjectURL(data);
			a.href = url;
			a.download = 'Rotulo-SGA.pdf';
			a.click();
			window.URL.revokeObjectURL(url);
		}
	});

}

