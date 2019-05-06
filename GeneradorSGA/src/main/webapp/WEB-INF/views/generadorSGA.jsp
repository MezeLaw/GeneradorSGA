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
<!-- <script type="text/javascript" src="js/votacion.js"> -->

<!-- </script> -->
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
		<div class="row">


			<div class="dropdown col-md-12">
				<button
					class="btn btn-secondary dropdown-toggle col-md-7 glyphicon glyphicon-search center-block"
					type="button" id="dropdown_coins" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"></button>
				<div id="menu" class="dropdown-menu col-md-7"
					aria-labelledby="dropdown_coins">
					<form class="col-md-12 col-xs-12">
						<input type="search" class="form-control" id="buscarCompuesto"
							placeholder="Busque aquí su compuesto" autofocus="autofocus">
					</form>
					<div id="menuItems">
						<ol>
							<li>Butano</li>
							<li>Metano</li>
							<li>Coca-Cola</li>
							<li>Pepsi</li>
							<li>7up</li>
							<li>Gas</li>
							<li>ATR</li>

						</ol>

					</div>
<!-- 					<div id="empty" class="dropdown-header col-md-7 col-xs-7">El -->
<!-- 						compuesto que desea buscar no se encuentra. Puede escribirnos para -->
<!-- 						agregarlo.</div> -->
				</div>
			</div>
			<hr>
			<br>
			<div class="row">
				<button type="button" class="btn btn-outline-primary">Generar
					Rotulo</button>
			</div>

		</div>
	</div>



	<!--  Fin inclusion de elementos del site -->

	<!--  Inicio inclusion del footer -->

	<%@include file="footerSitio.jsp"%>

	<!--  Fin inclusion del footer -->

</body>
</html>