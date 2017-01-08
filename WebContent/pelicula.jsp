<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
    <%@page import="java.util.ArrayList"%>

    <%@page import="ClasesModelo.Pelicula"%>
    <%@page import="ClasesModelo.Sesion"%>
    <%@page import="ClasesModelo.Comentario"%>

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
					  if(session.getAttribute("username") == null  || session.getAttribute("username").equals("") || session.getAttribute("username").equals("admin"))
					  {
							 %>
							 <strong>Para poder acceder a la plataforma debe antes <a style="color: #06b0ff;" href="login.jsp">logearse</a> como usuario o <a style="color: #06b0ff;" href="registro.jsp">registrarse</a> si aun no tiene cuenta </strong>
							 <%
					  }
					  else if (list.isEmpty())
					  {
						 %>
						 <strong>No hay sesiones para esta película disponibles</strong>
						 <% 
					  }

					  else
					  {
				        	
			            	List<String> listaUnicaFecha = new ArrayList<String>();
			            	String fechaComprobar="";
			            	for (int i=0; i<list.size(); i++)
			            	{
			            		fechaComprobar = list.get(i).getFechaInicio();
			            		if (! listaUnicaFecha.contains(fechaComprobar))
			            			listaUnicaFecha.add(fechaComprobar);
			            	}
			            	
			            	 
					  
					  %>  
					
					
					
					
					
					
					
					
						<strong>Estos son los días disponibles:</strong>
						<div style="margin-bottom: 10px;"></div>
						<!-- 					<a class="btn btn-danger" role="button" data-toggle="collapse" href="#collapsehoras" aria-expanded="false" aria-controls="collapsehoras" >11 ENERO</a> -->
						<!-- 					<input class="btn btn-danger" type="button" value="Campo input"> -->
						<!-- 					<input class="btn btn-danger" type="button" value="Campo input"> -->
						<!-- 					<input class="btn btn-danger" type="button" value="Campo input"> -->


						<div class="form-group">
							 <select name="column_select" id="column_select" class="form-control" >
							 <%
						        for (int i=0; i<listaUnicaFecha.size();i++)
						        {
						        	String fecha[]= listaUnicaFecha.get(i).split("/");

						        	
						        	
						        	
						        	
							 %>							 
									<option value="fecha<%=i+1%>" ><%= fecha[0] + "/" + fecha[1] %></option>
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
					<div class="well" >
						<strong>Estas son las sesiones disponibles para el día seleccionado</strong>
						<div  name="layout_select" id="layout_select" style="margin-bottom: 10px;">
													 <%
						        for (int i=0; i<listaUnicaFecha.size();i++)
						        {
						        	 for (int g=0; g<list.size();g++)
							         {

						        	
						        	
								        	String idFecha="fecha"+(i+1);
								        	
								        	if(list.get(g).getFechaInicio().equals(listaUnicaFecha.get(i)) )
								        	{
								        	
						 %>			
									 					
													<input data-sesion="<%= list.get(g).getIdSesion() %>"  name="<%= idFecha %>" class="btn btn-danger" type="button" value="<%= list.get(g).getHoraInicio() %>">
							<%
								        	}
					        		 }   
						        }
				        	%>

						</div>
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
	  <% 
  if(session.getAttribute("username") == null  || session.getAttribute("username").equals("") || session.getAttribute("username").equals("admin"))
  {
		 %>
                    <p>Para poder ver o escibir comentarios sobre películas debe antes ser un usuario registrado <strong><span class="glyphicon glyphicon-circle-arrow-down"></span></strong></p>
                    <a class="btn btn-default btn-lg text-center" href="login.jsp">
                      <span class="">LOGIN</span>
                    </a>
		 <%
  }
  else
  {
	  
  
	 %> 
						  

	<div class="all-comments">
		<div class="all-comments-info">
			Envíe un comentario
			<div class="agile-info-wthree-box">
				<form method ="POST" action="/Practica-Final-ADSW/ComentarPelicula">
					<textarea id="comentario" name="comentario" placeholder="Mensaje" required=""></textarea>
					<input name="idPeli" type="hidden" value="<%= pelicula.getId() %>">
					<input  type="submit" value="Enviar">
					<div class="clearfix"></div>
				</form>
			</div>
		</div>
		
		
		<%
				List<Comentario> listaComentarios = cine.getListaComentariosPelicula(idPelicula);  
		
				if( ! listaComentarios.isEmpty())
				{
					
				
					for (int f=0; f<listaComentarios.size();f++)
					{
						String fechaTotal = listaComentarios.get(f).getFecha().toString();
						String fecha = fechaTotal.substring(0,fechaTotal.indexOf('.'));
					%>
					
					<div class="media-grids">
						<div class="media">
							<h5><%= listaComentarios.get(f).getUsuario() %></h5>
							<div class="media-left">
								<a href="#"> <img src="images/user.jpg" title="One movies"
									alt=" " />
								</a>
							</div>
							<div class="media-body">
								<p><%= listaComentarios.get(f).getComentario() %></p>
								<span><%= fecha %> </a></span>
							</div>
						</div>
			
			
					</div>
		
		
					<%} 
				}%>
	</div>
		<%}
	  %>
	</section>
	


	<%@ include file="principales/footer.jsp"%>
	
	<script>
	
	
	$(document).ready(function() {
	    var optarray = $("#layout_select").children('input').map(function() {

	    	
	        return {
	            "value": this.value,
	            "name": this.name,	            
	            "input": "<input onclick=\"location.href='reservar.jsp?sesion="+ $(this).data("sesion") +  "';\" data-sesion='" + $(this).data("sesion") + "'style='margin-right: 16px;margin-top: 15px;' type='button'  class='btn btn-danger'  name='" + this.name + "' value='" + this.value + "'>"
	        }
	    });
	    
	    console.log (optarray);
	       
	    $("#column_select").change(function() {
	        $("#layout_select").children('input').remove();
	        var addoptarr = [];
	        for (i = 0; i < optarray.length; i++) {
	            if (optarray[i].name.indexOf($(this).val()) > -1) {
	                addoptarr.push(optarray[i].input);
	            }
	        }
	        $("#layout_select").html(addoptarr.join(''))
	    }).change();
	})
	
	
	
	$('form').submit(function(e) {
	    e.preventDefault();
	    var $form = $(this);
	    var submit = true;
	
	    // evaluate the form using generic validaing
	    if ($("#comentario").val() =="" || $("#comentario").val()== null ) {
	      submit = false;
	    }
	
	    if (submit)
	   	{
	    	
		    $.post($form.attr("action"), $form.serialize(), function(response) {
		        
	     	    console.log (response);
		        if (response.success)   
		        	{
		        	
		        		$form.trigger('reset');  //esto reiniciaria el formulario
			        	swal("Comentario registrado", response.success, "success");
			        	location.reload(); 
		        	}
		                 	
		        else        	
		        	swal("Error al comentar", response.error, "error");
	      	
		    	
		    });
	   	}
	    else
	    	swal("Error", "Rellene el campo de su comentario", "error");
	      
	
	    return false;
  });
	
	
	
	
	
	
	
	
	</script>
	
</body>
</html>
  	<%
    	}
    	

    	
    
    
    %>