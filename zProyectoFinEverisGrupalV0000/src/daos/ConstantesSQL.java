package daos;

public class ConstantesSQL {

	public static final String IDENFITICAR_USUARIO = "select id from usuarios where usuario like ? and contraseņa like ?";
	public static final String IDENFITICAR_USUARIO_ADMIN = "select id from administradores where"
			+ " usuario like ? and contraseņa like ?";
	public static final String REGISTRAR_USUARIO = "insert into usuarios (usuario,contraseņa,nombre,apellidos,"
			+ "fechaNacimiento,email,dni) values (?,?,?,?,?,?,?)";

}
