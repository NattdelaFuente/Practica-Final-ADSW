<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Plantilla</title>
<%@ include file="principales/elementshead.jsp" %>
<link href="css/pelis.css" rel="stylesheet" type="text/css">
<style type="text/css">
.wizard {
	border-bottom: 1px solid #CCC;
	margin-bottom: 35px;
}

.text-primary {
	background-color: #34495e;
	border: 2px solid #ddd;
	color: white;
	border-radius: 15px 50px;
	padding: 20px;
}

.colore{
background-color:#465059;
color:white;
padding-top:35px;
padding-bottom:35px;
}

.colorinfo2{
color:#222e3a;
}
</style>

</head>
<body>
<%@ include file="principales/cabecera.jsp" %>
<p style="margin-top: 50px;"></p>
	<!-- INFO AVANCE RESERVA  -->
		<div class="container">
			<div class="row">
			<h2><strong>Progreso de la reserva:</strong></h2>
				<ul class="list-inline nav-justified wizard text-center">
					<li><h4 class="text-muted">1. Seleccionar Asientos</h4></li>
					<li><h4 class="text-muted">2. Pago</h4></li>
					<li><h4 class="text-primary">3. Confirmación Reserva</h4></li>
				</ul>
			</div>
		</div>
		<!-- FIN INFO AVANCE RESERVA  -->
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2>¡GRACIAS POR CONFIAR EN CINESA!</h2>
			</div>
		</div>
	</div>
	<p style="margin-top: 50px;"></p>
	<div class="colore">
		<div class="container">
		<div class="row" style="padding-top:20px; ">

				<div class="col-lg-12">
					<h1 class="text-center"><strong class="text-center">Información sobre su Reserva</strong></h1>
					<hr>
				</div>


			</div>
			<p style="margin-top: 20px;"></p>
			<div class="row">
			
				<div class="col-lg-6" style="margin-top: 42px;">
					
					<h3><strong class="colorinfo">Nombre de la Película:</strong> El señor de los anillos</h3>
					<h3><strong class="colorinfo">Sala:</strong> sala1</h3>
					<h3><strong class="colorinfo">Columna:</strong> 2</h3>
					<h3><strong class="colorinfo">Fila:</strong> 3</h3>
					<h1><strong class="colorinfo">Precio: </strong>22&euro;</h1>
					<h1><strong class="colorinfo">Código de Reserva: </strong>22342</h1>
				</div>
				<div class="col-lg-6 center">
					<img class="responsive" alt="" src="http://allcalidad.com/wp-content/uploads/2016/05/1-511.jpg" style="max-height:400px; min-height:400px; margin-top:20px; border:2px solid #34495e; border-radius:15px;">
				</div>

			</div>
			<hr>
			<div class="row" style="padding-top:20px;">
			<div class="col-lg-4">
					
				</div>
				<div class="col-lg-4">
					<a class="btn btn-lg btn-default" href="index.jsp" role="button" style="width:100%;">Confirmar</a>
				</div>
				<div class="col-lg-4">
					
				</div>

			</div>
		</div>
	</div>
	<%@ include file="principales/footer.jsp" %>
</body>
</html>			