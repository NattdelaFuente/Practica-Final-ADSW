<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
    <%@page import="java.util.Locale"%>
    <%@page import="ClasesModelo.Pelicula"%>
    <%@page import="ClasesModelo.Sesion"%>
    <%@page import="java.time.format.TextStyle"%>
    
    <%@page import="java.time.Month"%>
<%@page import="ClasesModelo.CineDAO"%>
    
    <% 
    

    	//prueba de sesion;
    	if (request.getParameter("pelicula") == null || request.getParameter("pelicula").equals("")) //no existe el parametro id o no tiene numero
    		response.sendRedirect("cartelera.jsp");
    	else
    	{
        	int idPelicula = Integer.parseInt(request.getParameter("pelicula"));
       	 	CineDAO cine = new CineDAO();
        	Pelicula pelicula = cine.getPelicula(idPelicula);
        	List<Sesion> list = cine.getListaSesionesProyectanPelicula(idPelicula);        	
        	if (pelicula == null) //no existe sesion con ese ID
        		response.sendRedirect("cartelera.jsp");
        	
    	
      	 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><%=pelicula.getName()%> </title>
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
				<h1><%=pelicula.getName()%></h1>
			</div>
			<div class="col-sm-6">
				<ul class="breadcrumb pull-right">
					<li><a href="index.html">Inicio</a></li>
					<li class="active"><%=pelicula.getName()%></li>
				</ul>
			</div>
		</div>

		<div class="row"
			style="padding: 20px; padding-top: 30px; background: #7b8ea0;">
			<div class="col-sm-4">

				<img alt="Nombreimagen" src="<%=pelicula.getImagen()%>"
					style="max-width: 420px;">

			</div>
			<div class="col-sm-1"></div>
			<div class="col-sm-7">
				<h4>
					<strong class="colorinfo">Título original: </strong><%=pelicula.getOriginal()%>
				</h4>
				<h4>
					<strong class="colorinfo">Genero: </strong><%=pelicula.getGenero()%>
				</h4>
				<h4>
					<strong class="colorinfo">Duración: </strong><%=pelicula.getDuracion()%> min
				</h4>
				<h4>
					<strong class="colorinfo">Clasificación: </strong><%=pelicula.getEdad()%>
				</h4>				
				<h4>
					<strong class="colorinfo">Director: </strong><%=pelicula.getDirector()%>
				</h4>

				<h4>
					<strong class="colorinfo">Nacionalidad: </strong><%=pelicula.getNacionalidad()%>
				</h4>
				<h4>
					<strong class="colorinfo">Año: </strong><%=pelicula.getAnyo()%>
				</h4>
				<h4>
					<strong class="colorinfo">Distribuidora: </strong><%=pelicula.getDistribuidora()%>
				</h4>	
				<h4>
					<strong class="colorinfo">Otros: </strong><%=pelicula.getOtros()%>
				</h4>
				<h4>
					<strong class="colorinfo">Página oficial: </strong><%=pelicula.getWebsite()%>
				</h4>	
				<p>
					<strong>Actores: </strong><%=pelicula.getActores()%>
				</p>											
				<p>
					<strong>Sinopsis: </strong><%=pelicula.getSinopsis()%>
				</p>
				<h4>
					<strong class="">TRAILER: </strong>
				</h4>
				
				

				<iframe width="560" height="315"
					src="<%=pelicula.getTrailer().replace("watch?v=","embed/")%>" frameborder="0"
					allowfullscreen></iframe>
			</div>
		</div>
		<div class="row"
			style="padding: 10px; padding-top: 20px; background: #687989; margin-bottom: 30px;">
			<div class="col-sm-6 text-center">
				<a class="btn btn-primary" role="button" data-toggle="collapse"
					href="#collapseExample" aria-expanded="true"
					aria-controls="collapseExample"
					style="background-color: #314456; border-color: #314456;">Días
					disponibles</a>
				<div class="collapse in" id="collapseExample">
					<div class="well">
					
					
					  <% 
					  
					  if (list.isEmpty())
					  {
						 %>
						 <strong>No hay sesiones para esta película disponibles</strong>
						 <% 
					  }
					  else
					  {
						  
					  
					  %>  
					
					
					
					
					
					
					
					
						<strong>Estos son los días disponibles:</strong>
						<div style="margin-bottom: 10px;"></div>
						<!-- 					<a class="btn btn-danger" role="button" data-toggle="collapse" href="#collapsehoras" aria-expanded="false" aria-controls="collapsehoras" >11 ENERO</a> -->
						<!-- 					<input class="btn btn-danger" type="button" value="Campo input"> -->
						<!-- 					<input class="btn btn-danger" type="button" value="Campo input"> -->
						<!-- 					<input class="btn btn-danger" type="button" value="Campo input"> -->


						<div class="form-group">
							 <select class="form-control" id="sel1">
							 <%
						        for (int i=0; i<list.size();i++)
						        {
						        	String fecha[]= list.get(i).getFechaInicio().split("/");

						        	
						        	
						        	
						        	
							 %>							 
									<option><%= fecha[0] + "/" + fecha[1] %></option>
							<%
						        }      
				        	%>
							</select>
						</div>



					</div>
				</div>
			</div>
			<div class="col-sm-6 text-center">
				<a class="btn btn-primary" role="button" data-toggle="collapse"
					href="#collapsehoras" aria-expanded="false"
					aria-controls="collapsehoras"
					style="background-color: #314456; border-color: #314456;">Horas
					disponibles</a>


				<div class="collapse in" id="collapsehoras">
					<div class="well">
						<strong>Estos son las horas disponibles de sesión para el
							día seleccionado</strong>
						<div style="margin-bottom: 10px;"></div>
													 <%
						        for (int i=0; i<list.size();i++)
						        {
						        	

						        	
						        	
						        	
						        	
							 %>							 
									<input class="btn btn-danger" type="button" value="<%= list.get(i).getHoraInicio() %>">
							<%
						        }      
				        	%>

						
					</div>
				</div>
			</div>
			
			<%
					  }
			%>
			
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
					<div class="clearfix"></div>
				</form>
			</div>
		</div>
		<div class="media-grids">
			<div class="media">
				<h5>TOM BROWN</h5>
				<div class="media-left">
					<a href="#"> <img src="images/user.jpg" title="One movies"
						alt=" " />
					</a>
				</div>
				<div class="media-body">
					<p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet
						ipsum id ex pretium hendrerit maecenas imperdiet ipsum id ex
						pretium hendrerit</p>
					<span>View all posts by :<a href="#"> Admin </a></span>
				</div>
			</div>
			<div class="media">
				<h5>MARK JOHNSON</h5>
				<div class="media-left">
					<a href="#"> <img src="images/user.jpg" title="One movies"
						alt=" " />
					</a>
				</div>
				<div class="media-body">
					<p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet
						ipsum id ex pretium hendrerit maecenas imperdiet ipsum id ex
						pretium hendrerit</p>
					<span>View all posts by :<a href="#"> Admin </a></span>
				</div>
			</div>

		</div>
	</div>
	</section>

	<%@ include file="principales/footer.jsp"%>
</body>
</html>
  	<%
    	}
    	

    	
    
    
    %>