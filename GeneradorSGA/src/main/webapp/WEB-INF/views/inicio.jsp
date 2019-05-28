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

<link href="<c:url value="/css/estilosEsqueletoGeneral.css"/>"
	rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body class="container">

	<!-- Inicio inclusion de navBar -->
	<%@include file="navBarSitio.jsp"%>
	<!--  Fin inclusion navBar -->

	<hr>
	<hr>
	<!--  Inicio elementos de la pagina -->

	<div class="heightAuto" style="margin-top: 50px" style="position:asbsolute;">
		<h1>Bienvenido</h1>
		<hr>
		<div class="col-md-12 col-xs-12">

			<p>Es un agrado poder darle la bienvenida al primer GeneradorSGA
				online.</p>
			<p>Nuestra aplicacion web es el resultado de una iniciativa que
				aun hoy sigue vigente (intentando expandir y mejorar este proyecto),
				que intenta ofrecer una herramienta mas a los tecnicos de H&S asi
				como tambien a personal administrativo o quien se encargue de
				rotular los materiales con los que se trabaja en el dia a dia en
				distintas industrias y no sabe exactamente la forma correcta de
				hacerlo.</p>
			<br>
			<p>Desde la pesta�a "Generador de SGA", podra buscar por el
				nombre del material en cuestion y con solo hacer click en "Generar"
				se descargara una copia de un modelo de rotulado. Los estilos pueden
				cambiarse a su gusto con software de terceros, nuestro objetivo y
				desarrollo solo desea ser orientativo. Aun asi, tambien puede ser
				utilizado sin modificaciones posteriores. Adicionalmente, si usted
				desea obtener el rotulado de un material/compuesto que no
				disponemos, podra escribirnos y enviarnos la mayor informacion que
				posea y sera agregada a la inmediatez.</p>

			<p>Los saluda atentamente, el staff de GeneradorSGA.</p>
			<br>


		</div>
	</div>


	<!--  Fin inclusion de elementos del site -->

	<!--  Inicio inclusion del footer -->

	<%-- 	<%@include file="footerSitio.jsp"%> --%>

	<!--  Fin inclusion del footer -->


	<div class="container" style="position:relative;">
		<footer
			class="page-footer font-small footer navbar-fixed-bottom alturaFooter">
			<!-- Copyright -->
			<div
				class="footer-copyright text-center py-3 letraBlanca alturaFooter">
				� 2018 Todos los derechos reservados: <a
					href="https://www.linkedin.com/in/yanina-leban-810710112/">Staff
					de GeneradorSGA</a>
			</div>
		</footer>
	</div>

</body>
</html>