package daos;

import java.util.List;

import modelo.Municipios;

public interface MunicipiosDAO {
	
	List<Municipios> listarMunicipios (int comunidad);
}
