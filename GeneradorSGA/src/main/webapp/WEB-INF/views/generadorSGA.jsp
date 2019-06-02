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

<link href="<c:url value="/css/bootstrap-select.css"/>" rel="stylesheet">

<link href="<c:url value="/css/bootstrap-select.css"/>" rel="stylesheet">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<script type="text/javascript"
	src="<c:url value="/js/bootstrap-select.js" />"></script>

<script type="text/javascript"
	src="<c:url value="/js/bootstrap-select.min.js" />"></script>

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

		<h1>Generar Rotulo</h1>
		<hr>
		<div class="row wrapper col-md-12">
			<select id="elementos" class="row selectpicker wrapper col-sm-12"
				data-live-search="true" data-width="100%"
				title="Ingrese su busqueda">
				<option value="noOption"></option>
				<c:forEach var="cod" items="${codigosElementos}">
					<option value="${cod}">${cod}</option>
				</c:forEach>
			</select>
		</div>

		<div class="row wrapper col-md-8 " style="text-align: center">
			<button id="generarPDF" class="btn btn-primary pull-right"
				onclick="generarPDF();">Generar Rotulo</button>
		</div>

	</div>


	<!--  Fin inclusion de elementos del site -->

	<!--  Inicio inclusion del footer -->

	<%@include file="footerSitio.jsp"%>

	<!--  Fin inclusion del footer -->
</body>
</html>