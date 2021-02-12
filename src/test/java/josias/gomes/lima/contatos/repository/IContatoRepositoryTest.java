package josias.gomes.lima.contatos.repository;

import static org.assertj.core.api.Assertions.assertThat;
import static org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace.NONE;

import java.util.List;
import java.util.Optional;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;

import josias.gomes.lima.contatos.model.entity.Contato;
import josias.gomes.lima.contatos.model.enums.SexoEnum;
import josias.gomes.lima.contatos.persistence.repository.IContatoRepository;

@DataJpaTest
@AutoConfigureTestDatabase(replace = NONE)
public class IContatoRepositoryTest {

	@Autowired
	private TestEntityManager entityManager;
	
	@Autowired
	private IContatoRepository iContatoRepository;

	@Test
	public void createContact() throws Exception {
		//given
		Contato contato = new Contato();
		contato.setNome("Josias Gomes Lima 3");
		contato.setSexo(SexoEnum.Homem);
		contato.setTelefone("(92) 97777-8888");
		contato.setEmail("josias_lima2@hotmail.com");
		
		entityManager.persist(contato);
	       entityManager.flush();
	   
	   //when
	   List<Contato> listaContatos = (List<Contato>) iContatoRepository.findAll();
	   
	   //then
       assertThat(listaContatos.size()).isEqualTo(3);
       assertThat(listaContatos.get(2)).isEqualTo(contato);
	}

	@Test
	public void createTwoContact() throws Exception {
		//given
		Contato contato1 = new Contato();
		contato1.setNome("Josias Gomes Lima 3");
		contato1.setSexo(SexoEnum.Homem);
		contato1.setTelefone("(92) 97777-8888");
		contato1.setEmail("josias_lima2@hotmail.com");

		entityManager.persist(contato1);
	    entityManager.flush();
	       
	    Contato contato2 = new Contato();
		contato2.setNome("Josias Gomes Lima 4");
		contato2.setSexo(SexoEnum.Homem);
		contato2.setTelefone("(92) 97777-8888");
		contato2.setEmail("josias_lima2@hotmail.com");
		
		entityManager.persist(contato2);
	    entityManager.flush();
	   
	   //when
	   List<Contato> listaContatos = (List<Contato>) iContatoRepository.findAll();
	   
	   //then
       assertThat(listaContatos.size()).isEqualTo(4);
       assertThat(listaContatos.get(2)).isEqualTo(contato1);
       assertThat(listaContatos.get(3)).isEqualTo(contato2);
	}
	
	@Test
	public void deleteContact() throws Exception {
		//given
		Contato contato = entityManager.find(Contato.class, (long)5);
		entityManager.remove(contato);
	    entityManager.flush();
	   
	    //when
	    List<Contato> listaContatos = (List<Contato>) iContatoRepository.findAll();
	   
	    //then
	    assertThat(listaContatos.size()).isEqualTo(1);
	    assertThat(listaContatos.get(0).getId()).isEqualTo((long)9);
	}

	@Test
	public void deleteContactNonExistent() throws Exception {
		//given
		try {
			iContatoRepository.deleteById((long)1);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			assertThat(e.getMessage()).isEqualTo("No class josias.gomes.lima.contatos.model.entity.Contato entity with id 1 exists!");
		}
	}

	@Test
	public void findContactNonExistent() throws Exception {
		//given
		Contato contato = entityManager.find(Contato.class, (long)1);
	
		//then
		assertThat(contato).isEqualTo(null);
	}
	
	@Test
	public void findContactNonExistent2() throws Exception {
		//given
		Optional<Contato> contato = iContatoRepository.findById((long)1);
	
		//then
		assertThat(contato.isEmpty()).isEqualTo(true);
	}
}
