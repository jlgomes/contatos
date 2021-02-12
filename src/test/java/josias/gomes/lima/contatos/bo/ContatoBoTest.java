package josias.gomes.lima.contatos.bo;

import static org.assertj.core.api.Assertions.assertThat;
import static org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace.NONE;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;

import josias.gomes.lima.contatos.dto.ContatoDto;
import josias.gomes.lima.contatos.model.enums.SexoEnum;

@DataJpaTest
@AutoConfigureTestDatabase(replace = NONE)
public class ContatoBoTest {

	@Autowired
	private ContatoBo contatoBo;

	@Test
	public void saveContact() throws Exception {
		//given
		ContatoDto contato = new ContatoDto();
		contato.setNome("Josias Gomes Lima 3");
		contato.setSexo(SexoEnum.Homem);
		contato.setTelefone("(92) 97777-8888");
		contato.setEmail("josias_lima2@hotmail.com");
		
		contatoBo.save(contato);
		
		//when
		List<ContatoDto> listaContatos = (List<ContatoDto>) contatoBo.getAll();
	    
		//then
		assertThat(listaContatos.size()).isEqualTo(3);
		assertThat(listaContatos.get(2)).isEqualTo(contato);
	}

}
