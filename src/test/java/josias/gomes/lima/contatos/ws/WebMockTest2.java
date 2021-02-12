package josias.gomes.lima.contatos.ws;

import static josias.gomes.lima.contatos.constant.Paths.CONTACTS;
import static josias.gomes.lima.contatos.constant.Paths.VERSION;
import static org.assertj.core.api.Assertions.assertThat;
import static org.hamcrest.Matchers.containsString;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import static org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace.NONE;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.test.web.servlet.MockMvc;

import josias.gomes.lima.contatos.bo.ContatoBo;
import josias.gomes.lima.contatos.dto.ContatoDto;
import josias.gomes.lima.contatos.model.entity.Contato;
import josias.gomes.lima.contatos.model.enums.SexoEnum;
import josias.gomes.lima.contatos.persistence.repository.IContatoRepository;

//@WebMvcTest(ContatoWs.class)
@DataJpaTest
@AutoConfigureTestDatabase(replace = NONE)
public class WebMockTest2 {
	
	@Autowired
	private TestEntityManager entityManager;
	
	@Autowired
	private IContatoRepository iContatoRepository;
	
//	@Test
//	public void greetingShouldReturnMessageFromService() throws Exception {
//		List<ContatoDto> listaContatos = new ArrayList<>();
//		ContatoDto contatoDto;
//		
////		Contato 1
//		contatoDto = new ContatoDto();
//		contatoDto.setId(5);
//		contatoDto.setNome("Josias Gomes Lima");
//		contatoDto.setSexo(SexoEnum.Homem);
//		contatoDto.setTelefone("(92) 97777-8888");
//		contatoDto.setEmail("josias_lima2@hotmail.com");
//		listaContatos.add(contatoDto);
//
////		Contato 2
//		contatoDto = new ContatoDto();
//		contatoDto.setId(9);
//		contatoDto.setNome("Maria");
//		contatoDto.setSexo(SexoEnum.Mulher);
//		contatoDto.setTelefone("(99) 99254-8754");
//		contatoDto.setEmail("maria@gmail.com");
//		listaContatos.add(contatoDto);
//		
//	}

	@Test
	public void greetingShouldReturnMessageFromService2() throws Exception {
		Contato contatoDto;
		
//		Contato 1
		contatoDto = new Contato();
//		contatoDto.setId(5);
		contatoDto.setNome("Josias Gomes Lima 3");
		contatoDto.setSexo(SexoEnum.Homem);
		contatoDto.setTelefone("(92) 97777-8888");
		contatoDto.setEmail("josias_lima2@hotmail.com");
		
		entityManager.persist(contatoDto);
	       entityManager.flush();
		
	   List<Contato> listaContatos = (List<Contato>) iContatoRepository.findAll();
	 //then
       assertThat(listaContatos.size()).isEqualTo(3);
       assertThat(listaContatos.get(2)).isEqualTo(contatoDto);
	}
}
