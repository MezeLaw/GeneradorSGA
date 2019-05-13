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
	
	$.ajax({
		  url: "/GeneradorSGA/Etiquetas/generarRotulo",
		  data: "ATR",
		  type: "POST",
		  dataType: "json",
		  success: function(response){
			  tuvisteExito();
		  },
		  error: function(response){
			  alert("fallaste en el back de back perro..")
		  }
		});
}

function tuvisteExito(){
	alert("Volviste con exito del controller")
}