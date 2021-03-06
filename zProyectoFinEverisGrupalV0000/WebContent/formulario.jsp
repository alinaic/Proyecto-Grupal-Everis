<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List" %>
<%@page import="modelo.Preguntas" %>
<%@page import="modelo.Respuestaspreguntas" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	
	<form action="ServletRecogidaDatos" method="post">
		<%
		if(request.getAttribute("preguntas") instanceof List){
			
			//Recojo las preguntas y respuestas del servlet
			List<?>listaPreguntas=(List<?>)request.getAttribute("preguntas");
			List<?>listaRespuestas=(List<?>)request.getAttribute("respuestas");
			
			//Bucle para ir publicando las preguntas
			for(int i=0;i<listaPreguntas.size();i++) {
				out.println("<div class='campoFormulario'>");
				//Voy sacando pregunta y su respectiva respuesta
				Preguntas pregunta = (Preguntas)listaPreguntas.get(i);
				Respuestaspreguntas respuesta = (Respuestaspreguntas)listaRespuestas.get(i);
				
			    out.println(pregunta.getDescripcion() + "<br/>");
			    
			    //Si la pregunta es de texto...
			    if(pregunta.getTipo()== 1){
			    	
			    	out.println("<input type='text' name='" + pregunta.getTipo() + "_" + pregunta.getIdpregunta() + "'><br/>");
			    	out.println("</div>");
			    }else if(pregunta.getTipo() == 2){//Si la pregunta es de tipo radio...
			    	
			    	//Guardo en un array las posibles respuestas
			    	String[] respuestasRadio = respuesta.getDescripcion().split("-");
			    	
			    	//Imprimo cada respuesta
			    	for(int j=0;j<respuestasRadio.length;j++){
			    		out.println("<input type='radio' name='" + pregunta.getTipo() + "_" + pregunta.getIdpregunta() + "' value='" + respuestasRadio[j] + "'> " + respuestasRadio[j] + "&nbsp;&nbsp;&nbsp;");
			    	}
			    	
			    }else if(pregunta.getTipo() == 3){//Si la pregunta es de tipo check lo mismo que las de tipo radio
			    	String[] respuestasCheck = respuesta.getDescripcion().split("-");
			    	for(int j=0;j<respuestasCheck.length;j++){
			    		out.println("<input type='checkbox' name='" + pregunta.getTipo() + "_" + pregunta.getIdpregunta() + "_" + (j+1) + "' value='" + respuestasCheck[j] + "'> " + respuestasCheck[j] + "&nbsp;&nbsp;&nbsp;");
			    	}
			    	out.println("</div>");
			    }
			}
		}
		%>
		<input type="submit" value="Enviar formulario">
	
	</form>
</body>
</html>