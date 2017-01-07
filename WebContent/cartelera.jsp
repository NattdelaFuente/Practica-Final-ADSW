<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Plantilla</title>
<%@ include file="principales/elementshead.jsp"%>

<style type="text/css">
.container {
	padding: 20px;
}

.altura {
	height: 130px;
}

.profile-card {
	background-color: #34495e;
	margin-bottom: 20px;
}

.profile-pic {
	border-radius: 50%;
	position: absolute;
	top: -65px;
	left: 0;
	right: 0;
	margin: auto;
	z-index: 1;
	max-width: 100px;
	-webkit-transition: all 0.4s;
	transition: all 0.4s;
}

.profile-info {
	color: #BDBDBD;
	padding: 25px;
	position: relative;
	margin-top: 15px;
}

.profile-info h2 {
	color: #E8E8E8;
	letter-spacing: 4px;
	padding-bottom: 12px;
}

.profile-info span {
	display: block;
	font-size: 12px;
	color: yellow;
	letter-spacing: 2px;
}

.botonReserva:hover {
	background: yellow !important;
	color: #34495e !important;
}

.profile-info a {
	color: #4CB493;
}

.profile-info i {
	padding: 15px 35px 0px 35px;
}

.profile-card:hover .profile-pic {
	transform: scale(1.1);
}

.profile-card:hover .profile-info hr {
	opacity: 1;
}

/* Underline From Center */
.hvr-underline-from-center {
	display: inline-block;
	vertical-align: middle;
	-webkit-transform: translateZ(0);
	transform: translateZ(0);
	box-shadow: 0 0 1px rgba(0, 0, 0, 0);
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	-moz-osx-font-smoothing: grayscale;
	position: relative;
	overflow: hidden;
}

.hvr-underline-from-center:before {
	content: "";
	position: absolute;
	z-index: -1;
	left: 52%;
	right: 52%;
	bottom: 0;
	background: #FFFFFF;
	border-radius: 50%;
	height: 3px;
	-webkit-transition-property: all;
	transition-property: all;
	-webkit-transition-duration: 0.2s;
	transition-duration: 0.2s;
	-webkit-transition-timing-function: ease-out;
	transition-timing-function: ease-out;
}

.profile-card:hover .hvr-underline-from-center:before, .profile-card:focus .hvr-underline-from-center:before,
	.profile-card:active .hvr-underline-from-center:before {
	left: 0;
	right: 0;
	height: 1px;
	background: #CECECE;
}

.pagination>li>a, .pagination>li>span {
	border-radius: 50% !important;
	margin: 0 5px;
}

.cabecarte{
    padding-top: 0px;
    padding-bottom: 0px;
}

body > section {
    padding: 0px 0; 
}

</style>

