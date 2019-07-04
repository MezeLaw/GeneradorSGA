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
<link href="<c:url value="/css/font-awesome.min.css"/>" rel="stylesheet">
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
			<div class="col-md-12">
				<p>Agregamos una encuesta de inter&eacute;s y alcance general,
					para poder continuar con la investigaci&oacute;n y an&aacute;lisis
					de esta problemtica. Agradecemos profundamente si dispones de un
					momento y nos ayudas complet&aacute;ndola.</p>
				<br>
				<p>&#161;Gracias!</p>

			</div>
		</div>


		<!-- 			<iframe -->
		<!-- 				src="https://docs.google.com/forms/d/e/1FAIpQLSetSZ4wAwEd72pCA8npT2kS0xewU0kUtZWNKMQAdF3-HO2YBg/viewform?embedded=true" -->
		<!-- 				width="100%" height="2317px" frameborder="0" marginheight="0" -->
		<!-- 				marginwidth="0" >Cargando…</iframe> -->


		<!-- 		<div class="row wrapper col-md-12 " style="text-align: center"> -->
		<!-- 			<a href="https://forms.gle/oXjmomZk3z4jEveE9" -->
		<!-- 				class="  fa fa-list-ul fa-2x  " target="_blank" title="Encuesta"></a> -->
		<!-- 			<hr> -->

		<!-- 		</div> -->

		<div id="Iframe-Liason-Sheet"
			class="row wrapper col-md-12 iframe-border center-block-horiz">
			<div class="responsive-wrapper responsive-wrapper-wxh-760x1200">
				<iframe
					src="https://docs.google.com/forms/d/e/1FAIpQLSetSZ4wAwEd72pCA8npT2kS0xewU0kUtZWNKMQAdF3-HO2YBg/viewform?embedded=true">Cargando...</iframe>
			</div>
		</div>

	</div>



	<!--  Inicio inclusion del footer -->

	<%@include file="footerSitio.jsp"%>

	<!--  Fin inclusion del footer -->
</body>


</html>