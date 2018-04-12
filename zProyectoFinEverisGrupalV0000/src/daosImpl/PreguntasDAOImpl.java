package daosImpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import modelo.Preguntas;
import daos.ConstantesSQL;
import daos.GenericDAO;
import daos.PreguntasDAO;

public class PreguntasDAOImpl extends GenericDAO implements PreguntasDAO {

	@Override
	public List<Preguntas> obtenerPreguntas() {
		conectar();
		List<Preguntas> preguntas = new ArrayList<Preguntas>();
		try {
			PreparedStatement ps = con
					.prepareStatement(ConstantesSQL.LISTAR_PREGUNTAS);
			ResultSet resultado = ps.executeQuery();
			while (resultado.next()) {
				Preguntas pregunta = new Preguntas();
				pregunta.setIdpregunta(resultado.getInt("idpregunta"));
				pregunta.setDescripcion(resultado.getString("descripcion"));
				pregunta.setTipo(resultado.getInt("tipo"));
				preguntas.add(pregunta);

			}
		} catch (SQLException e) {
			System.out.println("Error en la SQL");
			e.printStackTrace();
		}
		desconectar();
		return preguntas;
	}

}
