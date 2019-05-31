<%@ include file="/WEB-INF/views/include.jsp"%>
<c:set var="appCtx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<title>Generador SGA - Noticias</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link href="<c:url value="/css/estilosEsqueletoGeneral.css"/>"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<!-- <script type="text/javascript" src="js/votacion.js"> -->

<!-- </script> -->
</head>
<body class="container">

	<!-- Inicio inclusion de navBar -->
	<%@include file="navBarSitio.jsp"%>
	<!--  Fin inclusion navBar -->
	<hr>
	<hr>

	<!--  Inicio elementos de la pagina -->
	<div class="heightAuto" style="margin-top: 50px">


		<h1>Noticias</h1>
		<hr>
		<div class="row wrapper">
			<div class="col-md-12">
				<p>Al momento no tenemos noticias nuevas, regresa luego!</p>

			</div>
		</div>

	</div>



	<!--  Fin inclusion de elementos del site -->

	<!--  Inicio inclusion del footer -->

	<%@include file="footerSitio.jsp"%>

	<!--  Fin inclusion del footer -->

</body>
</html>