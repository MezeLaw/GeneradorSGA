<%@ include file="/WEB-INF/views/include.jsp"%>
<c:set var="appCtx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>

<title>Generador SGA</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/jpg" href="img/flask50x50.jpg">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<link href="<c:url value="/css/estilosEsqueletoGeneral.css"/>"
	rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script type="text/javascript" src="<c:url value="/js/funciones.js"/>"></script>


</head>
<body class="container">

	<!-- Inicio inclusion de navBar -->
	<%@include file="navBarSitio.jsp"%>
	<!--  Fin inclusion navBar -->
	<br>
	<br>
	<!--  Inicio elementos de la pagina -->
	<div class="heightAuto" style="margin-top: 50px">

		<h1>Bienvenido</h1>
		<hr>
		<div class="row wrapper col-md-12">
			<div class="col-md-12">
				<p>Es un agrado poder darle la bienvenida al primer GeneradorSGA
					online.</p>
				<p>Nuestra aplicacion web es el resultado de una iniciativa que
					aun hoy sigue vigente (intentando expandir y mejorar este
					proyecto), que intenta ofrecer una herramienta mas a los tecnicos
					de H&S asi como tambien a personal administrativo o quien se
					encargue de rotular los materiales con los que se trabaja en el dia
					a dia en distintas industrias y no sabe exactamente la forma
					correcta de hacerlo.</p>
				<p>Desde la pestaña "Generador de SGA", podra buscar por el
					nombre del material en cuestion y con solo hacer click en "Generar"
					se descargara una copia de un modelo de rotulado. Los estilos
					pueden cambiarse a su gusto con software de terceros, nuestro
					objetivo y desarrollo solo desea ser orientativo. Aun asi, tambien
					puede ser utilizado sin modificaciones posteriores. Adicionalmente,
					si usted desea obtener el rotulado de un material/compuesto que no
					disponemos, podra escribirnos y enviarnos la mayor informacion que
					posea y sera agregada a la inmediatez.</p>

				<p>Los saluda atentamente, el staff de GeneradorSGA.</p>
				<br>

			</div>
		</div>

		<div class="row wrapper col-md-4 " style="text-align: center">
			<a href="https://www.srt.gob.ar/index.php/sga/"
				class="fa fa-globe fa-2x" target="_blank" title="SRT"></a>
		</div>



		<div class="row wrapper col-md-4 " style="text-align: center">
			<a
				href="https://www.srt.gob.ar/wp-content/uploads/2018/06/01_SGA_Rev.5.pdf"
				class="row  fa fa-flask fa-2x  " target="_blank" title="SGA"></a>
		</div>

		<div class="row wrapper col-md-4 " style="text-align: center">
			<a
				href="http://servicios.infoleg.gob.ar/infolegInternet/verNorma.do?id=245850"
				class="fa fa-book fa-2x" target="_blank" title="RES SRT 801/15"></a>
		</div>
	</div>


	<!--  Fin inclusion de elementos del site -->

	<!--  Inicio inclusion del footer -->

	<%@include file="footerSitio.jsp"%>

	<!--  Fin inclusion del footer -->

</body>
</html>