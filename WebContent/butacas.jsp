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
        	
        	String butacasOcupadas = cine.getButacasOcupadas(idSesion);
        	System.out.println(butacasOcupadas);
        	
    	
      	 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
	<head>
		<title>JSC Demo</title>
		
		<link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>

		    <link href="css/sweetalert.css" rel="stylesheet" type="text/css">
		    <link href="css/ladda.min.css" rel="stylesheet" type="text/css">
		<style>
		div.seatCharts-container {
	/*min-width: 700px;*/
}
div.seatCharts-cell {

	height: 16px;
	width: 16px;
	margin: 3px;
	float: left;
	text-align: center;
	outline: none;
	font-size: 13px;
	line-height:16px;
	color: blue;

}
div.seatCharts-seat {
	background-color: green;
	color: white;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	cursor: default;
}
div.seatCharts-seat:focus {
	border: none;
}
/*
.seatCharts-seat:focus {
	outline: none;
}
*/

div.seatCharts-space {
	background-color: white;
}
div.seatCharts-row {
	height: 50px;
}

div.seatCharts-row:after {
	clear: both;
}

div.seatCharts-seat.selected {
	background-color: aqua;
}

div.seatCharts-seat.focused {
	background-color: #6db131;
}

div.seatCharts-seat.available {
	background-color: #2da12d;
}

div.seatCharts-seat.unavailable {
	background-color: red;
	cursor: not-allowed;
}

ul.seatCharts-legendList {
	list-style: none;
}
li.seatCharts-legendItem {
	margin-top: 10px;
	line-height: 2;
}
		body {
	font-family: 'Lato', sans-serif;
}
a {
	color: #b71a4c;
}
.front-indicator {
	
	margin: 5px 32px 15px 32px;
	background-color: #f6f6f6;	
	color: #adadad;
	text-align: center;
	padding: 3px;
	border-radius: 5px;
}
.wrapper {
	width: 100%;
	text-align: center;
}
.container {
	margin: 0 auto;
	width: 500px;
	text-align: left;
}
.booking-details {
	float: left;
	text-align: left;
	margin-left: 35px;
	font-size: 12px;
	position: relative;
	height: 401px;
}
.booking-details h2 {
	margin: 25px 0 20px 0;
	font-size: 17px;
}
.booking-details h3 {
	margin: 5px 5px 0 0;
	font-size: 14px;
}
div.seatCharts-cell {
	color: #182C4E;
	height: 25px;
	width: 25px;
	line-height: 25px;
	
}
div.seatCharts-seat {
	color: #FFFFFF;
	cursor: pointer;	
}
div.seatCharts-row {
	height: 35px;
}

div.seatCharts-seat.available.first-class {
/* 	background: url(vip.png); */
	background-color: #3a78c3;
}
div.seatCharts-seat.focused {
	background-color: #76B474;
}
div.seatCharts-seat.selected {
	background-color: #E6CAC4;
}

