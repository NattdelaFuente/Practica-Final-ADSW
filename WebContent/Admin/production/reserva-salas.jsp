<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <% if (session.getAttribute("username") == null  || session.getAttribute("username").equals("") || ! session.getAttribute("username").equals("admin") )
    {
    	response.sendRedirect("../../index.jsp");
    	
    }
    else
    {
    	//prueba de sesion;
    	 
    	
    }
    	
    	%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Reservas </title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- bootstrap-progressbar -->
    <link href="../vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
  </head>

   <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.jsp" class="site_title"><i class="fa fa-ticket"></i> <span>Administración</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Bienvenido,</span>
                <h2>Administrador</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li><a href="index.jsp"><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                    
                  </li>
                  <li><a><i class="glyphicon glyphicon-film"></i> &nbsp;&nbsp;&nbsp;Gestión Peliculas <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="insertar-pelicula.jsp">Insertar</a></li>
                      <li><a href="consultar-pelicula.jsp">Consultar/Modificar</a></li>
                      
                    </ul>
                  </li>
                  <li><a><i class="fa fa-desktop"></i> Gestión Salas <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="insertar-sala.jsp">Insertar</a></li>
                      <li><a href="consultar-sala.jsp">Consultar/Modificar</a></li>
                    </ul>
                  </li>
                   <li><a><i class="fa fa-table"></i> Gestión Sesiones <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="insertar-sesion.jsp">Insertar</a></li>
                      <li><a href="consultar-sesion.jsp">Consultar/Modificar</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-bar-chart-o"></i> Gestión Reservas <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="reserva-entradas.jsp">Entradas</a></li>
                      <li><a href="reserva-salas.jsp">Salas</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-clone"></i>Gestión de Informes<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                       <li><a href="generos.jsp">Por genero</a></li>
                      <li><a href="por-sala.jsp">Por sala</a></li>
                    </ul>
                  </li>
                </ul>
              </div>
              

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout">
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
                <li class="">
                  <a href="login.jsp" class="user-profile button-toggle"  aria-expanded="false">
                    <i class="fa fa-sign-out pull-right"></i>Cerrar Sesión
                    
                  </a>
                  
                </li>

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
                <h3>Reservas <small>Salas</small></h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                  </div>
                </div>
              </div>
            </div>

            <div class="clearfix"></div>

           
            <div class="clearfix"></div>                                          
                                                                
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            Cinesa Cines
          </div>
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
    <script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>

    <!-- chart js -->
    <!-- <script type="text/javascript" src="js/moment/moment.min.js"></script> -->
    <!-- <script src="js/chartjs/chart.min.js"></script> -->
    <!-- bootstrap progress js -->
    <!-- <script src="js/progressbar/bootstrap-progressbar.min.js"></script> -->
    <!-- icheck -->
    <!-- <script src="js/icheck/icheck.min.js"></script> -->

    <!-- <script src="../build/js/custom.min.js"></script> -->

    <!-- pace -->
    <!-- <script src="js/pace/pace.min.js"></script> -->

    <!-- sparkline -->
    <!-- <script src="js/sparkline/jquery.sparkline.min.js"></script> -->
    <!-- easypie -->
    <!-- <script src="js/easypie/jquery.easypiechart.min.js"></script> -->
  
<script>
  // Bar chart
      var ctx = document.getElementById("mybarChart");
      var mybarChart = new Chart(ctx, {
        type: 'bar',
        data: {
          labels: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"],
          datasets: [{
            label: 'Menores',
            backgroundColor: "#26B99A",
            data: [600, 300, 400, 280, 520, 500, 450,600,500,650,407,608]
          }, {
            label: 'Adultos',
            backgroundColor: "#03586A",
            data: [941, 1056, 1025, 948, 1172, 1234, 912,900,1005,899,798,1059]
          }]
        },

        options: {
          scales: {
            yAxes: [{
              ticks: {
                beginAtZero: true
              }
            }]
          }
        }
      });
    </script>
    
   
  </body>
</html>