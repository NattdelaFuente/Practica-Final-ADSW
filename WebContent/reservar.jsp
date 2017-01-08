<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="ClasesModelo.Sesion"%>
<%@page import="ClasesModelo.CineDAO"%>

<% 
    

    	//prueba de sesion;
    	if (session.getAttribute("username") == null  || session.getAttribute("username").equals("") || request.getParameter("sesion") == null || request.getParameter("sesion").equals("")) //no existe el parametro id o no tiene numero
    		response.sendRedirect("cartelera.jsp");
    	else
    	{
        	int idSesion = Integer.parseInt(request.getParameter("sesion"));
       	 	CineDAO cine = new CineDAO();
        	Sesion sesion = cine.getSesion(idSesion);
        	if (sesion == null) //no existe sesion con ese ID
        		response.sendRedirect("cartelera.jsp");
        	
    	
      	 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Pase</title>

<link href='http://fonts.googleapis.com/css?family=Lato:400,700'
	rel='stylesheet' type='text/css'>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Francisco Aguielera">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="css/prettyPhoto.css" rel="stylesheet" type="text/css">
<link href="css/animate.css" rel="stylesheet" type="text/css">
<link href="css/main.css" rel="stylesheet" type="text/css">
<link href="css/home.css" rel="stylesheet" type="text/css">
<link href="css/sweetalert.css" rel="stylesheet" type="text/css">
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon" href="images/ico/favicon.ico">

<style type="text/css">
.wizard {
	border-bottom: 1px solid #CCC;
	margin-bottom: 35px;
}

.text-primary {
	background-color: #34495e;
	border: 2px solid #ddd;
	color: white;
	border-radius: 15px 50px;
	padding: 20px;
}
</style>

</head>

<body>

	<%@ include file="principales/cabecera.jsp"%>


	<div class="container ">
		<p style="margin-top: 50px;"></p>

		<!-- INFO AVANCE RESERVA  -->
		<div class="container">
			<div class="row">
			<h3><strong>Progreso de la reserva:</strong></h3>
				<ul class="list-inline nav-justified wizard text-center">
					<li><h4 class="text-primary">1. Seleccionar Asientos</h4></li>
					<li><h4 class="text-muted">2. Pago</h4></li>
					<li><h4 class="text-muted">3. Confirmación Reserva</h4></li>
				</ul>
			</div>
		</div>
		<!-- FIN INFO AVANCE RESERVA  -->

<p style="margin-top: 20px;"></p>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Datos de tu pase</h3>
			</div>
			<div class="panel-body">


				Película:
				<%=sesion.getNombrePelicula() %>

				<br> Fecha del pase:
				<%=sesion.getFechaInicio()%>
				a las
				<%=sesion.getHoraInicio() %>

				<br> Sala:
				<%=sesion.getNombreSala() %>(<%="#"+sesion.getIdSala() %>)


			</div>
		</div>





		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Selecciona tus butacas</h3>
			</div>
			<div class="panel-body" style="height: 600px;">



				<object type="text/html"
					data="butacas.jsp?sesion=<%=sesion.getIdSesion()%>" width="100%"
					height="100%"> </object>
				<form id="formSesion" method="POST" action="Pago.jsp"></form>

			</div>
		</div>
	</div>

	<%@ include file="principales/footer.jsp"%>
	<script>
function error(msg)
{
	swal("Error", "Selecciona al menos un asiento", "error");
}


function success( objt , sesion)
{
	
	//console.log (sesion);
	window.location = "Pago.jsp?sesion="+sesion+"&"+$.param(objt);

	
}




</script>


</body>
</html>


<%
    	}
    	

    	
    
    
    %>