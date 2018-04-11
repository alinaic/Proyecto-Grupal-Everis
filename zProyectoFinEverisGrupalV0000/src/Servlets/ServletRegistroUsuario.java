package Servlets;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daos.UsuariosDAO;
import daosImpl.UsuariosDAOImpl;
import modelo.Usuario;

@WebServlet("/ServletRegistroUsuario")
public class ServletRegistroUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String nombre = request.getParameter("campoNombre");
		String apellidos = request.getParameter("campoApellidos");
		String fechaNacimiento = request.getParameter("campoFechaNacimiento");
		String email = request.getParameter("campoEmail");
		String dni = request.getParameter("campoDNI");
		String usuario = request.getParameter("campoUsuario");
		String contraseña = request.getParameter("campoContraseña");
		String repContraseña = request.getParameter("campoRepetirContraseña");
		
		/**TODO validaciones */
		
		/* Fin validaciones */
		
		/** Transformacion de fecha nacimiento */
		/*SimpleDateFormat formatoDelTexto = new SimpleDateFormat("yyyy-MM-dd");
		Date fn = null;
		try {
			fn = formatoDelTexto.parse(fechaNacimiento);
		} catch (ParseException ex) {
			System.out.println("Error al transformar la fecha de nacimiento");
			ex.printStackTrace();
		}*/
		/** Fin transformacion fecha */
		
		Usuario usuarios = new Usuario(nombre, apellidos, dni, email, usuario, contraseña, fechaNacimiento);
		UsuariosDAO daoUsuario = new UsuariosDAOImpl();
		daoUsuario.registrarUsuario(usuarios);
		System.out.println("usuario registrado con exito");
		
		request.getRequestDispatcher("registroUsuarioOK.jsp").forward(request, response);
		System.out.println("a");
		
	}

}
