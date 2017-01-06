<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
    <%@page import="ClasesModelo.Pelicula"%>
<%@page import="ClasesModelo.CineDAO"%>
    
    <% 
    
    if (session.getAttribute("username") == null  || session.getAttribute("username").equals("") || ! session.getAttribute("username").equals("admin") )
    {
    	//sesion no existe (intenta meterse sin admin)
    	response.sendRedirect("../../index.jsp");
    	
    }
    else
    {
    	//prueba de sesion;
    	if (request.getParameter("id") == null || request.getParameter("id").equals("")) //no existe el parametro id o no tiene numero
    		response.sendRedirect("consultar-pelicula.jsp");
    	else
    	{
        	int idPelicula = Integer.parseInt(request.getParameter("id"));
       	 	CineDAO cine = new CineDAO();
        	Pelicula pelicula = cine.getPelicula(idPelicula);
        	if (pelicula == null) //no existe pelicula con ese ID
        		response.sendRedirect("consultar-pelicula.jsp");
        	
        	
      	 %>
        	

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Modificar Pelicula | </title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    
    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
    
    <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css">
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


            </div>
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Modificación </h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>


                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                    <form class="form-horizontal form-label-left" method="POST" action= "/Practica-Final-ADSW/ModificarPelicula" novalidate>

                      <p>Cambie los campos de la película</a>
                      </p>
                      <span class="section">Información</span>
					
					
					  <input value="<%=pelicula.getId() %>"  type="hidden" id="idPelicula" name="idPelicula"  >						

                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Nombre <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input value="<%=pelicula.getName() %>"   id="name" class="form-control col-md-7 col-xs-12"  name="name" placeholder="Título película" required="required" type="text">
                        </div>
                      </div>



                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="textarea">Sinopsis <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <textarea  style="height: 150px;" id="sinopsis" required="required" name="sinopsis" class="form-control col-md-7 col-xs-12"><%=pelicula.getSinopsis() %> </textarea>
                        </div>
                      </div>




                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="website">Página Oficial <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input value="<%=pelicula.getWebsite() %>"  type="url" id="website" name="website" required="required" placeholder="www.website.com" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>



                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Título Original <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input value="<%=pelicula.getOriginal() %>" "id="original" class="form-control col-md-7 col-xs-12" name="original" placeholder="Título original" required="required" type="text">
                        </div>
                      </div>



                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Género</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select class="form-control required" id="genero" name="genero">
                          
                            <option <%= (pelicula.getGenero().equals("Elige una opción") ?"selected='selected'" : "") %>>Elige una opción</option>
							<option <%= (pelicula.getGenero().equals("Comedia") ?"selected='selected'" : "") %>>Comedia</option>
							<option <%= (pelicula.getGenero().equals("Acción") ?"selected='selected'" : "") %>>Acción</option>
							<option <%= (pelicula.getGenero().equals("Animación") ?"selected='selected'" : "") %>>Animación</option>
							<option <%= (pelicula.getGenero().equals("Ciencia Ficción") ?"selected='selected'" : "") %>>Ciencia Ficción</option>
							<option <%= (pelicula.getGenero().equals("Drama") ?"selected='selected'" : "") %>>Drama</option>
							<option <%= (pelicula.getGenero().equals("Terror") ?"selected='selected'" : "") %>>Terror</option>

                          </select>
                        </div>
                      </div>



                       <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Nacionalidad <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input value="<%=pelicula.getNacionalidad() %>" id="nacionalidad" class="form-control col-md-7 col-xs-12"  name="nacionalidad" placeholder="Española" required="required" type="text">
                        </div>
                      </div>



                      
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">Duración <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input value="<%=pelicula.getDuracion() %>" type="number" id="duracion" name="duracion" placeholder="10 - 300 Minutos" required="required" data-validate-minmax="10,300" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>




                     <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">Año<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input value="<%=pelicula.getAnyo() %>" type="number" id="anyo" name="anyo" placeholder="1940-2017" required="required" data-validate-minmax="1940,2017" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>




                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Distribuidora <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input value="<%=pelicula.getDistribuidora() %>" id="distribuidora" class="form-control col-md-7 col-xs-12" name="distribuidora"  required="required" type="text">
                        </div>
                      </div>





                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Director <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input value="<%=pelicula.getDirector() %>" id="director" class="form-control col-md-7 col-xs-12" name="director"  required="required" type="text">
                        </div>
                      </div>





                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="textarea">Actores <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <textarea style="height: 70px;" id="actores" required="required" name="actores" class="form-control col-md-7 col-xs-12"><%=pelicula.getActores() %></textarea>
                        </div>
                      </div>









                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Clasificación edad</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select class="form-control required" id="edad" name="edad">
                          
                          
                            <option <%= (pelicula.getEdad().equals("Elige una opción") ?"selected='selected'" : "") %>>Elige una opción</option>
							<option <%= (pelicula.getEdad().equals("Todos los públicos") ?"selected='selected'" : "") %>>Todos los públicos</option>
							<option <%= (pelicula.getEdad().equals("+7") ?"selected='selected'" : "") %>>+7</option>
							<option <%= (pelicula.getEdad().equals("+12") ?"selected='selected'" : "") %>>+12</option>
							<option <%= (pelicula.getEdad().equals("+16") ?"selected='selected'" : "") %>>+16</option>
							<option <%= (pelicula.getEdad().equals("+18") ?"selected='selected'" : "") %>>+18</option>
							<option <%= (pelicula.getEdad().equals("X") ?"selected='selected'" : "") %>>X</option>
							
                          </select>
                        </div>
                      </div>
                      

                      
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Imagen <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input value="<%=pelicula.getImagen() %>" id="imagen" class="form-control col-md-7 col-xs-12" name="imagen"  placeholder="Link de la imagen" required="required" type="text">
                        </div>
                      </div>

                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Trailer <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input value="<%=pelicula.getTrailer() %>" id="trailer" class="form-control col-md-7 col-xs-12" name="trailer"  placeholder="Link del trailer (youtube)" required="required" type="text">
                        </div>
                      </div>



                      
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="textarea">Datos Interes</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <textarea id="otros"  name="otros" class="form-control col-md-7 col-xs-12"><%=pelicula.getOtros() %></textarea>
                        </div>
                      </div>












                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                        	
                		  <button type="button" onclick="window.location='consultar-pelicula.jsp'" class="btn btn-primary">Volver</button>
                          <button id="send"  type="submit" class="btn btn-success">Guardar</button>
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
    <!-- validator -->
    <script src="../vendors/validator/validator.js"></script>
    
    <script src="../../js/sweetalert.min.js"></script> 

    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>

    <!-- validator -->
    <script>
      // initialize the validator function
      validator.message.date = 'not a real date';

      // validate a field on "blur" event, a 'select' on 'change' event & a '.reuired' classed multifield on 'keyup':
      $('form')
        .on('blur', 'input[required], textarea[required],  input.optional, select.required', validator.checkField)
        .on('change', 'select.required', validator.checkField)
        .on('keypress', 'input[required][pattern], textarea[required][pattern]', validator.keypress);

      $('.multi.required').on('keyup blur', 'input', function() {
        validator.checkField.apply($(this).siblings().last()[0]);
      });

      $('form').submit(function(e) {
        e.preventDefault();
	    var $form = $(this);
        var submit = true;

        // evaluate the form using generic validaing
        if (!validator.checkAll($(this))) {
          submit = false;
        }

        if (submit)
       	{
    	    $.post($form.attr("action"), $form.serialize(), function(response) {
    	        
         	    console.log (response);
    	        if (response.success)   
   	        	{
    	        	
    	        	swal("Película modificada", response.success, "success");
   	        	}
    	                 	
    	        else        	
    	        	swal("Error al modificar", response.error, "error");
          	
    	    	
    	    });
       	}
          

        return false;
      });
      
      


	

	
      
      
      
    </script>
    <!-- /validator -->
  </body>
</html>

  	<%
    	}
    	

    	
    }
    
    %>