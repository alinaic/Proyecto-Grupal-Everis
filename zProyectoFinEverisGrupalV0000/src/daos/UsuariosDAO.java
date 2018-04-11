package daos;

import modelo.Usuario;

public interface UsuariosDAO {
	
	int identificarUsuario(String user,String pass);
	void registrarUsuario(Usuario usuario);
}
