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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Plantilla</title>
<%@ include file="principales/elementshead.jsp"%>

<style type="text/css">
.credit-card-div  span {
	padding-top: 10px;
}

.credit-card-div img {
	padding-top: 30px;
}

.credit-card-div .small-font {
	font-size: 9px;
}

.credit-card-div .pad-adjust {
	padding-top: 10px;
}

.btn-warning{
background-color:#34495E;
border-color:#34495E;
}

.btn-warning:hover, .btn-warning:focus, .btn-warning:active, .btn-warning.active, .open .dropdown-toggle.btn-warning{
background-color:#5c7289;
border-color:#5c7289;
}

.btn-danger {
    color: #fff;
    background-color: #d9534f;
    border-color: #d9534f;
}

.btn-danger:hover {
    color: #fff;
    background-color: #5c7289;
    border-color: #5c7289;
}


.wizard {
    border-bottom: 1px solid #CCC;
    margin-bottom: 35px;
}

.text-primary{
background-color:#34495e; border:2px solid #ddd; color:white; border-radius: 15px 50px; padding:20px;

}
</style>

</head>
<body>
	<%@ include file="principales/cabecera.jsp"%>

	<div class="container" style="margin-top: 50px; margin-bottom: 70px">
	
	<!-- INFO AVANCE RESERVA  -->
		<div class="container">
			<div class="row">
			<h3><strong>Progreso de la reserva:</strong></h3>
				<ul class="list-inline nav-justified wizard text-center">
					<li><h4 class="text-muted">1. Seleccionar Asientos</h4></li>
					<li><h4 class="text-primary">2. Pago</h4></li>
					<li><h4 class="text-muted">3. Confirmación Reserva</h4></li>
				</ul>
			</div>
		</div>
		<!-- FIN INFO AVANCE RESERVA  -->
	
	
	
	
		<div class="row">
			<div class="col-sm-12">
				<h3>
					<strong>Tipo de pago</strong>
				</h3>
				<hr>
			</div>
		</div>
		<h4 style="margin-left:3px;">Pago con tarjeta:</h4>
		<form id="formPago" action="/Practica-Final-ADSW/ReservarEntrada"
			method="POST" class="credit-card-div">
			<div class="panel panel-default">
				<div class="panel-heading">

					<div class="row ">
						<div class="col-md-12">
							<input required="" type="text" id="numeroTarjeta"
								name="numeroTarjeta" class="form-control"
								placeholder="Nº de la tarjeta" />
						</div>
					</div>
					<div class="row ">
						<div class="col-md-3 col-sm-3 col-xs-3">
							<span class="help-block text-muted small-font"> Mes
								caducidad</span> <input required="" type="text" class="form-control"
								placeholder="MM" />
						</div>
						<div class="col-md-3 col-sm-3 col-xs-3">
							<span class="help-block text-muted small-font"> Año
								caducidad</span> <input required="" type="text" class="form-control"
								placeholder="YY" />
						</div>
						<div class="col-md-3 col-sm-3 col-xs-3">
							<span class="help-block text-muted small-font"> CCV</span> <input
								required="" type="text" class="form-control" placeholder="CCV" />
						</div>
						<div class="col-md-3 col-sm-3 col-xs-3">
							<img src="images/mano-tarjeta-2.png"
								class="img-rounded img-responsive" style="max-width: 40px;" />
						</div>
					</div>
					<div class="row ">
						<div class="col-md-12 pad-adjust">

							<input required="" type="text" class="form-control"
								placeholder="Nombre del titular" />
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 pad-adjust"></div>
					</div>
					<div class="row ">
						<div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
							<input type="text" onclick=volver() class="btn btn-danger"
								value="VOLVER" />
						</div>
						<div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
							<input type="submit" class="btn btn-warning btn-block"
								value="PAGAR AHORA" />
						</div>
					</div>

				</div>
			</div>
		</form>
		<div class="row">
			<div class="col-sm-4 text-center">
				<h2 style="background-color:#34495e; border:2px solid #ddd; color:white; border-radius: 10px; padding:10px;">
					<strong>Precio a cobrar: </strong>22&euro;
				</h2>

			</div>
			<div class="col-sm-4">

			</div>
			<div class="col-sm-4">

			</div>
		</div>
	</div>
	<%@ include file="principales/footer.jsp"%>



	<script>
function volver()
{
	params = window.location.href.split("jsp?")[1];
	location.href="reservar.jsp?" + params;
}
$('form').submit(function(e) {
    e.preventDefault();
    var $form = $(this);
    var submit = true;

    // evaluate the form using generic validaing
    if ($("#numeroTarjeta").val() =="" || $("#numeroTarjeta").val()== null ) {
      submit = false;
    }

    if (submit)
   	{
    	params = window.location.href.split("jsp?")[1];
	    $.post($form.attr("action"), params + "&"+$form.serialize(), function(response) {
	        
     	    console.log (response);
	        if (response.success)   
	        	{
	        	
	        		swal({
	        		  title: "Reserva realizada con éxito",
	        		  text: "A continuación se te dará el número de tu reserva",
	        		  type: "success",
	        		  confirmButtonColor: "#DD6B55",
	        		  confirmButtonText: "Continuar",
	        		  closeOnConfirm: false
	        		},
	        		function(){
	        		  swal({
	        			  
	        			  title: "¡Apunta!",
	        			  text:"Este es tu Nª RESERVA: " + response.success,
	        			  type:"info",
	        			  closeOnConfirm: false	        			  	        			 
	        		  	},
	        		  	function(){
	        		  		window.location ="cartelera.jsp";
	        		  	});
	        		});
	        	}
	                 	
	        else        	
	        	swal("Error al reservar", response.error, "error");
      	
	    	
	    });
   	}
    else
    	swal("Error", "Rellene los campos del formulario", "error");
      

    return false;
  });


</script>


</body>




</html>

<%
    	}
    	

    	
    
    
    %>