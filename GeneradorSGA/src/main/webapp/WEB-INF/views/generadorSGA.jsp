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
	

<link href="<c:url value="/css/estilosEsqueletoGeneral.css"/>"
	rel="stylesheet">

<link href="<c:url value="/css/bootstrap-select.css"/>" rel="stylesheet">

<link href="<c:url value="/css/bootstrap-select.css"/>" rel="stylesheet">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	

<script type="text/javascript"
	src="<c:url value="/js/bootstrap.min.js"/>"></script>

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

		<div id="alertError"
			class="alert alert-danger alert-dismissible container hidden">
			<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
			Ocurri&oacute; un error inesperado. Lamentamos las molestias. Por
			favor, int&eacute;ntelo nuevamente.
		</div>

		<div class="row wrapper col-md-12">
			<select id="elementos" class="row selectpicker wrapper col-sm-12"
				data-live-search="true" data-width="100%"
				data-none-Results-Text="No se hallaron resultados para su b&uacute;squeda"
				title="Ingrese su b&uacute;squeda" onchange="verificarOpcion();">
				<c:forEach var="cod" items="${codigosElementos}">
					<option value="${cod}">${cod}</option>
				</c:forEach>
			</select>
		</div>

		<div class="row wrapper col-sm-10" style="text-align: center">
			<button id="generarPDF" class="btn btn-primary"
				onclick="generarPDF();">Generar Rotulo</button>
		</div>

	</div>

	<div class="container">
		<div class="spinner-border spinner-border-sm"></div>
		<div class="spinner-grow spinner-grow-sm"></div>
	</div>

	<!--  Fin inclusion de elementos del site -->

	<!--  Inicio inclusion del footer -->

	<%@include file="footerSitio.jsp"%>

	<!--  Fin inclusion del footer -->
</body>
</html>