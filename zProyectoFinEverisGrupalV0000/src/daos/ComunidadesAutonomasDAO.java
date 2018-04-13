package daos;

import java.util.List;

import modelo.ComunidadesAutonomas;

public interface ComunidadesAutonomasDAO {
	
	List <ComunidadesAutonomas> listarComunidades(int pais);
}
