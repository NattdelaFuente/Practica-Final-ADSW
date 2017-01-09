<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CINESA | Contacto</title>
<%@ include file="principales/elementshead.jsp" %>
</head>
<body>
<%@ include file="principales/cabecera.jsp" %>

<section id="title" class="emerald2" style="padding-bottom:1px;">
	<div class="container">
		<div class="row">
			<div class="col-sm-6" style="padding-top: 30px;">
				<h1>Contacto</h1>
				<p>
					Contacta con nosotros a través de este formulario.
				</p>
			</div>
			<div class="col-sm-6">
				<ul class="breadcrumb pull-right">
					<li><a href="index.jsp">Inicio</a></li>
					<li class="active">Contacto</li>
				</ul>
			</div>
		</div>
	</div>
	</section><!--/#title-->

    <section id="contact-page" class="container">
        <div class="row">
            <div class="col-sm-8">
                <h4>Formulario de contacto</h4>
                <div class="status alert alert-success" style="display: none"></div>
                <form id="main-contact-form" class="contact-form" name="contact-form" method="post" action="" role="form">
                    <div class="row">
                        <div class="col-sm-5">
                            <div class="form-group">
                                <input type="text" class="form-control" required="required" placeholder="Nombre">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" required="required" placeholder="Apellidos">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" required="required" placeholder="Email">
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary btn-lg">Enviar</button>
                            </div>
                        </div>
                        <div class="col-sm-7">
                            <textarea name="message" id="message" required="required" class="form-control" rows="8" placeholder="Mensaje"></textarea>
                        </div>
                    </div>
                </form>
            </div><!--/.col-sm-8-->
            <div class="col-sm-4">
                <h4>Nuestra localización</h4>
                <iframe width="100%" height="215" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12133.168555618238!2d-3.3487276!3d40.5130335!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x667509a1add2eac7!2sUniversidad+de+Alcal%C3%A1%3A+Escuela+Polit%C3%A9cnica+Superior!5e0!3m2!1ses!2ses!4v1484004732357"></iframe>
            </div><!--/.col-sm-4-->
        </div>
    </section><!--/#contact-page-->



<%@ include file="principales/footer.jsp" %>
</body>
</html>