
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

