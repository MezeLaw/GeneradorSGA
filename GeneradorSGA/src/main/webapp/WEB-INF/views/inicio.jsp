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

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script type="text/javascript"
	src="<c:url value="/js/bootstrap.min.js"/>"></script>

<link href="<c:url value="/css/font-awesome.min.css"/>" rel="stylesheet">

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
					online. Nuestra aplicación web es el resultado de una iniciativa
					que intenta ofrecer una herramienta más a los profesionales de
					Higiene y Seguridad sobre el correcto etiquetado de los productos
					químicos tal como lo establece el Sistema Globalmente Armonizado. A
					su vez, también busca poder ayudar a las a las empresas que día a
					día usan, en sus procesos productivos, químicos que deben estar
					correctamente señalizados con el objetivo de poder crear una
					cultura de prevención. Desde la pestaña "Generador de SGA", podrá
					buscar por el nombre del producto químico en cuestión y con solo
					hacer click en "Generar" se descargara una copia del etiquetado
					correspondiente. Adicionalmente, si usted desea obtener el rotulado
					de un producto que no disponemos, podrá escribirnos y enviarnos la
					mayor información técnica que posea y será agregada con la mayor
					celeridad posible.</p>
				<br>
				<p>Los saluda atentamente, el staff de GeneradorSGA.</p>
				<br>

			</div>
		</div>

		<div class="row wrapper col-md-4 " style="text-align: center">

			<a href="https://www.srt.gob.ar/index.php/sga-2/"
				class="fa fa-globe fa-2x" target="_blank" title="SRT"></a>
			<hr>
			<p>
				<b>¿Qué es el SGA?</b>
			</p>
			<p>El Sistema Globalmente Armonizado de Clasificación y
				Etiquetado de productos químicos (SGA o GHS por sus siglas en
				inglés) establece criterios armonizados para clasificar sustancias y
				mezclas con respecto a sus peligros físicos, para la salud y para el
				medio ambiente.</p>
		</div>



		<div class="row wrapper col-md-4 " style="text-align: center">
			<a
				href="https://www.srt.gob.ar/wp-content/uploads/2018/06/01_SGA_Rev.5.pdf"
				class="  fa fa-flask fa-2x  " target="_blank" title="SGA"></a>
			<hr>
			<p>
				<b>Libro P&uacute;rpura</b>
			</p>
			<p>Los criterios establecidos en el SGA se basan en lo descrito
				en un documento denominado Libro Púrpura.</p>
		</div>

		<div class="row wrapper col-md-4 " style="text-align: center">
			<a
				href="http://servicios.infoleg.gob.ar/infolegInternet/verNorma.do?id=245850"
				class="fa fa-book fa-2x" target="_blank" title="RES SRT 801/15"></a>
			<hr>
			<p>
			<p>
				<b>Resolución SRT N° 801/2015</b>
			</p>
			<p>Establece la implementación del SGA en el ámbito laboral de
				nuestro país y es de cumplimiento obligatorio dentro del Sistema de
				Riesgos del Trabajo</p>
		</div>
	</div>


	<!--  Fin inclusion de elementos del site -->

	<!--  Inicio inclusion del footer -->

	<%@include file="footerSitio.jsp"%>

	<!--  Fin inclusion del footer -->

</body>
</html>