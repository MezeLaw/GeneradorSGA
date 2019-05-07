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
<!--  Para el search filter -->
<script
	src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/js/bootstrap-select.min.js"></script>

<!--  Para el Search Filter -->
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/css/bootstrap-select.min.css" />

<!--  Fin Search Filter -->

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
		<div class="row col-md-12">
			<div class="row-fluid">
				<select class="selectpicker" 
					data-live-search="true" multiple title="Ingrese su busqueda" data-width="100%" data-max-options="1">
					<option data-subtext="Rep California">Tom Foolery</option>
					<option data-subtext="Sen California">Bill Gordon</option>
					<option data-subtext="Sen Massacusetts">Elizabeth Warren</option>
					<option data-subtext="Rep Alabama">Mario Flores</option>
					<option data-subtext="Rep Alaska">Don Young</option>
					<option data-subtext="Rep California">Tom Foolery</option>
					<option data-subtext="Sen California">Bill Gordon</option>
					<option data-subtext="Sen Massacusetts">Elizabeth Warren</option>
					<option data-subtext="Rep Alabama">Mario Flores</option>
					<option data-subtext="Rep Alaska">Don Young</option>
					<option data-subtext="Rep California">Tom Foolery</option>
					<option data-subtext="Sen Massacusetts">Elizabeth Warren</option>
					<option data-subtext="Rep Alabama">Mario Flores</option>
					<option data-subtext="Rep Alaska">Don Young</option>
					<option data-subtext="Rep California">Tom Foolery</option>
					<option data-subtext="Sen California">Bill Gordon</option>
					<option data-subtext="Sen Massacusetts">Elizabeth Warren</option>
					<option data-subtext="Rep Alabama">Mario Flores</option>
					<option data-subtext="Rep Alaska">Don Young</option>
					
				</select>
			</div>
		</div>





	</div>


	<!--  Fin inclusion de elementos del site -->

	<!--  Inicio inclusion del footer -->

	<%@include file="footerSitio.jsp"%>

	<!--  Fin inclusion del footer -->

</body>
</html>