</head>
<body>
	<%@ include file="principales/cabecera.jsp"%>

	<section id="title" class="emerald2" style="padding-bottom:1px;">
	<div class="container">
		<div class="row">
			<div class="col-sm-6" style="padding-top: 30px;">
				<h1>Cartelera CINESA</h1>
				<p>
					¡Aquí tienes todas las películas que no te puedes perder!</strong>
				</p>
			</div>
			<div class="col-sm-6">
				<ul class="breadcrumb pull-right">
					<li><a href="index.html">Inicio</a></li>
					<li class="active">Cartelera</li>
				</ul>
			</div>
		</div>
	</div>
	</section>
	<!--/#title-->
	<section id="main-slider" class="no-margin">
	<div class="carousel slide wet-asphalt">
		<ol class="carousel-indicators">
			<li data-target="#main-slider" data-slide-to="0" class="active"></li>
			<li data-target="#main-slider" data-slide-to="1"></li>
			<li data-target="#main-slider" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" style="height: 300px">
			<div class="item active"
				style="background-image: url(images/slider/bg1.jpg)">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<div class="carousel-content centered">
								
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--/.item-->
			<div class="item"
				style="background-image: url(images/slider/bg2.jpg)">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<div class="carousel-content center centered">
								
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--/.item-->
			<div class="item"
				style="background-image: url(images/slider/bg3.jpg)">
				<div class="container">
					<div class="row">
						<div class="col-sm-6">
							<div class="carousel-content centered">
								
							</div>
						</div>
						<div class="col-sm-6 hidden-xs animation animated-item-4">
							
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--/.item-->
		</div>
		<!--/.carousel-inner-->
	</div>
	<!--/.carousel--> </section>
	<!--/#main-slider-->
	<section style="background:#314456; color:#F0F0F1; padding:0px; ">
	<div class="container"
		style="background: #314456; color: #F0F0F1; padding: 0px;">
		<div class="row">
			<div class="col-lg-12 text-center" style="margin-bottom: 20px;">
				<h1>Películas Disponibles</h1>
			</div>
		</div>
	</div>
	</section>
	<div class="container">
		<div class="row">
			<link rel="stylesheet"
				href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

			<div class="container">
				<div class="row ">
					<script async
						src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
					<!-- bootsnipp Circle Menu -->
					<ins class="adsbygoogle" style="display: block"
						data-ad-client="ca-pub-5715866801509976" data-ad-slot="3922266447"
						data-ad-format="auto"></ins>
					<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
					<br> <br>
					<div class="col-lg-12">
						<div>


							<div class="col-md-3">
								<div class="profile-card text-center"
									style="max-height: 650px; min-height: 650px;">
									<img class="img-responsive"
										style="max-height: 350px; min-height: 350px;"
										src="https://www.cinesa.es/Manager/Peliculas/100metros/cartelera.jpg">
									<div class="profile-info">
										<h2 class="hvr-underline-from-center altura">
											ANIMALES N.<span>116 min / D: Justin Kurzel</span>
										</h2>
										<a class="btn text-center botonReserva" href="pelicula.jsp"
											style="background: #E8E8E8; color: #34495e; padding: 5px; margin-top: 20px;">Reservar
											Entradas</a>
									</div>

								</div>
							</div>
							<div class="col-md-3">
								<div class="profile-card text-center"
									style="max-height: 650px; min-height: 650px;">
									<img class="img-responsive"
										style="max-height: 350px; min-height: 350px;"
										src="https://www.cinesa.es/Manager/Peliculas/100metros/cartelera.jpg">
									<div class="profile-info">
										<h2 class="hvr-underline-from-center altura">
											ANIMALES N.<span>116 min / D: Justin Kurzel</span>
										</h2>
										<a class="btn text-center botonReserva" href="pelicula.jsp"
											style="background: #E8E8E8; color: #34495e; padding: 5px; margin-top: 20px;">Reservar
											Entradas</a>
									</div>

								</div>
							</div>
							<div class="col-md-3">
								<div class="profile-card text-center"
									style="max-height: 650px; min-height: 650px;">
									<img class="img-responsive"
										style="max-height: 350px; min-height: 350px;"
										src="https://www.cinesa.es/Manager/Peliculas/100metros/cartelera.jpg">
									<div class="profile-info">
										<h2 class="hvr-underline-from-center altura">
											ANIMALES N.<span>116 min / D: Justin Kurzel</span>
										</h2>
										<a class="btn text-center botonReserva" href="pelicula.jsp"
											style="background: #E8E8E8; color: #34495e; padding: 5px; margin-top: 20px;">Reservar
											Entradas</a>
									</div>

								</div>
							</div>
							<div class="col-md-3">
								<div class="profile-card text-center"
									style="max-height: 650px; min-height: 650px;">
									<img class="img-responsive"
										style="max-height: 350px; min-height: 350px;"
										src="https://www.cinesa.es/Manager/Peliculas/100metros/cartelera.jpg">
									<div class="profile-info">
										<h2 class="hvr-underline-from-center altura">
											ANIMALES N.<span>116 min / D: Justin Kurzel</span>
										</h2>
										<a class="btn text-center botonReserva" href="pelicula.jsp"
											style="background: #E8E8E8; color: #34495e; padding: 5px; margin-top: 20px;">Reservar
											Entradas</a>
									</div>

								</div>
							</div>


						</div>
					</div>


					<!-- fila 2 de pelis -->

					<div class="col-lg-12">
						<div>


							<div class="col-md-3">
								<div class="profile-card text-center"
									style="max-height: 650px; min-height: 650px;">
									<img class="img-responsive"
										style="max-height: 350px; min-height: 350px;"
										src="https://www.cinesa.es/Manager/Peliculas/100metros/cartelera.jpg">
									<div class="profile-info">
										<h2 class="hvr-underline-from-center altura">
											ANIMALES N.<span>116 min / D: Justin Kurzel</span>
										</h2>
										<a class="btn text-center botonReserva" href="pelicula.jsp"
											style="background: #E8E8E8; color: #34495e; padding: 5px; margin-top: 20px;">Reservar
											Entradas</a>
									</div>

								</div>
							</div>
							<div class="col-md-3">
								<div class="profile-card text-center"
									style="max-height: 650px; min-height: 650px;">
									<img class="img-responsive"
										style="max-height: 350px; min-height: 350px;"
										src="https://www.cinesa.es/Manager/Peliculas/100metros/cartelera.jpg">
									<div class="profile-info">
										<h2 class="hvr-underline-from-center altura">
											ANIMALES N.<span>116 min / D: Justin Kurzel</span>
										</h2>
										<a class="btn text-center botonReserva" href="pelicula.jsp"
											style="background: #E8E8E8; color: #34495e; padding: 5px; margin-top: 20px;">Reservar
											Entradas</a>
									</div>

								</div>
							</div>
							<div class="col-md-3">
								<div class="profile-card text-center"
									style="max-height: 650px; min-height: 650px;">
									<img class="img-responsive"
										style="max-height: 350px; min-height: 350px;"
										src="https://www.cinesa.es/Manager/Peliculas/100metros/cartelera.jpg">
									<div class="profile-info">
										<h2 class="hvr-underline-from-center altura">
											ANIMALES N.<span>116 min / D: Justin Kurzel</span>
										</h2>
										<a class="btn text-center botonReserva" href="pelicula.jsp"
											style="background: #E8E8E8; color: #34495e; padding: 5px; margin-top: 20px;">Reservar
											Entradas</a>
									</div>

								</div>
							</div>
							<div class="col-md-3">
								<div class="profile-card text-center"
									style="max-height: 650px; min-height: 650px;">
									<img class="img-responsive"
										style="max-height: 350px; min-height: 350px;"
										src="https://www.cinesa.es/Manager/Peliculas/100metros/cartelera.jpg">
									<div class="profile-info">
										<h2 class="hvr-underline-from-center altura">
											ANIMALES N.<span>116 min / D: Justin Kurzel</span>
										</h2>
										<a class="btn text-center botonReserva" href="pelicula.jsp"
											style="background: #E8E8E8; color: #34495e; padding: 5px; margin-top: 20px;">Reservar
											Entradas</a>
									</div>

								</div>
							</div>


						</div>
					</div>

				</div>
			</div>
		</div>

	</div>

	<%@ include file="principales/footer.jsp"%>

</body>
</html>