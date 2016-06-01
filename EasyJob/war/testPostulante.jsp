name="p3"value<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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
					
					<li><a href="testPostulante.jsp">TOMAR TEST</a></li>
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
	 

            <p>&nbsp;</p>

            
            <h3>Test Postulante</h3>

            <fieldset>
                <legend> Test </legend>
                <form action="/evaluartest" method="get">
                    <p>1.- A la hora de organizar equipos (de trabajo, amigos, etcétera)…:<br>
                    	
                    	<input type="radio" name="p1" value="0" > Intento quitarme de en medio para que lo haga otro.<br>
  						<input type="radio" name="p1" value="2"> Me gusta y creo que se me da bien.<br>
 						<input type="radio" name="p1" value="1"> Participo en lo que pueda, pero siempre contando con alguna otra persona.<br>  
 					<p>2.- Cuando tengo que hablar en público (en el trabajo, una fiesta…)
                    	<input type="radio" name="p2" value="2"> En general no me importa y me siento cómodo.<br>
  						<input type="radio" name="p2" value="0"> Lo evito por todos los medios.<br>
 						<input type="radio" name="p2" value="1"> Cuando hay que hacerlo lo hago, pero no es algo que me guste.<br>
                    <p>3.- Cuando estoy en un grupo o reunido con otras personas.<br>
                    	<input type="radio" name="p3"value="0"  > Me siento muy incómodo.<br>
  						<input type="radio" name="p3"value="1"> Estoy bien,pero prefiero pasar por desapercibido<br>
 						<input type="radio" name="p3"value="2" > Me encuentro muy a gusto y me divierto bastante.<br>
                    <p>4.- A la hora de exponer diferentes puntos de vista<br>
                    	<input type="radio" name="p4"value="0"  >Prefiero callarme y escuchar al resto. <br>
  						<input type="radio" name="p4"value="2">Me gusta exponer el mío para ver si así proporciono una nueva visión al grupo. <br>
 						<input type="radio" name="p4"value="1" > Si algo me parece realmente importante entonces sí digo mi opinion <br>
                    <p>5.- Cuando hago planes con amigos…<br>
                    	<input type="radio" name="p5"value="0"  >Me adapto a lo que me digan. <br>
  						<input type="radio" name="p5"value="2">Reconozco que casi siempre hacemos lo que quiero yo. <br>
 						<input type="radio" name="p5"value="1" > Suelo decir mis preferencias, pero frecuentemente hacemos la de otro.<br>
                    <p>6.- Si tengo que organizar un equipo de trabajo…<br>
                    	<input type="radio" name="p6"value="0"  >Dejo que cada uno elija lo que quiere hacer y lo que sobre lo hago yo. <br>
  						<input type="radio" name="p6"value="1"> Reparto tareas según se ha hecho en ocasiones anteriores.<br>
 						<input type="radio" name="p6"value="2" >Me gusta conocer bien los recursos humanos que tengo para poder asignar a cada uno el trabajo más adecuado a su perfil.<br>
                    <p>7.-En el café o en una charla… <br>
                    	<input type="radio" name="p7"value="2"  > Reconozco que monopolizo la conversación contando experiencias personales.<br>
  						<input type="radio" name="p7"value="1">Cuando me dejan o procede cuento alguna cosa de vez en cuando. <br>
 						<input type="radio" name="p7"value="0" >Puedo irme y es posible que ni se enteren. <br>
 					<p>8.- En mi casa, familia o equipo de trabajo…<br>
                    	<input type="radio" name="p8"value="0"  >Soy el último en enterarme de las cosas. <br>
  						<input type="radio" name="p8"value="1">Suelen preguntarme de vez en cuando. <br>
 						<input type="radio" name="p8"value="2" >Casi todo el mundo me consulta antes de tomar una decisión. <br>
 					<p>9.- ¿Cuántas veces has sido “el jefe” (coordinador de equipo, organizador de un evento…)? <br>
                    	<input type="radio" name="p9"value="1"  > En algunas ocasiones.<br>
  						<input type="radio" name="p9"value="0"> Nunca.<br>
 						<input type="radio" name="p9"value="2" >Siempre que se tercia la oportunidad. <br>
 					<p>10.- Cuando los demás preguntan tu opinión o te piden un consejo…<br>
                    	<input type="radio" name="p10"value="2"  >Les respondo según mi punto de vista, pero siempre respetando el suyo. <br>
  						<input type="radio" name="p10"value="1">Les digo mi punto de vista y me molesta cuando no le siguen. <br>
 						<input type="radio" name="p10"value="0" >Rara vez me preguntan y cuando lo hacen no sé muy bien qué decirles.<br>
 					<p>11.- Cuando como organizador debes repartir tareas en el trabajo…<br>
                    	<input type="radio" name="p11"value="0"  >Me aprovecho de los subordinados.<br>
  						<input type="radio" name="p11"value="2">Intento ser lo más justo posible. <br>
 						<input type="radio" name="p11"value="1" >Intento repartirlas de forma adecuada, pero admito que no siempre soy imparcial. <br>
 					<p>12.- En general en mi vida…<br>
                    	<input type="radio" name="p12"value="2"  > Prefiero decidir yo por otro antes que otros decidan por mí.<br>
  						<input type="radio" name="p12"value="0">Prefiero que me indiquen lo que debo hacer. <br>
 						<input type="radio" name="p12"value="1" >Prefiero asumir yo mis decisiones, aunque a veces suelen basarse en la opinión de otros que considero “más fuertes” que yo. <br>
   
						<input type='submit' value="Evaluar">

                  </form>
               </fieldset>
            
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