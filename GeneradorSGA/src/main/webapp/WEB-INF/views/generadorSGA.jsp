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
<link href="<c:url value="/css/chosen.css"/>" rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<script type="text/javascript"
	src="<c:url value="/js/chosen.jquery.js" />"></script>
<script type="text/javascript" src="<c:url value="/js/funciones.js"/>"></script>

</head>
<body style="">

	<!-- Inicio inclusion de navBar -->
	<%@include file="navBarSitio.jsp"%>
	<!--  Fin inclusion navBar -->
	<hr>
	<hr>

	<!--  Inicio elementos de la pagina -->
	<div class="container" style="margin-top: 50px">
		<h1>Generar Rotulo</h1>
		<hr>

		<div class="container">
			<select data-placeholder="Seleccione el elemento.."
				 class="sel col-xs-5">
				 <option></option>
				<option>A</option>
				<option>B</option>
				<option>C</option>
				<option>D</option>
				<option>E</option>
				<option>F</option>
				<option>G</option>
			</select>
		</div>
		<br>
	</div>
	<br>
	<div class="row col-md-9 col-xs-9">
		<button class="btn btn-primary pull-right" onclick="generarPDF();">
			Generar Rotulo</button>
	</div>


	<!--  Fin inclusion de elementos del site -->

	<!--  Inicio inclusion del footer -->

	<%@include file="footerSitio.jsp"%>

	<!--  Fin inclusion del footer -->
</body>
</html>