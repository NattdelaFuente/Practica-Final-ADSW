<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="ClasesModelo.Pelicula"%>
<%@page import="ClasesModelo.CineDAO"%>

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
										</a></li>
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
							
							
						<li><a class="btn btn-default" href="#" data-filter=".Comedia">Comedia</a></li>
						<li><a class="btn btn-default" href="#"
							data-filter=".Acción">Acción</a></li>
						<li><a class="btn btn-default" href="#" data-filter=".Animación">Animación</a></li>
						<li><a class="btn btn-default" href="#" data-filter=".CienciaFicción">Ciencia Ficción</a></li>
						<li><a class="btn btn-default" href="#" data-filter=".Drama">Drama</a></li>
						<li><a class="btn btn-default" href="#"
							data-filter=".Terror">Terror</a></li>
					</ul>
					<!--/#portfolio-filter-->
					<ul class="portfolio-items col-8">
						<!-- FIN MODAL -->
						
						
						                        
                                <%    

							        	CineDAO dao = new CineDAO();      
							       
								        List<Pelicula> list = dao.getListaTodasPeliculas();
								        for (int i=0; i<list.size();i++)
								        {
								        	
								       	%>
											<li class="portfolio-item <%=list.get(i).getGenero().replaceAll("\\s+","") %>">
												<div class="item-inner">
													<img class="responsive"
														style="max-height: 350px; min-height: 350px; widht: 100%;"
														src="<%=list.get(i).getImagen() %>" alt="">
													<h5><%=list.get(i).getName() %></h5>
													<div class="overlay">
														<a class="preview btn btn-danger" type="button"
															data-toggle="modal" data-target="#<%=i %>"><i
															class="icon-eye-open"></i></a>
					
													</div>
												</div>
											</li>
						
		
						
						
						

						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						<div id="<%=i %>" class="modal fade" role="dialog">
							<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content colorfondo">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h3 class="modal-title colorinfo3">
											<strong><%=list.get(i).getName() %></strong>
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
														<strong class="colorinfo2">Título original: </strong> <%=list.get(i).getOriginal() %>
													</p>
													<p class="colorinfo3">
														<strong class="colorinfo2">Género: </strong> <%=list.get(i).getGenero() %>
													</p>
													<p class="colorinfo3">
														<strong class="colorinfo2">Duración: </strong> <%=list.get(i).getDuracion() %>
													</p>
													<p class="colorinfo3">
														<strong class="colorinfo2">Clasificación: </strong> <%=list.get(i).getEdad() %>
													</p>
													<p class="colorinfo3">
														<strong class="colorinfo2">Director: </strong> <%=list.get(i).getDirector() %>
													</p>
													<p class="colorinfo3">
														<strong class="colorinfo2">Nacionalidad: </strong> <%=list.get(i).getNacionalidad() %>
													</p>
													<p class="colorinfo3">
														<strong class="colorinfo2">Año: </strong> <%=list.get(i).getAnyo() %>
													</p>
													<p class="colorinfo3">
														<strong class="colorinfo2">Distribuidora: </strong> <%=list.get(i).getDistribuidora() %>
													</p>
													<p class="colorinfo3">
														<strong class="colorinfo2">Otros: </strong> <%=list.get(i).getOtros() %>
													</p>
													<p class="colorinfo3">
														<strong class="colorinfo2">Página oficial: </strong>
														<%=list.get(i).getWebsite() %>
													</p>
													<p class="colorinfo3">
														<strong class="colorinfo2">Actores: </strong> <%=list.get(i).getActores() %>
													</p>
												</div>
												<div class="col-sm-1"></div>
												<div class="col-sm-5" style="margin-top: 20px;">
													<img class="responsive"
														style="max-height: 350px; min-height: 350px;"
														src="<%=list.get(i).getImagen() %>" alt="">
												</div>
											</div>
											<!--FIN parte PELI -->
										</div>
										<hr>
										<h5>
											<strong>Sinopsis: </strong><%=list.get(i).getSinopsis() %>
										</h5>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Cerrar</button>
									</div>
								</div>

							</div>
						</div>






						    	<%
								        }      
							        	%>
						















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

	</script>

	<script src="../../js/jquery.js"></script>
	<script src="../../js/bootstrap.min.js"></script>
	<script src="../../js/jquery.prettyPhoto.js"></script>
	<script src="../../js/jquery.isotope.min.js"></script>
	<script src="../../js/main.js"></script>
	
	<script>
		//portfolio
	$(window).load(function(){
		$portfolio_selectors = $('.portfolio-filter >li>a');
		if($portfolio_selectors!='undefined'){
			$portfolio = $('.portfolio-items');
			$portfolio.isotope({
				itemSelector : 'li',
				layoutMode : 'fitRows'
			});
			$portfolio_selectors.on('click', function(){
				$portfolio_selectors.removeClass('active');
				$(this).addClass('active');
				var selector = $(this).attr('data-filter');
				$portfolio.isotope({ filter: selector });
				return false;
			});
		}
	});
	</script>

</body>
</html>