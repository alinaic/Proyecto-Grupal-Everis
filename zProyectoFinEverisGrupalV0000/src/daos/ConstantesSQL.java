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
	public static final String LISTAR_PREGUNTAS = "SELECT * FROM preguntas";
	public static final String SELECCION_RESPUESTASPREGUNTAS ="select * from respuestaspreguntas";
	
	//SQL para registrar respuestas del formulario
	public static final String REGISTRAR_RESPUESTA_TEXTO = "insert into textrespuestas (respuesta, idpregunta) values (?,?)";
	public static final String REGISTRAR_RESPUESTA_RADIO = "insert into radiorespuestas (respuesta, idpregunta) values (?,?)";
	public static final String REGISTRAR_RESPUESTA_CHECK = "insert into checkrespuestas (respuestas, idpregunta) values (?,?)";

}
