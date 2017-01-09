<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CINESA - CINES | Inicio</title>
<%@ include file="principales/elementshead.jsp" %>
<style type="text/css">

.dise{
    padding: 20px;
    border: 1px solid black;
    border-radius: 15px;
    background: rgba(0, 0, 0, 0.8);
}

#recent-works {
    padding: 55px 0;
    padding-bottom: 65px;
}

.dise2{
background-color: #66737f;
color:white;
padding-bottom: 12px;
}

.recent-w{
color: #34495e;
    background: #f5f5f5;
    font-family: 'Roboto', sans-serif;
    padding-top:70px;
    padding-bottom:70px;
}

.btn-primary{
background-color: #34495e;
color:white;
margin-top: 25px;
padding:20px;
border-color:#34495e;
}

.btn-primary:hover{
background-color: #66737f;
color:white;
margin-top: 25px;
padding:21px;
border-color:#66737f;
}

#testimonial{
background-color: #34495e;
color:white;
}





/*  bhoechie tab */
div.bhoechie-tab-container{
  z-index: 10;
  background-color: #ffffff;
  padding: 0 !important;
  border-radius: 4px;
  -moz-border-radius: 4px;
  border:1px solid #ddd;
  margin-top: 20px;
  margin-left: 50px;
  -webkit-box-shadow: 0 6px 12px rgba(0,0,0,.175);
  box-shadow: 0 6px 12px rgba(0,0,0,.175);
  -moz-box-shadow: 0 6px 12px rgba(0,0,0,.175);
  background-clip: padding-box;
  opacity: 0.97;
  filter: alpha(opacity=97);
}
div.bhoechie-tab-menu{
  padding-right: 0;
  padding-left: 0;
  padding-bottom: 0;
}
div.bhoechie-tab-menu div.list-group{
  margin-bottom: 0;
}
div.bhoechie-tab-menu div.list-group>a{
  margin-bottom: 0;
}
div.bhoechie-tab-menu div.list-group>a .glyphicon,
div.bhoechie-tab-menu div.list-group>a .fa {
  color: #34495e;
}
div.bhoechie-tab-menu div.list-group>a:first-child{
  border-top-right-radius: 0;
  -moz-border-top-right-radius: 0;
}
div.bhoechie-tab-menu div.list-group>a:last-child{
  border-bottom-right-radius: 0;
  -moz-border-bottom-right-radius: 0;
}
div.bhoechie-tab-menu div.list-group>a.active,
div.bhoechie-tab-menu div.list-group>a.active .glyphicon,
div.bhoechie-tab-menu div.list-group>a.active .fa{
  background-color: #34495e;
  color: #ffffff;
  border-color:#34495e;
}
div.bhoechie-tab-menu div.list-group>a.active:after{
  content: '';
  position: absolute;
  left: 100%;
  top: 50%;
  margin-top: -13px;
  border-left: 0;
  border-bottom: 13px solid transparent;
  border-top: 13px solid transparent;
  border-left: 10px solid #34495e;
}

div.bhoechie-tab-content{
  background-color: #ffffff;
  /* border: 1px solid #eeeeee; */
  padding-left: 20px;
  padding-top: 10px;
}

div.bhoechie-tab div.bhoechie-tab-content:not(.active){
  display: none;
}

</style>
</head>
<body>
<%@ include file="principales/cabecera.jsp" %>

