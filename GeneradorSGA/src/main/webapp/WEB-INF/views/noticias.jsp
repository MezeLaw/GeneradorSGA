<%@ include file="/WEB-INF/views/include.jsp"%>
<c:set var="appCtx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>




<title>Generador SGA</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/jpg" href="img/flask50x50.jpg">


<link href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet">

<link rel="stylesheet"
	href="<c:url value="/css/estilosEsqueletoGeneral.css"/>">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script type="text/javascript"
	src="<c:url value="/js/bootstrap.min.js"/>"></script>

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

		<h1>Noticias</h1>
		<hr>



		<div class="row wrapper col-md-12">
			<h4>
				<b>Encuesta de alcance general</b></b>
			</h4>
			<p>Agregamos una encuesta de inter&eacute;s y alcance general,
				para poder continuar con la investigaci&oacute;n y an&aacute;lisis
				de esta problem&aacute;tica. Agradecemos profundamente si dispones
				de un momento y nos ayudas complet&aacute;ndola.</p>
			<br>
			<p>¡Gracias!</p>


		</div>

		<div class="row wrapper col-md-12 " style="text-align: center">
			<a
				href="https://www.srt.gob.ar/wp-content/uploads/2018/06/01_SGA_Rev.5.pdf"
				class="  fa fa-flask fa-2x  " target="_blank" title="SGA"></a>
			<hr>

		</div>

	</div>



	<!--  Inicio inclusion del footer -->

	<%@include file="footerSitio.jsp"%>

	<!--  Fin inclusion del footer -->
</body>


</html>