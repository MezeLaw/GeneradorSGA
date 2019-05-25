/* Creacion del chosen */
$(document).ready(function() {
	$('.sel').chosen({
	    no_results_text: "No existen resultados para su b&uacute;squeda",
	    width: "95%"
	});

});

// Chosen touch support. Esto es para que funcione mobile -version
if ($('.chosen-container-single').length > 0) {
  $('.chosen-container-single').on('touchstart', function(e){
    e.stopPropagation(); e.preventDefault();
    // Trigger the mousedown event.
    $(this).trigger('mousedown');
  });
}

/* Fin inicializacion de chosen */

/* Inicio funciones */

function generarPDF() {
	
//	$.ajax({
//		  url: "/GeneradorSGA/Etiquetas/generarRotulo",
//		  data: "ATR",
//		  type: "POST",
//		  dataType: 'native',
//		  responseType: "blob",
//		  success:function(blob){
//			    console.log(blob.size);
//			      var link=document.createElement('a');
//			      link.href=window.URL.createObjectURL(blob);
//			      link.download="Etiqueta_" + new Date() + ".pdf";
//			      link.click();
//			  },
//		  error: function(response){
//			  alert("fallaste en el back de back perro..")
//		  }
//		});
	
	
	$.ajax({
//        url: 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/172905/test.pdf',
		url: '/GeneradorSGA/Etiquetas/generarPDF',
    method: 'GET',
    xhrFields: {
        responseType: 'blob'
    },
    data:{
     "numeroComprobante" : 12
    },
    success: function (data) {
        var a = document.createElement('a');
        var url = window.URL.createObjectURL(data);
        a.href = url;
        a.download = 'myfile.pdf';
        a.click();
        window.URL.revokeObjectURL(url);
    }
});
}

function tuvisteExito(){
	alert("Volviste con exito del controller")
}