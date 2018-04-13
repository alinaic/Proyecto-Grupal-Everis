package daos;

public class ConstantesSQL {

	public static final String IDENFITICAR_USUARIO = "select id from usuarios where usuario like ? and contraseña like ?";
	public static final String IDENFITICAR_USUARIO_ADMIN = "select id from administradores where"
			+ " usuario like ? and contraseña like ?";
	public static final String REGISTRAR_USUARIO = "insert into usuarios (usuario,contraseña,nombre,apellidos,"
			+ "fechaNacimiento,email,dni) values (?,?,?,?,?,?,?)";
	public static final String LISTAR_PAISES = "SELECT * FROM paises";
	public static final String LISTAR_COMUNIDADES = "SELECT * FROM comunidades where pais = ?";
	public static final String LISTAR_MUNICIPIOS = "SELECT * FROM municipios where provincia_id = ?";

}
