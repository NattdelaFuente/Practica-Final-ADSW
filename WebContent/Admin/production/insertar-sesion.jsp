<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
<%@page import="ClasesModelo.Pelicula"%>
<%@page import="ClasesModelo.Sala"%>
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

    <title>Insertar Sesión | </title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    
    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
    <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css">
    <link href="../../css/chosen.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" media="all" type="text/css" href="../../css/jquery-ui.css" />
<link rel="stylesheet" media="all" type="text/css" href="../../css/jquery-ui-timepicker-addon.css" />
    
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
                  <li><a href="index.jsp"><i class="fa fa-home"></i> Home </a>
                    
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
                  <a onClick=logout() class="user-profile button-toggle"  aria-expanded="false">
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
                <h3>Sesión Nueva</h3>
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
                    <h2>Insertar sesión </h2>
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

                    <form id="formSesion" method="POST" action="/Practica-Final-ADSW/InsertarSesion" class="form-horizontal form-label-left" novalidate>

                      <p>Añada los campos de la nueva sesión</a>
                      </p>
                      <span class="section">Información</span>



                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Sala <span class="required">*</span> </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select class="form-control chosen-select required" id="selectSala" name="selectSala">
                                        <%    

							        	CineDAO dao = new CineDAO();      
							       
								        List<Sala> listaSala = dao.getListaTodasSalas();
								        for (int i=0; i<listaSala.size();i++)
								        {
								        	
								       	%>
								           
								            	
												<option value="<%=listaSala.get(i).getIdSala() %>"><%="#"+listaSala.get(i).getIdSala() + "- " + listaSala.get(i).getNombreSala() %></option>
								            	
		
								    	<%
								        }      
							        	%>
                          </select>
                        </div>
                      </div>

                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12 ">Película <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select id="selectPelicula" name="selectPelicula" class="chosen-select form-control required">
                                        <%    

							        	     
							       
								        List<Pelicula> list = dao.getListaTodasPeliculas();
								        for (int i=0; i<list.size();i++)
								        {
								        	
								       	%>
								           
								            	<option data-duracion="<%=list.get(i).getDuracion() %>" value="<%=list.get(i).getId() %>"><%="#" + list.get(i).getDuracion() + " min  -  " +list.get(i).getName() %></option>
												
								            	
		
								    	<%
								        }      
							        	%>
							        

                          </select>
                        </div>
                      </div>
                      
                      
                      
                      
                      
                      
                      
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Fecha Inicio<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="fechaHora">
                        </div>
                      </div>
                      
                      
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Fecha Final <span class="required"> *15 min extra limpieza</span>
                        </label>
                        
                        
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="fechaHoraFinal">
                        </div>
                      </div>


                                                                                   
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                         
                          <button id="send" type="submit" class="btn btn-success">Enviar</button>
                        </div>
                      </div>
                    </form>
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
            Cinesa Cinesa
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
	<script type="text/javascript" src="../../js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="../../js/jquery-ui-timepicker-addon.js"></script> 
	<script type="text/javascript" src="../../js/jquery-ui-sliderAccess.js"></script>
   
    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>
    <!-- validator -->
    <script src="../vendors/validator/validator.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.4.2/chosen.jquery.js" type="text/javascript"> </script>	


