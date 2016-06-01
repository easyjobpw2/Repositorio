<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="modelo.*"%>
<%@ page import="java.util.*"%>
<% List<Postulante> postulantes = (List<Postulante>)request.getAttribute("postulantes");%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Easy-Job</title>
<link rel="stylesheet" href="styles.css" type="text/css" />


<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/slider.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>

<script type="text/javascript" src="js/custom.js"></script>

<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
</head>
<body>
<div id="container">

    <header>
	<div class="width">
    		<h1><a href="/">Easy-Job</a></h1>

		   
		     <nav>
	
    			<ul class="sf-menu dropdown">
        	<li class="selected"><a href="index.jsp">Inicio</a></li>
            <li><a class="has_submenu" href="#">Registrarce</a>
            	<ul>
                	<li><a href="#">Como Empresa</a></li>
                    <li><a href="registroPostulante.jsp">Como Postulante</a></li>           
                </ul>
            </li>
	   
            <li><a class="has_submenu" href="#">Iniciar Session</a>
            	<ul>
                	<li><a href="#">Como Empresa</a></li>
                    <li><a href="#">Como Trabajador</a></li>
                     <li><a href="login.jsp">Administrador</a></li>
                </ul>
            </li>
            <li><a href="#">Contactanos</a></li>
        </ul>
	
    			</nav>
       	</div>

	<div class="clear"></div>

    <div id="slides-container" class="slides-container width">
        <div id="slides">
            <div>
                
                    <h2>Encuentra tu empleo mas facilmente!</h2>
                    <p>Bienvenido a nuestro sitio web, te brindamos 
                    de la manera mas sencilla el buscar un trabajo,
                     trabajamos con empresas de confianza, postula ahora
                      mismo a un empleo de acuerdo a tus habilidades!
                    </p>
                                  	
			<p style="text-align:center;"><a href="#" class="button button-slider">Registrate Ya!</a></p>
                    

            
                
            </div>
            
        
	
	 <div>
            	<h2>Empresario!</h2>
                <p>Encuentra tu personal de confianza, trabaja con personas capacitadas
                y lideres que buscan hacer crecer tu empresa con su trabajo en equipo,
                jovenes practicantes con habilidades que se necesitan hoy en dia, REGISTRATE tu tambien empresario!</p>
                
            </div>
 
         
		</div>
        <div class="controls"><span class="jFlowNext"><span>Next</span></span><span class="jFlowPrev"><span>Prev</span></span></div>        
        <div id="myController" class="hidden">
		<!-- COPY AND PASTE SLIDE CONTROL FOR EACH NEW SLIDE -->
		<span class="jFlowControl">Slide 1</span>
		<span class="jFlowControl">Slide 2</span>
	</div>
    </div>


    </header>




    <div id="body" class="width">

 <aside class="sidebar big-sidebar left-sidebar">
	
          <ul>	
                <li>
                    <h4>Menu</h4>
                    <ul class="blocklist">
                        <li><a class="selected" href="index.jsp">Inicio</a></li>
                        <li><a href="#">Postulantes</a></ul>
				<ul>
					<li><a href="registroPostulante.jsp">Registrar Postulantes</a></li>
					<li><a href="mostrarPostulante">Mostrar Postulantes</a></li>
					
					<li><a href="Eliminar.jsp">Eliminar Postulante</a></li>
				</ul>
				<ul>
					<li><a href="registroEmpresa">Registrar Empresas</a></li>
					<li><a href="mostrarEmpresa">Mostrar Empresas</a></li>
					<li><a href="Eliminar.jsp">Eliminar Empresa</a></li>
				</ul>
				<ul>
					<li><a href="registroAdministrador.jsp">Registrar Admin</a></li>
					<li><a href="mostrarAdministrador">Mostrar Admin</a></li>
					<li><a href="Eliminar.jsp">Eliminar Admin</a></li>
				</ul>
			</li>
                    </ul>
                
                <li class="bg">
                    <h4>Nosotros</h4>
                    <ul>
                        <li class="text">
                        	<p style="margin: 0;">Somos estudiantes universitarios de la <a href="#" class="readmore">Leer mas &raquo;</a></p>
                        </li>
                    </ul>
                </li>
                
                <li>
                	<h4>Buscar Sitios</h4>
                    <ul>
                    	<li class="text">
                            <form method="get" class="searchform" action="#" >
                                <p>
                                    <input type="text" size="32" value="" name="s" class="s" />
                                    
                                </p>
                            </form>	
						</li>
					</ul>
                </li>
                
                <li>
                    <h4>Links de Ayuda</h4>
                    <ul>
                        <li><a href="#" title="premium templates">Pregrado</a></li>
                        <li><a href="#" title="web hosting">Postgrado</a></li>
                        <li><a href="#" title="Tux Themes">Empresas</a></li>
                    </ul>
                </li>
                
            </ul>
		
        </aside>




		<section id="content" class="two-column with-left-sidebar">
	  <article>
	    <h2>Lista de Postulantes</h2>
            
            <h3>Table</h3>

            <table cellspacing="0">
                <tr>
                    <th>ID</th>
                    <th>DNI</th>
                    <th>Nombres</th>
                    <th>Apellidos</th>
                    <th>Email</th>
                    <th>Telefono</th>
                    <th>Titulo</th>
                    <th></th>
                </tr>
               
               <%for( Postulante p : postulantes ) {%>
                    <tr>
                        <td><%= p.getKey() %></td>
                        <td><%= p.getDni() %></td>
                        <td><%= p.getName() %></td>
                        <td><%= p.getLastname()%></td>
                        <td><%= p.getEmail() %></td>
                        <td><%= p.getPhone() %></td>
                        <td><%= p.getTitulo()%></td>
                    
                    </tr>
                <%}%>

            </table>

            <p>&nbsp;</p>
            
      		</article>
	</section>

    	<div class="clear"></div>
    </div>
    <footer>
        <div class="footer-content width">
            <ul>
            	<li><h4>Departamentos</h4></li>
                <li><a href="#">Arequipa</a></li>
                <li><a href="#">Lima</a></li>
                <li><a href="#">Cusco</a></li>
                <li><a href="#">Puno</a></li>
                <li><a href="#">Tacna</a></li>
            </ul>
            
            <ul>
            	<li><h4>Agradecimientos</h4></li>
                <li><a href="#">Universidad Nacional de San Agustin</a></li>
                <li><a href="#">Escuela Profesional de Ingenieria de Sistemas </a></li>
                <li><a href="#">Edson Miranda Callo</a></li>
                <li><a href="#">Miguel Apaza Bolivar</a></li>
                <li><a href="#">wendy Olin Aco</a></li>
            </ul>

 	    <ul>
                <li><h4>Redes</h4></li>
                <li><a href="#">Facebook</a></li>
                <li><a href="#">Twitter</a></li>
                <li><a href="#">Instagram</a></li>
            </ul>
            
            
            <div class="clear"></div>
        </div>
        <div class="footer-bottom">
            <p>&copy; PW2 2016. <a href="#">EPIS</a> hecho por Easy-Job</p>
         </div>
    </footer>
</div>
</body>
</html>