div.seatCharts-container {
	border-right: 1px dotted #adadad;
	width: auto;
	padding: 20px;
	float: left;
	padding-right: 5%;
}
div.seatCharts-legend {
	padding-left: 0px;
	
	bottom: 16px;
}
ul.seatCharts-legendList {
	padding-left: 0px;
}
span.seatCharts-legendDescription {
	margin-left: 5px;
	line-height: 30px;
}
.checkout-button {
	display: block;
	margin: 10px 0;
	font-size: 14px;
}
#selected-seats {
	max-height: 100%;
	overflow-y: scroll;
	overflow-x: none;
	width: 170px;
}
		
		
		</style>
	</head>
	
	<body>
		
			
				<div id="seat-map">
				 <div class="front-indicator">PANTALLA</div>
					
				</div>
				<div class="booking-details">
									<div id="legend"></div>
					<h2>Detalles de la reserva</h2>
					
					<h3> Asientos seleccionados(<span id="counter">0</span>):</h3>
					<ul id="selected-seats"></ul>
					
					Total: <b>&euro;<span id="total">0</span></b>
					
				
					<button style="margin-top: 30px;" id="comprar" class="checkout-button ladda-button" data-style="expand-right"><span class="ladda-label">Reservar</span></button>

				</div>
			
		
		
		<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
		<script src="js/jquery.seat-charts.js"></script>
		    <script src="js/sweetalert.min.js"></script>
		    		    <script src="js/spin.min.js"></script>   
		    <script src="js/ladda.min.js"></script>
   
		
		<script>
	
		// Bind normal buttons
		//Ladda.bind( '.button', { timeout: 2000 } );
		
			var firstSeatLabel = 1;
			var parametros = {

				}; 
			$(document).ready(function() {
				var $cart = $('#selected-seats'),
					$counter = $('#counter'),
					$total = $('#total'),
					sc = $('#seat-map').seatCharts({
					map: <%=sesion.getMap()%>,
					seats: {

						e: {
							price   : 6,
							classes : 'economy-class', //your custom CSS class
							category: 'Butaca'
						}					
					
					},
					naming : {
						top : false,
						getLabel : function (character, row, column) {
							return firstSeatLabel++;
						},
					},
					legend : {
						node : $('#legend'),
					    items : [
							
							[ 'e', 'available',   'Asiento libre'],
							[ 'f', 'unavailable', 'Asiento ocupado']
					    ]					
					},
					click: function () {
						if (this.status() == 'available') {

							
							//let's create a new <li> which we'll add to the cart items
							$('<li name="' +this.settings.id +'">'+this.data().category+' #'+this.settings.label+'<br> <b>&euro;'+this.data().price+'</b> <a href="#" class="cancel-cart-item">[cancelar]</a></li>')
								.attr('id', 'cart-item-'+this.settings.id)
								.data('seatId', this.settings.id)
								.appendTo($cart);
							
							/*
							 * Lets update the counter and total
							 *
							 * .find function will not find the current seat, because it will change its stauts only after return
							 * 'selected'. This is why we have to add 1 to the length and the current seat price to the total.
							 */
							$counter.text(sc.find('selected').length+1);
							$total.text(recalculateTotal(sc)+this.data().price);

							return 'selected';
						} else if (this.status() == 'selected') {
							//update the counter
							$counter.text(sc.find('selected').length-1);
							//and total
							$total.text(recalculateTotal(sc)-this.data().price);
						
							//remove the item from our cart
							$('#cart-item-'+this.settings.id).remove();
						
							//seat has been vacated
							return 'available';
						} else if (this.status() == 'unavailable') {
							//seat has been already booked
							return 'unavailable';
						} else {
							return this.style();
						}
					}
				});

				//this will handle "[cancel]" link clicks
				$('#selected-seats').on('click', '.cancel-cart-item', function () {
					//let's just trigger Click event on the appropriate seat, so we don't have to repeat the logic here
					sc.get($(this).parents('li:first').data('seatId')).click();
				});

				//let's pretend some seats have already been booked
				sc.get(<%=butacasOcupadas%>).status('unavailable');
		
		});

		function recalculateTotal(sc) {
			var total = 0;
		
			//basically find every selected seat and sum its price
			sc.find('selected').each(function () {
				total += this.data().price;
			});
			
			return total;
		}
		var element = {};
		$( "#comprar" ).click(function() {
				var listItems = $("#selected-seats li");
				var cont = 1;
				listItems.each(function(idx, li) {
				    var product = $(li);
					//console.log(product.attr("name"));
					element[ cont ] = product.attr("name");
				    cont++;
				});
				if (cont == 1)
				{
					parent.error();
				}
				else
				{
					parent.success(element,<%=sesion.getIdSesion()%>);
				}
			
			});
		
		

		
		
		
		
		</script>
	</body>
</html>

  	<%
    	}
    	

    	
    
    
    %>