<script src="../../js/sweetalert.min.js"></script> 
    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>

    <script>
    
    
    
    $(".chosen-select").chosen({
    	
    	placeholder_text_single: "No hay opciones disponibles"
    	
    });
    $('#selectPelicula').on('change', function(e) {
        // triggers when whole value changed
        $('.ui-datepicker-current-day').click(); // rapresent the current selected day
      });
    
    
    
    
    
    //$( "#fechaHora" ).datepicker();
    $('#fechaHora').datetimepicker({
    	dateFormat: 'dd/mm/yy',
    	numberOfMonths: 1,
    	firstDay: 1,
    	minDate: 1,
    	maxDate: 14,    
    	
        onSelect: function(dateText, inst){
    	            
    	    var array = dateText.split(" ")
    	    var fecha = array[0].split("/");
    	    var dia = fecha[0];
    	    var mes = fecha[1];
    	    var anyo = fecha[2];
    	    var hora = array[1].split(":");
    	    
        	//cuando cambiemos la fecha de aqui, se cambiara en el fecha final
        	//aumentando la duracion de la pelicula seleccionada y 15 min de limpieza de sala
        	var date = new Date(anyo, mes - 1, dia, hora[0], hora[1]);        	
        	window.milisInicio = date.getTime();
        	
        	date.setMinutes (date.getMinutes() + $("#selectPelicula").find('option:selected').data('duracion') + 15);
        	window.milisFinal = date.getTime();
        	
        	$('#fechaHoraFinal').datetimepicker('setDate', date );
        	
        	
        	
        }
    
    });
    
    
    
    $('#fechaHoraFinal').datetimepicker({
    	dateFormat: 'dd/mm/yy',

    
    });
    
    
    $('#fechaHoraFinal').datepicker('disable').attr("readonly","readonly").timepicker({});
    

    //var fechaH = ($("#fechaHora").val());
    //var array = fechaH.split(" ")
    //var fecha = array[0];
    //var hora = array[1];
    
    // ORDENAR FECHA
    //SELECT * FROM sesiones ORDER BY TO_DATE(fecha, 'DD/MM/YYYY') ASC
    
    //ORDENAR HORA
    //SELECT * FROM sesiones ORDER BY TO_TIMESTAMP(  CONCAT ('01/01/2015 ',hora), 'DD/MM/YYYY HH24:MI') ASC  
    


      $('form').submit(function(e) {
        e.preventDefault();
        var submit = true;
		var errores ="";
		
		//calculo de el dia y hora seleccionados
	    var fechaHInicio = ($("#fechaHora").val());
	    var arrayInicio = fechaHInicio.split(" ")
	    var fechaInicio = arrayInicio[0];
	    var horaInicio = arrayInicio[1];
	    
	    
	    var fechaHFinal = ($("#fechaHoraFinal").val());
	    var arrayFinal = fechaHFinal.split(" ")
	    var fechaFinal = arrayFinal[0];
	    var horaFinal = arrayFinal[1];
	    
	    //calculo de la pelicula y sala
	    var idSala = $("#selectSala").val();	    	   
	    var idPelicula = $("#selectPelicula").val();
	    
	    //calculo de la duracion de la pelicula
        var selected = $("#selectPelicula").find('option:selected');
        var duracionPelicula = selected.data('duracion'); 
        // evaluate the form using generic validaing
        if (fechaHFinal == "") {
        	errores = errores + "- Seleccione una fecha y hora\n";        	
          	submit = false;
        }
		if (idSala == null)		
		{
        	errores = errores + "- Seleccione una sala\n";        	
          	submit = false;
		}
		if (idPelicula == null)		
		{
        	errores = errores + "- Seleccione una película\n";        	
          	submit = false;
		}
        

        if (submit)
        {
			      				  
					var parametros = {
					    idPelicula: idPelicula,
					    idSala : idSala,
					    fechaInicio : fechaInicio,
					    horaInicio : horaInicio,
					    milisInicio: window.milisInicio,
					    
					    fechaFinal : fechaFinal,
					    horaFinal : horaFinal,
					    milisFinal: window.milisFinal
					};      				
    	    	    $.post($("#formSesion").attr("action"), $.param(parametros), function(response) {
    	    	        
    	         	    console.log (response);
    	    	        if (response.success)   	      	
	    	        	{
  	    	        		
  	    	        	 	swal("Sesión Creada", response.success, "success");
	    	        	}
    	    	        		      	   	        		      	    	                 
    	    	        else        	
    	    	        	swal("Error al crear sesión", response.error, "error");
    	    	    });      	    	            
			 
        }
        else
            swal("Faltan datos", errores, "error");

        return false;
      });
    </script>
    <!-- /validator -->
  </body>
</html>