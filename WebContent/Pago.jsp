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
<%@ include file="principales/elementshead.jsp" %>

<style type="text/css">
.credit-card-div  span { padding-top:10px; }
.credit-card-div img { padding-top:30px; }
.credit-card-div .small-font { font-size:9px; }
.credit-card-div .pad-adjust { padding-top:10px; }
</style>

</head>
<body>
<%@ include file="principales/cabecera.jsp" %>

<dir class="container" style="margin-top:70px;margin-bottom:70px">
<h1>Pago con tarjeta:</h1>
<form id="formPago"action="/Practica-Final-ADSW/ReservarEntrada" method="POST" class="credit-card-div">
<div class="panel panel-default" >
 <div class="panel-heading">
     
      <div class="row ">
              <div class="col-md-12">
                  <input type="text" id="numeroTarjeta" name="numeroTarjeta" class="form-control" placeholder="Nº de la tarjeta" />
              </div>
          </div>
     <div class="row ">
              <div class="col-md-3 col-sm-3 col-xs-3">
                  <span class="help-block text-muted small-font" > Mes caducidad</span>
                  <input type="text" class="form-control" placeholder="MM" />
              </div>
         <div class="col-md-3 col-sm-3 col-xs-3">
                  <span class="help-block text-muted small-font" >  Año caducidad</span>
                  <input type="text" class="form-control" placeholder="YY" />
              </div>
        <div class="col-md-3 col-sm-3 col-xs-3">
                  <span class="help-block text-muted small-font" >  CCV</span>
                  <input type="text" class="form-control" placeholder="CCV" />
              </div>
         <div class="col-md-3 col-sm-3 col-xs-3">
<img src="images/mano-tarjeta-2.png" class="img-rounded img-responsive" style="max-width:40px;" />
         </div>
          </div>
     <div class="row ">
              <div class="col-md-12 pad-adjust">

                  <input type="text" class="form-control" placeholder="Nombre del titular" />
              </div>
          </div>
     <div class="row">
<div class="col-md-12 pad-adjust">

</div>
     </div>
       <div class="row ">
            <div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
                 <input type="text" onclick=volver() class="btn btn-danger" value="VOLVER" />
              </div>
              <div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
                  <input type="submit"  class="btn btn-warning btn-block" value="PAGAR AHORA" />
              </div>
          </div>
     
                   </div>
              </div>
</form>

</dir>

<%@ include file="principales/footer.jsp" %>



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