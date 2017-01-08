    <header class="navbar navbar-inverse navbar-fixed-top wet-asphalt " role="banner">
        <div class="container cabecarte">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle center" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp"><img src="images/logo.png" alt="logo" style="height:80px"></a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="index.jsp">Inicio</a></li>
                    <li><a href="cartelera.jsp">Cartelera</a></li>
                    <li><a href="quienes-somos.jsp">Quienes Somos</a></li>
                    <li><a href="contacto.jsp">Contacto</a></li>                    
                    
                        <% if (session.getAttribute("username") == null  || session.getAttribute("username").equals(""))
						   {						    	
						  		  	
						%>  
								<li><a class="loginR" href="login.jsp" style="color:yellow; font-weight: bolder;">Login/Registro</a></li>
						<%  	
						   }
						   else
						   {
					    %>	  
					    		<li><a onClick=logout() class="loginR" href="" style="color:yellow; font-weight: bolder;">Logout <%=session.getAttribute("username")%> </a></li>
							  
						    	 
						<%    	
						   }
    	
						%>
                    
                    
                </ul>
            </div>
        </div>
    </header><!--/header-->