<section id="main-slider" class="no-margin"  >
        <div class="carousel slide wet-asphalt altura">
            <ol class="carousel-indicators">
                <li data-target="#main-slider" data-slide-to="0" class="active"></li>
                <li data-target="#main-slider" data-slide-to="1"></li>
                <li data-target="#main-slider" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner altura">
                <div class="item active" style="background-image: url(images/slider/bg1.jpg)">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="carousel-content centered text-center" style="color:white;">
                                    <h2 class="boxed animation animated-item-1" >LA VIDA DE PI</h2>
                                    <p class="boxed animation animated-item-2" >La vida de Pi es una novela de aventuras escrita por el canadiense Yann Martel. En la historia, el protagonista Piscine Pi Molitor Patel (en honor a "Piscine Molitor" una piscina pública de París), un joven de la India, de Pondicherry, indaga sobre la religión, espiritualidad y lo factible desde una edad temprana, y sobrevive 227 días en un bote junto con un Tigre de Bengala después del naufragio de su barco en el Océano Pacífico.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/.item-->
                <div class="item" style="background-image: url(stylePeli/images/4.jpg)">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="carousel-content center centered">
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/.item-->
                <div class="item" style="background-image: url(images/tortugas-ninja-2.jpg)">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="carousel-content centered dise">
                                    <h2 class="animation animated-item-1">Tortugas ninja 2</h2>
                                    <p class="animation animated-item-2" style="color:white;">La nueva película de la famosa saga... ¡No te la puedes perder!</p>
                                    <a class="btn btn-md animation animated-item-3" href="#">Trailer <span class="glyphicon glyphicon-chevron-right"></span></a>
                                </div>
                            </div>
                            <div class="col-sm-2">
                                
                            </div>
                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="centered">
                                    <div class="embed-container">
                                        <iframe height="275" src="https://www.youtube.com/embed/rohrrpbKMdw" frameborder="0" allowfullscreen></iframe>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/.item-->
            </div><!--/.carousel-inner-->
        </div><!--/.carousel-->
    </section><!--/#main-slider-->
    <div class="emerald2">
        <div class="container">
            <div class="row">
                <div class="col-lg-4"></div>
                <div class="col-lg-4"><h2 class="center">Películas destacas</h2></div>
                <div class="col-lg-4"></div>
            </div>
        </div>
    </div>
    <section id="recent-works">
        <div class="container">
            <div class="row" style="margin-bottom:-20px;">
                <div class="col-md-3">
                    <h3>Lo más visto de Diciembre</h3>
                    <p>Estas son las películas más vistas por los usuarios de los cines CINESA.</p>
                    <div class="btn-group">
                        <a class="btn btn-danger" href="#scroller" data-slide="prev"><i class="icon-angle-left"></i></a>
                        <a class="btn btn-danger" href="#scroller" data-slide="next"><i class="icon-angle-right"></i></a>
                    </div>
                    <p class="gap"></p>
                </div>
                <div class="col-md-9">
                    <div id="scroller" class="carousel slide">
                        <div class="carousel-inner">
                            <div class="item active">
                                <div class="row">
                                    <div class="col-xs-4">
                                        <div class="portfolio-item">
                                            <div class="item-inner">
                                                <img class="img-responsive" src="stylePeli/images/5.jpg" alt="">
                                                <h5>
                                                    TARZÁN
                                                </h5>
                                                <div class="overlay">
                                                    <a class="preview btn btn-danger" title="TARZÁN" href="stylePeli/images/5.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>                            
                                    <div class="col-xs-4">
                                        <div class="portfolio-item">
                                            <div class="item-inner">
                                                <img class="img-responsive" src="stylePeli/images/6.jpg" alt="">
                                                <h5>
                                                    LA EDAD DE HIELO 4
                                                </h5>
                                                <div class="overlay">
                                                    <a class="preview btn btn-danger" title="LA EDAD DE HIELO 4" href="stylePeli/images/6.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>                            
                                    <div class="col-xs-4">
                                        <div class="portfolio-item">
                                            <div class="item-inner">
                                                <img class="img-responsive" src="stylePeli/images/7.jpg" alt="">
                                                <h5>
                                                    THE CONJURING 2
                                                </h5>
                                                <div class="overlay">
                                                    <a class="preview btn btn-danger" title="THE CONJURING 2" href="stylePeli/images/7.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div><!--/.row-->
                            </div><!--/.item-->
                            <div class="item">
                                <div class="row">
                                    <div class="col-xs-4">
                                        <div class="portfolio-item">
                                            <div class="item-inner">
                                                <img class="img-responsive" src="stylePeli/images/4.jpg" alt="">
                                                <h5>
                                                    CENTRAL INTELLIGENCE
                                                </h5>
                                                <div class="overlay">
                                                    <a class="preview btn btn-danger" title="CENTRAL INTELLIGENCE" href="stylePeli/images/4.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-4">
                                        <div class="portfolio-item">
                                            <div class="item-inner">
                                                <img class="img-responsive" src="stylePeli/images/3.jpg" alt="">
                                                <h5>
                                                   INDEPENDENCE DAY
                                                </h5>
                                                <div class="overlay">
                                                    <a class="preview btn btn-danger" title="INDEPENDENCE DAY" href="stylePeli/images/3.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>                            
                                    <div class="col-xs-4">
                                        <div class="portfolio-item">
                                            <div class="item-inner">
                                                <img class="img-responsive" src="stylePeli/images/2.jpg" alt="">
                                                <h5>
                                                    MAXIMUM RIDE
                                                </h5>
                                                <div class="overlay">
                                                    <a class="preview btn btn-danger" title="MAXIMUM RIDE" href="stylePeli/images/2.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!--/.item-->
                        </div>
                    </div>
                </div>
            </div><!--/.row-->
            <hr>
		<div class="row">
			<div class="col-lg-12 text-center" style="height:100px;">
			
				<a class="btn btn-lg btn-primary" href="cartelera.jsp">IR A CARTELERA</a>
			</div>
		</div>
	</div>
    </section><!--/#recent-works-->

	<div class="dise2">
    	<div class="container">
    		<div class="row">
    		<div class="col-lg-12 text-center">
    	<h2>¿OFERTAS?</h2>
    </div>
    </div> 
    </div>
    </div>
    <section id="services" class="emerald" style="background-color:#687989;">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <div class="media">
                        <div class="pull-left">
                            <i class="icon-twitter icon-md"></i>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Siguenos en Twitter</h3>
                            <p>Lanzamos muchas ofertas de las que te puedes aprovechar, y un montón de novedades que no te puedes perder</p>
                        </div>
                    </div>
                </div><!--/.col-md-4-->
                <div class="col-md-4 col-sm-6">
                    <div class="media">
                        <div class="pull-left">
                            <i class="icon-facebook icon-md"></i>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Siguenos en Facebook</h3>
                            <p>En nuestra página de Facebook encontrarás las películas de estreno con cupones descuento de los que te puedes aprovechar.</p>
                        </div>
                    </div>
                </div><!--/.col-md-4-->
                <div class="col-md-4 col-sm-6">
                    <div class="media">
                        <div class="pull-left">
                            <i class="icon-google-plus icon-md"></i>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Siguenos en Google Plus</h3>
                            <p>La red social con la que estamos más afines y lo cual nuestro patrocinador estrella 'Google' hace diversos sorteos.</p>
                        </div>
                    </div>
                </div><!--/.col-md-4-->
            </div>
        </div>
    </section><!--/#services-->

	
