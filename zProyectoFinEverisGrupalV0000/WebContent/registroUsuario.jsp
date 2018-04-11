<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
	            <p><span class="fontawesome-user"></span><input type="text" name="campoFechaNacimiento" required></p> 
	            Email:<br/>
	            <p><span class="fontawesome-user"></span><input type="text" name="campoEmail" required></p> 
	            DNI:<br/>
	            <p><span class="fontawesome-user"></span><input type="text" name="campoDNI" required></p> 
	            Usuario:<br/>
	            <p><span class="fontawesome-user"></span><input type="text" name="campoUsuario" required></p> 
	            Contraseña:<br/>
	            <p><span class="fontawesome-user"></span><input type="text" name="campoContraseña" required></p> 
	            Repita la contraseña:<br/>
	            <p><span class="fontawesome-user"></span><input type="text" name="campoRepetirContraseña" required></p>
	            <p><input type="submit" value="Registrarse"></p>
	
	          </fieldset>
	
	        </form>
	
	      </div> <!-- end login -->
	
	    </div>
		
	</body>
</html>