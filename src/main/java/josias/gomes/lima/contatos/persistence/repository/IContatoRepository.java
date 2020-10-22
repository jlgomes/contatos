package josias.gomes.lima.contatos.persistence.repository;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import josias.gomes.lima.contatos.model.entity.Contato;

@Repository
public interface IContatoRepository extends CrudRepository<Contato, Long> {

	Optional<Contato> findByNome(String nome);
	Optional<Contato> findByEmail(String nome);

}
