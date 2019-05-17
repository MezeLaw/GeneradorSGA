<%@ include file="/WEB-INF/views/include.jsp"%>
<c:set var="appCtx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<title>Generador SGA</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<link href="<c:url value="/css/estilosEsqueletoGeneral.css"/>" rel="stylesheet">
	

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<!-- <script type="text/javascript" src="js/votacion.js"> -->
	
<!-- </script> -->
</head>
<body style="height:100%;">

	<!-- Inicio inclusion de navBar -->
	<%@include file="navBarSitio.jsp"%>
	<!--  Fin inclusion navBar -->
	<br>
	<br>
	<!--  Inicio elementos de la pagina -->
	<div class="container heightAuto" style="margin-top: 50px" >
		<h1>Bienvenido!</h1>
		<hr>
		<div class="row">
			<div class="col-md-4">
				<p>Es un agrado poder darle la bienvenida al primer GeneradorSGA
					online.</p>
				<p>Nuestra aplicacion web es el resultado de una iniciativa que
					aun hoy sigue vigente (intentando expandir y mejorar este
					proyecto), que intenta ofrecer una herramienta mas a los tecnicos
					de H&S asi como tambien a personal administrativo o quien se
					encargue de rotular los materiales con los que se trabaja en el dia
					a dia en distintas industrias y no sabe exactamente la forma
					correcta de hacerlo.</p>
			</div>

			<div class="col-md-4">
				<!-- Aca puede ir una imagen? -->
			</div>
		</div>

		<div class="row">

			<div class="col-md-4">
				<p>Desde la pestaña "Generador de SGA", podra buscar por el
					nombre del material en cuestion y con solo hacer click en "Generar"
					se descargara una copia de un modelo de rotulado. Los estilos
					pueden cambiarse a su gusto con software de terceros, nuestro
					objetivo y desarrollo solo desea ser orientativo. Aun asi, tambien
					puede ser utilizado sin modificaciones posteriores.</p>
				<!--       <p>A fixed navigation bar stays visible in a fixed position (top or bottom) independent of the page scroll.</p> -->
			</div>

		</div>



		<div class="row">

			<div class="col-md-4">
				<p>Adicionalmente, si usted desea obtener el rotulado de un
					material/compuesto que no disponemos, podra escribirnos y enviarnos
					la mayor informacion que posea y sera agregada a la inmediatez.</p>
				<!--       <p>A fixed navigation bar stays visible in a fixed position (top or bottom) independent of the page scroll.</p> -->
			</div>

		</div>


		<div class="row">
			<div class="col-md-4">
				<p>Los saluda atentamente, el staff de GeneradorSGA.</p>
			</div>
		</div>

	</div>



	<!--  Fin inclusion de elementos del site -->

	<!--  Inicio inclusion del footer -->

	<%@include file="footerSitio.jsp"%>

	<!--  Fin inclusion del footer -->

</body>
</html>