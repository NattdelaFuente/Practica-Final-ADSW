<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Informes por Género</title>

<!-- Bootstrap -->
<link href="../vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link href="../vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
<!-- bootstrap-progressbar -->
<link
	href="../vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css"
	rel="stylesheet">


<link href="../../css/font-awesome.min.css" rel="stylesheet">
<link href="../../css/prettyPhoto.css" rel="stylesheet">
<link href="../../css/animate.css" rel="stylesheet">
<link href="../../css/main.css" rel="stylesheet">

<!-- Custom Theme Style -->
<link href="../build/css/custom.min.css" rel="stylesheet">
<style type="text/css">
.colorinfo2 {
	color: yellow !important;
}

.colorfondo {
	background-color: #2A3F54 !important;
}

.colorinfo3 {
	color: white !important;
}
</style>
</head>

<body class="nav-md" style="padding-top: 0px;">
	<div class="container body"
		style="margin-right: 0px; margin-left: 0px;">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a href="index.jsp" class="site_title"><i class="fa fa-ticket"></i>
							<span>Administración</span></a>
					</div>

					<div class="clearfix"></div>

					<!-- menu profile quick info -->
					<div class="profile clearfix">
						<div class="profile_pic">
							<img src="images/img.jpg" alt="..."
								class="img-circle profile_img">
						</div>
						<div class="profile_info">
							<span>Bienvenido,</span>
							<h2>Administrador</h2>
						</div>
					</div>
					<!-- /menu profile quick info -->

					<br />

					<!-- sidebar menu -->
					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">
						<div class="menu_section">
							<h3>General</h3>
							<ul class="nav side-menu">
								<li><a href="index.jsp"><i class="fa fa-home"></i> Home
										<span class="fa fa-chevron-down"></span></a></li>
								<li><a><i class="glyphicon glyphicon-film"></i>&nbsp;&nbsp;&nbsp;&nbsp;
										Gestión Peliculas <span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="insertar-pelicula.jsp">Insertar</a></li>
										<li><a href="consultar-pelicula.jsp">Consultar/Modificar</a></li>

									</ul></li>
								<li><a><i class="fa fa-desktop"></i> Gestión Salas <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="insertar-sala.jsp">Insertar</a></li>
										<li><a href="consultar-sala.jsp">Consultar/Modificar</a></li>
									</ul></li>
								<li><a><i class="fa fa-table"></i> Gestión Sesiones <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="insertar-sesion.jsp">Insertar</a></li>
										<li><a href="consultar-sesion.jsp">Consultar/Modificar</a></li>
									</ul></li>
								<li><a><i class="fa fa-bar-chart-o"></i> Gestión
										Reservas <span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="reserva-entradas.jsp">Entradas</a></li>
										<li><a href="reserva-salas.jsp">Salas</a></li>
									</ul></li>
								<li><a><i class="fa fa-clone"></i>Gestión de Informes<span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="generos.jsp">Por genero</a></li>
										<li><a href="por-sala.jsp">Por sala</a></li>
									</ul></li>
							</ul>
						</div>


					</div>
					<!-- /sidebar menu -->

					<!-- /menu footer buttons -->
					<div class="sidebar-footer hidden-small">
						<a data-toggle="tooltip" data-placement="top" title="Settings">
							<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="FullScreen">
							<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Lock"> <span
							class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Logout">
							<span class="glyphicon glyphicon-off" aria-hidden="true"></span>
						</a>
					</div>
					<!-- /menu footer buttons -->
				</div>
			</div>

			<!-- top navigation -->
			<div class="top_nav">
				<div class="nav_menu">
					<nav>
					<div class="nav toggle">
						<a id="menu_toggle"><i class="fa fa-bars"></i></a>
					</div>

					<ul class="nav navbar-nav navbar-right">
						<li class=""><a onClick=logout()
							class="user-profile button-toggle" aria-expanded="false"> <i
								class="fa fa-sign-out pull-right"></i>Cerrar Sesión

						</a></li>

					</ul>
					</nav>
				</div>
			</div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<div class="">
					<div class="page-title">
						<div class="title_left">
							<h3>
								Informes de Películas <small>por géneros</small>
							</h3>
						</div>
					</div>

					<div class="clearfix"></div>
					<section id="portfolio" class="container" style="padding-top:20px;">
					<ul class="portfolio-filter">
						<li><a class="btn btn-default active" href="#"
							data-filter="*">Todas las salas</a></li>
						<li><a class="btn btn-default" href="#" data-filter=".3d">Comedia</a></li>
						<li><a class="btn btn-default" href="#"
							data-filter=".comdeia">XXX</a></li>
						<li><a class="btn btn-default" href="#" data-filter=".drama">Drama</a></li>
						<li><a class="btn btn-default" href="#" data-filter=".terror">Terror</a></li>
						<li><a class="btn btn-default" href="#" data-filter=".accion">Acción</a></li>
						<li><a class="btn btn-default" href="#"
							data-filter=".animacion">Animación</a></li>
					</ul>
					<!--/#portfolio-filter-->
					<ul class="portfolio-items col-3">
						<!-- FIN MODAL -->
						<li class="portfolio-item animacion">
							<div class="item-inner">
								<img class="responsive"
									style="max-height: 350px; min-height: 350px; widht: 100%;"
									src="stylePeli/images/c10.jpg" alt="">
								<h5>Nombre de la sala Animación (ejemplo: Sala Animación -
									Roca)</h5>
								<div class="overlay">
									<a class="preview btn btn-danger" type="button"
										data-toggle="modal" data-target="#1"><i
										class="icon-eye-open"></i></a>

								</div>
							</div>
						</li>
						<div id="1" class="modal fade" role="dialog">
							<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content colorfondo">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h3 class="modal-title colorinfo3">
											<strong>Nombre de la pelíula</strong>
										</h3>
									</div>
									<div class="modal-body">
										<div class="container">
											<!--parte PELI -->
											<div class="row">
												<div class="col-sm-5">
													<h4 style="padding-bottom: 8px;">
														<strong class="colorinfo2"
															style="border-bottom: 1px solid white;">INFORMACIÓN</strong>
													</h4>
													<p class="colorinfo3">
														<strong class="colorinfo2">Título original: </strong> 1
													</p>
													<p class="colorinfo3">
														<strong class="colorinfo2">Género: </strong> 12
													</p>
													<p class="colorinfo3">
														<strong class="colorinfo2">Duración: </strong> 23
													</p>
													<p class="colorinfo3">
														<strong class="colorinfo2">Clasificación: </strong> 60
													</p>
													<p class="colorinfo3">
														<strong class="colorinfo2">Director: </strong> 60
													</p>
													<p class="colorinfo3">
														<strong class="colorinfo2">Nacionalidad: </strong> 60
													</p>
													<p class="colorinfo3">
														<strong class="colorinfo2">Año: </strong> 60
													</p>
													<p class="colorinfo3">
														<strong class="colorinfo2">Distribuidora: </strong> 60
													</p>
													<p class="colorinfo3">
														<strong class="colorinfo2">Otros: </strong> 60
													</p>
													<p class="colorinfo3">
														<strong class="colorinfo2">Página oficial: </strong>
														602222222222 22 2 2 2 2 33324r42f sdasa asdasdasda assa
														asd
													</p>
													<p class="colorinfo3">
														<strong class="colorinfo2">Actores: </strong> 602222222222
														22 2 2 2 2 33324r42f sdasa asdasdasda aafas asdasfa asda
														aaasdacsc acaassa asd
													</p>
												</div>
												<div class="col-sm-1"></div>
												<div class="col-sm-5" style="margin-top: 20px;">
													<img class="responsive"
														style="max-height: 350px; min-height: 350px;"
														src="stylePeli/images/c10.jpg" alt="">
												</div>
											</div>
											<!--FIN parte PELI -->
										</div>
										<hr>
										<h5>
											<strong>Datos de interés: </strong>PONER AQUÍ UN COMENTARIO
											SOBRE LA SALASI LO TIENE Y SINO LO TIENE PONER POR DEFECTO:
											ESTA SALA NO TIENE INFORMACIÓN ADICIONAL 602222222222 22 2 2
											2 2 33324r42f sdasa asdasdasda aafas asdasfa asda aaasdacsc
											acaassa asd602222222222 22 2 2 2 2 33324r42f sdasa asdasdasda
											aafas asdasfa asda aaasdacsc acaassa asd602222222222 22 2 2 2
											2 33324r42f sdasa asdasdasda aafas asdasfa asda aaasdacsc
											acaassa asd602222222222 22 2 2 2 2 33324r42f sdasa asdasdasda
											aafas asdasfa asda aaasdacsc acaassa asd602222222222 22 2 2 2
											2 33324r42f sdasa asdasdasda aafas asdasfa asda aaasdacsc
											acaassa asd602222222222 22 2 2 2 2 33324r42f sdasa asdasdasda
											aafas asdasfa asda aaasdacsc acaassa asd602222222222 22 2 2 2
											2 33324r42f sdasa asdasdasda aafas asdasfa asda aaasdacsc
											acaassa asd602222222222 22 2 2 2 2 33324r42f sdasa asdasdasda
											aafas asdasfa asda aaasdacsc acaassa asd602222222222 22 2 2 2
											2 33324r42f sdasa asdasdasda aafas asdasfa asda aaasdacsc
											acaassa asd602222222222 22 2 2 2 2 33324r42f sdasa asdasdasda
											aafas asdasfa asda aaasdacsc acaassa asd
										</h5>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Cerrar</button>
									</div>
								</div>

							</div>
						</div>

						<!-- FIN MODAL -->
						<!--/.portfolio-item-->
						<li class="portfolio-item joomla drama">
							<div class="item-inner">
								<img src="images/portfolio/thumb/item2.jpg" alt="">
								<h5>Lorem ipsum dolor sit amet</h5>
								<div class="overlay">
									<a class="preview btn btn-danger"
										href="images/portfolio/full/item2.jpg" rel="prettyPhoto"><i
										class="icon-eye-open"></i></a>
								</div>
							</div>
						</li>
						<!--/.portfolio-item-->
						<li class="portfolio-item 3d wordpress">
							<div class="item-inner">
								<img src="images/portfolio/thumb/item3.jpg" alt="">
								<h5>Lorem ipsum dolor sit amet</h5>
								<div class="overlay">
									<a class="preview btn btn-danger"
										href="images/portfolio/full/item3.jpg" rel="prettyPhoto"><i
										class="icon-eye-open"></i></a>
								</div>
							</div>
						</li>
						<!--/.portfolio-item-->
						<li class="portfolio-item joomla drama apps">
							<div class="item-inner">
								<img src="images/portfolio/thumb/item4.jpg" alt="">
								<h5>Lorem ipsum dolor sit amet</h5>
								<div class="overlay">
									<a class="preview btn btn-danger"
										href="images/portfolio/full/item4.jpg" rel="prettyPhoto"><i
										class="icon-eye-open"></i></a>
								</div>
							</div>
						</li>
						<!--/.portfolio-item-->
						<li class="portfolio-item 3d html">
							<div class="item-inner">
								<img src="images/portfolio/thumb/item5.jpg" alt="">
								<h5>Lorem ipsum dolor sit amet</h5>
								<div class="overlay">
									<a class="preview btn btn-danger"
										href="images/portfolio/full/item5.jpg" rel="prettyPhoto"><i
										class="icon-eye-open"></i></a>
								</div>
							</div>
						</li>
						<!--/.portfolio-item-->
						<li class="portfolio-item wordpress html">
							<div class="item-inner">
								<img src="images/portfolio/thumb/item6.jpg" alt="">
								<h5>Lorem ipsum dolor sit amet</h5>
								<div class="overlay">
									<a class="preview btn btn-danger"
										href="images/portfolio/full/item6.jpg" rel="prettyPhoto"><i
										class="icon-eye-open"></i></a>
								</div>
							</div>
						</li>
						<!--/.portfolio-item-->
					</ul>
					</section>

					<div class="clearfix"></div>

				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
	</div>
	<!-- /page content -->

	<!--/#portfolio-->
	<!-- footer content -->
	<footer>
	<div class="pull-right">Cinesa Cines</div>
	<div class="clearfix"></div>
	</footer>
	<!-- /footer content -->
	</div>
	</div>

	<!-- jQuery -->
	<script src="../vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="../vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="../vendors/nprogress/nprogress.js"></script>
	<!-- Chart.js -->
	<script src="../vendors/Chart.js/dist/Chart.min.js"></script>
	<!-- jQuery Sparklines -->

	<!-- easy-pie-chart -->

	<!-- bootstrap-progressbar -->
	<script
		src="vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>

	<!-- Custom Theme Scripts -->
	<script src="../build/js/custom.min.js"></script>
	<script>
		// Bar chart
		var ctx = document.getElementById("mybarChart");
		var mybarChart = new Chart(ctx, {
			type : 'bar',
			data : {
				labels : [ "Enero", "Febrero", "Marzo", "Abril", "Mayo",
						"Junio", "Julio", "Agosto", "Septiembre", "Octubre",
						"Noviembre", "Diciembre" ],
				datasets : [
						{
							label : 'Menores',
							backgroundColor : "#26B99A",
							data : [ 600, 300, 400, 280, 520, 500, 450, 600,
									500, 650, 407, 608 ]
						},
						{
							label : 'Adultos',
							backgroundColor : "#03586A",
							data : [ 941, 1056, 1025, 948, 1172, 1234, 912,
									900, 1005, 899, 798, 1059 ]
						} ]
			},

			options : {
				scales : {
					yAxes : [ {
						ticks : {
							beginAtZero : true
						}
					} ]
				}
			}
		});
	</script>

	<script src="../../js/jquery.js"></script>
	<script src="../../js/bootstrap.min.js"></script>
	<script src="../../js/jquery.prettyPhoto.js"></script>
	<script src="../../js/jquery.isotope.min.js"></script>
	<script src="../../js/main.js"></script>

</body>
</html>