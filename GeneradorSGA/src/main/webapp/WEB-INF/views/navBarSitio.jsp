
<%@ include file="/WEB-INF/views/include.jsp"%>
<c:set var="appCtx" value="${pageContext.request.contextPath}" />
<nav class="navbar navbar-dark bg-primary navbar-fixed-top navBarColor">
	<div class="container">
		<div class="navbar-header">
			<button type="button"
				class="navbar-toggle collapsed blancoColor iconBar"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand logo" href="#"><img class="logo"
				src="img/logoBorde50x50.png" alt="GeneradorSGA"></a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><a href="${appCtx}/inicio">Inicio</a></li>
				<li><a href="${appCtx}/noticias">Noticias</a></li>
				<li><a href="${appCtx}/generarRotulo">Generador SGA</a></li>
			</ul>
			<!--           <ul class="nav navbar-nav navbar-right"> -->
			<!--             <li class="dropdown"> -->
			<!--               <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Registrarse / Ingresar<span class="caret"></span></a> -->
			<!--               <ul class="dropdown-menu"> -->
			<!--                 <li><a href="#">Registrarse</a></li> -->
			<!--                 <li><a href="#">Ingresar</a></li> -->
			<!--                 <li role="separator" class="divider"></li> -->
			<!--                 <li><a href="#">Cerrar sesion</a></li> -->
			<!--               </ul> -->
			<!--             </li> -->
			<!--           </ul> -->
		</div>
	</div>
</nav>
</html>