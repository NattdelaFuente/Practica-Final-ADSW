<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Plantilla</title>
<%@ include file="principales/cabecerapeli.jsp"%>
<%@ include file="principales/elementshead.jsp"%>

<link href="css/pelis.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file="principales/cabecera.jsp"%>


	<section id="title" class="emerald2" style="padding-bottom:1px;">
	<div class="container">
		<div class="row" style="padding-top: 30px;">
			<div class="col-sm-6">
				<h1>Nombre de la película</h1>
			</div>
			<div class="col-sm-6">
				<ul class="breadcrumb pull-right">
					<li><a href="index.html">Inicio</a></li>
					<li class="active">Nombre de la película</li>
				</ul>
			</div>
		</div>

		<div class="row"
			style="padding: 20px; padding-top: 30px; background: #7b8ea0;">
			<div class="col-sm-4">

				<img alt="Nombreimagen" src="images/08D.jpg"
					style="max-width: 420px;">

			</div>
			<div class="col-sm-1"></div>
			<div class="col-sm-7">
				<h4>
					<strong class="colorinfo">Genero: </strong>Acción
				</h4>
				<h4>
					<strong class="colorinfo">Duración: </strong>116 min
				</h4>
				<h4>
					<strong class="colorinfo">Edad: </strong>+16
				</h4>
				<h4>
					<strong class="colorinfo">Director: </strong>Manuel Croman
				</h4>
				<h4>
					<strong class="colorinfo">Calificación: </strong>Buena
				</h4>
				<p>
					<strong>Sinopsis: </strong>Gracias a una tecnología revolucionaria
					que permite el acceso a los recuerdos genéticos, Callum Lynch
					(Michael Fassbender) revive las aventuras de Aguilar, un antepasado
					suyo que vivió en la España del siglo XV. Así descubre que es
					descendiente de una misteriosa organización secreta, los Asesinos,
					y que posee las habilidades y los conocimientos necesarios para
					enfrentarse a la poderosa y temible organización de los Templarios
					en la época actual. Adaptación libre del videojuego homónimo.
				</p>
				<h4>
					<strong class="">TRAILER: </strong>
				</h4>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/fuGRN3dYHKg" frameborder="0"
					allowfullscreen></iframe>
			</div>
		</div>
		<div class="row" style="padding: 10px; padding-top: 20px; background: #687989; margin-bottom:30px;">
			<div class="col-sm-6 text-center">
				<a class="btn btn-primary" role="button" data-toggle="collapse"
					href="#collapseExample" aria-expanded="false"
					aria-controls="collapseExample"
					style="background-color: #314456; border-color: #314456;">Días
					disponibles</a>
					

				<div class="collapse" id="collapseExample">
					<div class="well"><strong>Estos son los días disponibles:</strong>
					<div style="margin-bottom:10px;"></div>
					<a class="btn btn-danger" role="button" href="#" >11 ENERO</a>
					<a class="btn btn-danger" role="button" href="#" >12 ENERO</a>
					<a class="btn btn-danger" role="button" href="#" ">13 ENERO</a>
					<a class="btn btn-danger" role="button" href="#" ">14 ENERO</a>
					<a class="btn btn-danger" role="button" href="#" ">15 ENERO</a>
					</div>
				</div>
			</div>
			<div class="col-sm-6 text-center">
				<a class="btn btn-primary" role="button" data-toggle="collapse" href="#collapsehoras" aria-expanded="false" aria-controls="collapsehoras"
					style="background-color: #314456; border-color: #314456;">Horas disponibles</a>
				
				
				<div class="collapse" id="collapsehoras">
					<div class="well"><strong>Estos son las horas disponibles de sesión para el día seleccionado</strong>
					<div style="margin-bottom:10px;"></div>
				<a class="btn btn-danger" role="button" href="#" >22:00</a>
					<a class="btn btn-danger" role="button" href="#" >20:00</a>
					<a class="btn btn-danger" role="button" href="#" ">18:00</a>
					</div>
				</div>
			</div>
			</div>
			</section>
	<!--/#title-->
	<section class="container">
	<h2>Comentarios de los usuarios</h2>
		<div class="all-comments">
						<div class="all-comments-info">
							<a href="#">Envíe un comentario</a>
							<div class="agile-info-wthree-box">
								<form>
									<textarea placeholder="Mensaje" required=""></textarea>
									<input type="submit" value="Enviar">
									<div class="clearfix"> </div>
								</form>
							</div>
						</div>
						<div class="media-grids">
							<div class="media">
								<h5>TOM BROWN</h5>
								<div class="media-left">
									<a href="#">
										<img src="images/user.jpg" title="One movies" alt=" " />
									</a>
								</div>
								<div class="media-body">
									<p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet ipsum id ex pretium hendrerit maecenas imperdiet ipsum id ex pretium hendrerit</p>
									<span>View all posts by :<a href="#"> Admin </a></span>
								</div>
							</div>
							<div class="media">
								<h5>MARK JOHNSON</h5>
								<div class="media-left">
									<a href="#">
									<img src="images/user.jpg" title="One movies" alt=" " />
									</a>
								</div>
								<div class="media-body">
									<p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet ipsum id ex pretium hendrerit maecenas imperdiet ipsum id ex pretium hendrerit</p>
									<span>View all posts by :<a href="#"> Admin </a></span>
								</div>
							</div>
							<div class="media">
								<h5>STEVEN SMITH</h5>
								<div class="media-left">
									<a href="#">
									<img src="images/user.jpg" title="One movies" alt=" " />
									</a>
								</div>
								<div class="media-body">
									<p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet ipsum id ex pretium hendrerit maecenas imperdiet ipsum id ex pretium hendrerit</p>
									<span>View all posts by :<a href="#"> Admin </a></span>
								</div>
							</div>

						</div>
					</div>
	</section>

	<%@ include file="principales/footer.jsp"%>
</body>
</html>