<div class="clearfix"></div>
	<div class="container" style="margin-bottom: 90px;">
		<div class="row"style="padding-top: 60px; padding-bottom: 30px;">
			<div class="col-lg-12 center text-center center-block">
				<h2><strong>¡SOMOS EL REFERENTE NACIONAL!</strong></h2>
			</div>

		</div>
		<div class="row" style="padding: 20px; margin-top:20px; background: #34495e; border-radius:10px; color:white;">
		<div class="col-lg-1 center text-center center-block">
				
			</div>
			<div class="col-lg-4 center text-center center-block">
				<img class="img-responsive center-block" src="images/premio.png"
					alt="">
			</div>
			
			<div class="col-lg-6 center text-left center-block">
				<h1 style="margin-top: 90px;" class="text-left ">
					<strong>Otorgado el premio al mejor cine del año por el
						ministerio de cultura</strong> <br> <small>¡HACEMOS CINE!</small>
				</h1>
			</div>
			<div class="col-lg-1 center text-center center-block">
				
			</div>
		</div>
	</div>
<div class="clearfix"></div>


<%@ include file="principales/footer.jsp" %>

<script type="text/javascript">
$(document).ready(function() {
    $("div.bhoechie-tab-menu>div.list-group>a").click(function(e) {
        e.preventDefault();
        $(this).siblings('a.active').removeClass("active");
        $(this).addClass("active");
        var index = $(this).index();
        $("div.bhoechie-tab>div.bhoechie-tab-content").removeClass("active");
        $("div.bhoechie-tab>div.bhoechie-tab-content").eq(index).addClass("active");
    });
});
</script>

</body>
</html>