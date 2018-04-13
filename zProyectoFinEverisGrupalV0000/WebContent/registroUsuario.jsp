<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html;"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html;">
		<title>Registrate para entrar en la pagina web</title>
		<!-- CSS -->
		<link rel="stylesheet" href="css/style.css">
		
	</head>
	<body>
		<div id="clouds">
			<div class="cloud x1"></div>
			<!-- Time for multiple clouds to dance around -->
			<div class="cloud x2"></div>
			<div class="cloud x3"></div>
			<div class="cloud x4"></div>
			<div class="cloud x5"></div>
		</div>
	
	   <div class="container">
	      <div id="login">
	
	        <form action="ServletRegistroUsuario"	 method="post">
	
	          <fieldset class="clearfix">
				
				
	            Nombre:<br/> 
	            <p><span class="fontawesome-user"></span><input type="text" name="campoNombre" required></p>
	            Apellidos:<br/>
	            <p><span class="fontawesome-user"></span><input type="text" name="campoApellidos" required></p> 
	            Fecha de nacimiento:<br/>
	            <p><span class="fontawesome-user"></span><input id="campofecha" type="date" name="campoFechaNacimiento" required></p> 
	            
	            <!-- 					SELECTOR DE PAISES			 -->
	            Pais:<br/>
	            <select name="selectPais" id="selectPais" onChange="mostrarComunidad();">
	            	<option class="option" value="-1">---</option>
	            	<c:forEach items="${paises}" var="pais">
	            		<option class="option" value="${pais.id}">${pais.nombre}</option>
	            	</c:forEach>
	            </select><br/>
	            <!-- 						FIN PAISES			 -->
	            
	            
	             <!-- 					SELECTOR DE COMUNIDADES			 -->
	            <div id='comunidades'>            	
	            	 Comunidad Autonoma:<br/>
		            <select name="selectcomunidades" id="selectcomunidades" onChange="mostrarMunicipios();" >
		            	<option class="option" value="-1">------</option>
		            
		            </select><br/>
	            </div>
	            <!-- 						FIN COMUNIDADES			 -->
	            
	            <!-- 					SELECTOR DE MUNICIPIOS			 -->
	            <div id='municipios'>	
		            Municipio:<br/>
		            <select name="selectMunicipios" id="selectMunicipios">
		          	  <option class="option" value="-1">------</option>
		            </select><br/>
	            </div>
	             <!-- 						FIN MUNICIPIOS			 -->
	            
	             
	            <br/>Email:<br/>
	            <p><span class="fontawesome-user"></span><input type="email" name="campoEmail" required></p> 
	            DNI:<br/>
	            <p><span class="fontawesome-user"></span><input type="text" name="campoDNI" required></p> 
	            Usuario:<br/>
	            <p><span class="fontawesome-user"></span><input type="text" name="campoUsuario" required></p> 
	            Contraseña:<br/>
	            <p><span class="fontawesome-user"></span><input type="password" name="campoContraseña" required></p> 
	            Repita la contraseña:<br/>
	            <p><span class="fontawesome-user"></span><input type="password" name="campoRepetirContraseña" required></p>
	            <p><input type="submit" value="Registrarse"></p>
	
	          </fieldset>
	
	        </form>
	
	      </div> <!-- end login -->
	
	    </div>
		
		<!--  JQUERY -->
		<script type="text/javascript" src="./jquery/jquery.js"></script>
		<script type="text/javascript" src="./jquery/registroJQ.js"></script>
		
		<!--  JS -->
		<script src="./js/registro.js"></script>
		
		
	</body>
</html>