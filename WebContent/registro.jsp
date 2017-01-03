<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Plantilla</title>
<%@ include file="principales/elementshead.jsp" %>
</head>
<body>
<%@ include file="principales/cabecera.jsp" %>

<section id="title" class="emerald2">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <h1>Registrese en CINESA</h1>
                    <p>Empiece hoy a formar parte de nuestra gran familia y no se pierda todo lo que puede llegar a conseguir con su registro... <strong>¡REGÍSTRESE!</strong></p>
                </div>
                <div class="col-sm-6">
                    <ul class="breadcrumb pull-right">
                        <li><a href="index.html">Inicio</a></li>
                        <li class="active">Registro</li>
                    </ul>
                </div>
            </div>
        </div>
    </section><!--/#title-->     
    <section id="registration" class="container">
        <h1 class="text-center">Registro</h1>
        <form id="formRegistro" class="center" role="form" method="post" action="/Practica-Final-ADSW/Resgistro">
            <fieldset class="registration-form" style="background:#f5f5f5;">
                <div class="form-group">
                    <input type="text" id="username" name="username" placeholder="Usuario" class="form-control">
                </div>
                <div class="form-group">
                    <input type="text" id="email" name="email" placeholder="E-mail" class="form-control">
                </div>
                <div class="form-group">
                    <input type="password" id="password" name="password" placeholder="Password" class="form-control">
                </div>
                <div class="form-group">
                    <input type="password" id="password_confirm" name="password_confirm" placeholder="Password (Confirm)" class="form-control">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-success btn-md btn-block">Aceptar</button>
                </div>
            </fieldset>
        </form>
    </section><!--/#registration-->


<%@ include file="principales/footer.jsp" %>
    <script>
    $(document).on("submit", "#formRegistro", function(event) {
	    event.preventDefault(); // Important! Prevents submitting the form.
	    var $form = $(this);

	
	    $.post($form.attr("action"), $form.serialize(), function(response) {
	        
       	    console.log (response);
       	    $("#formRegistro").trigger('reset');
	        if (response.error)        	
	        	swal("Error registro", response.error, "error");
	        else
	        	swal("Usuario registrado", response.success, "success");
        	
	    	
	    });
	

	});

</script>
</body>
</html>