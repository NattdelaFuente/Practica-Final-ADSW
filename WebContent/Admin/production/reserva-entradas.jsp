<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>

<%@page import="ClasesModelo.Entrada"%>
<%@page import="ClasesModelo.Reserva"%>
<%@page import="ClasesModelo.CineDAO"%>
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
    <link href="../../css/bootstrap-table.css" rel="stylesheet">

  </head>

   <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.jsp" class="site_title"><i class="fa fa-ticket"></i> <span>Administraci�n</span></a>
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
                  <li><a><i class="glyphicon glyphicon-film"></i> &nbsp;&nbsp;&nbsp;Gesti�n Peliculas <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="insertar-pelicula.jsp">Insertar</a></li>
                      <li><a href="consultar-pelicula.jsp">Consultar/Modificar</a></li>
                      
                    </ul>
                  </li>
                  <li><a><i class="fa fa-desktop"></i> Gesti�n Salas <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="insertar-sala.jsp">Insertar</a></li>
                      <li><a href="consultar-sala.jsp">Consultar/Modificar</a></li>
                    </ul>
                  </li>
                   <li><a><i class="fa fa-table"></i> Gesti�n Sesiones <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="insertar-sesion.jsp">Insertar</a></li>
                      <li><a href="consultar-sesion.jsp">Consultar/Modificar</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-bar-chart-o"></i> Gesti�n Reservas <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="reserva-entradas.jsp">Entradas</a></li>
                      <li><a href="reserva-salas.jsp">Salas</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-clone"></i>Gesti�n de Informes<span class="fa fa-chevron-down"></span></a>
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
                  <a onClick=logout() class="user-profile button-toggle"  aria-expanded="false">
                    <i class="fa fa-sign-out pull-right"></i>Cerrar Sesi�n
                    
                  </a>
                  
                </li>

              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
    <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Modificar/Consultar y borrar</small></h3>
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


            <div class="row">
              
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Salas</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>

                  <div class="x_content">

                    <p>Reservas reazalidas</p>

                    <div class="table-responsive">


<table border="1" id="table">
</table>





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
    <script src="../../js/bootstrap-table.js"></script>


  
 <script>
 
 


//Bootstrap Table - subtable example with real data, forked from http://jsfiddle.net/myvykf24/1/ and created for https://github.com/wenzhixin/bootstrap-table/issues/2121

 var data = [ 
				<%

				CineDAO cine = new CineDAO();
				List<Reserva> listaReservas = cine.getListaReservas();
				
		        for (int i=0; i<listaReservas.size();i++)
		        {
		        	List<Entrada> listaEntradasReserva = cine.getListaEntradasReserva(listaReservas.get(i).getIdRreserva());
		   

		       	%>      
             
					  {
						   'Dummy': '',
						   'ID reserva': '<%=listaReservas.get(i).getIdRreserva() %>',
						   'Usuario': '<%=listaReservas.get(i).getUsername() %>',
						   'Tarjeta': '<%=listaReservas.get(i).getTarjeta() %>',
						   'ID sesion': '<%=listaReservas.get(i).getIdSesion() %>',
						   'N� Entradas': '<%=listaEntradasReserva.size() %>',
					   
					   	   'nested': 
					   		  [
					   		   
				<%
				
	        	
	        	for (int u=0;u<listaEntradasReserva.size();u++)
	        	{
	        		
	        	
	        	
				%> 
					   		   
					   		   
					   			{
					
								     'Fila': '<%=listaEntradasReserva.get(u).getFila() %>',
								     'Columna': '<%=listaEntradasReserva.get(u).getColumna() %>'
					   			},
		
	   		<% }%>	
					   			
					          ]
					
					 },
             
             
             <% }%>
             ]
             
             
             
             
             
             


 var $table = $('#table');
 $(function() {

   $table.bootstrapTable({
     columns: [{
    	 
         field: 'ID reserva',
         title: '' 

     }, {
         field: 'ID sesion',
         title: 'ID reserva'
     },
     {
	     field: 'Usuario',
	     title: 'ID sesion'
     },{
    	 
         field: 'Tarjeta',
         title: 'Usuario'

    	 
     }, {
         field: 'N� Entradas',
         title: 'Tarjeta'
    	 
     },
     {
         field: 'Dummy',
         title: 'N� Entradas'
    	 
     }
     
     
     ],
     data: data,
     detailView: true,
     onExpandRow: function(index, row, $detail) {
       console.log(row)
       $detail.html('<table></table>').find('table').bootstrapTable({
         columns: [ {
           field: 'Fila',
           title: 'Fila'

         }, {
           field: 'Columna',
           title: 'Columna'
         }],
         data: row.nested,

       });

     }
   });
 });

 
 
 
 
 
 </script>

   
  </body>
</html>