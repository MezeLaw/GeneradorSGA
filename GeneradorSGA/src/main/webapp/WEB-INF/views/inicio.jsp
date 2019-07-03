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
					online. Nuestra aplicaci�n web es el resultado de una iniciativa
					que intenta ofrecer una herramienta m�s a los profesionales de
					Higiene y Seguridad sobre el correcto etiquetado de los productos
					qu�micos tal como lo establece el Sistema Globalmente Armonizado. A
					su vez, tambi�n busca poder ayudar a las a las empresas que d�a a
					d�a usan, en sus procesos productivos, qu�micos que deben estar
					correctamente se�alizados con el objetivo de poder crear una
					cultura de prevenci�n. Desde la pesta�a "Generador de SGA", podr�
					buscar por el nombre del producto qu�mico en cuesti�n y con solo
					hacer click en "Generar" se descargara una copia del etiquetado
					correspondiente. Adicionalmente, si usted desea obtener el rotulado
					de un producto que no disponemos, podr� escribirnos y enviarnos la
					mayor informaci�n t�cnica que posea y ser� agregada con la mayor
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
				<b>�Qu� es el SGA?</b>
			</p>
			<p>El Sistema Globalmente Armonizado de Clasificaci�n y
				Etiquetado de productos qu�micos (SGA o GHS por sus siglas en
				ingl�s) establece criterios armonizados para clasificar sustancias y
				mezclas con respecto a sus peligros f�sicos, para la salud y para el
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
				en un documento denominado Libro P�rpura.</p>
		</div>

		<div class="row wrapper col-md-4 " style="text-align: center">
			<a
				href="http://servicios.infoleg.gob.ar/infolegInternet/verNorma.do?id=245850"
				class="fa fa-book fa-2x" target="_blank" title="RES SRT 801/15"></a>
			<hr>
			<p>
			<p>
				<b>Resoluci�n SRT N� 801/2015</b>
			</p>
			<p>Establece la implementaci�n del SGA en el �mbito laboral de
				nuestro pa�s y es de cumplimiento obligatorio dentro del Sistema de
				Riesgos del Trabajo</p>
		</div>
	</div>


	<!--  Fin inclusion de elementos del site -->

	<!--  Inicio inclusion del footer -->

	<%@include file="footerSitio.jsp"%>

	<!--  Fin inclusion del footer -->

</body>
</html>