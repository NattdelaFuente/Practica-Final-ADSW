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
                    <h1>Accede a CINESA</h1>
                    <p>Para poder acceder a la plataforma debe antes logearse, si aun no está registrado <strong><span class="glyphicon glyphicon-circle-arrow-down"></span></strong></p>
                    <a class="btn btn-default btn-lg text-center" href="registro.jsp">
                      <span class="">¡REGÍSTRESE!</span>
                    </a>
                </div>
                <div class="col-sm-6">
                    <ul class="breadcrumb pull-right">
                        <li><a href="index.html">Inicio</a></li>
                        <li class="active">Login-Registro</li>
                    </ul>
                </div>
            </div>
        </div>
    </section><!--/#title-->     

    <section id="registration" class="container">
        <h1 class="text-center">Login</h1>
        <form id="formLogin" class="center" role="form" method="post" action="/Practica-Final-ADSW/Login">
            <fieldset class="registration-form" style="background: #f5f5f5;">
                <div class="form-group">
                    <input type="text" id="username" name="username" placeholder="Usuario" class="form-control">
                </div>
                <div class="form-group">
                    <input type="password" id="password" name="password" placeholder="Password" class="form-control">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-success btn-md btn-block">Aceptar</button>
                    
                </div>
            </fieldset>
        </form>
    </section><!--/#registration-->

<%@ include file="principales/footer.jsp" %>
    <script>
    $(document).on("submit", "#formLogin", function(event) {
	    event.preventDefault(); // Important! Prevents submitting the form.
	    var $form = $(this);
	    console.log ("Enviando");
	
	    $.post($form.attr("action"), $form.serialize(), function(response) {
	        // ...
	        if (response)
        	{
	        	swal("Error login", "Usuario o contraseña incorrectos", "error");
        	}
	        else
        	{
	        	swal("login", "s", "error");
        	}
	    	
	    });
	

	});

</script>
</body>
</html>