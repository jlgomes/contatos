package josias.gomes.lima.contatos.train;

import static josias.gomes.lima.contatos.constant.Paths.CONTACTS;
import static josias.gomes.lima.contatos.constant.Paths.VERSION;
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
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.web.servlet.MockMvc;

import josias.gomes.lima.contatos.bo.ContatoBo;
import josias.gomes.lima.contatos.dto.ContatoDto;
import josias.gomes.lima.contatos.model.enums.SexoEnum;

@WebMvcTest
public class WebLayerTest {
	
	@Autowired
	private MockMvc mockMvc;

	@MockBean
	private ContatoBo contatoBo;

	@Test
	public void shouldReturnDefaultMessage() throws Exception {
		List<ContatoDto> listaContatos = new ArrayList<>();
		ContatoDto contatoDto;
		
//		Contato 1
		contatoDto = new ContatoDto();
		contatoDto.setId(5);
		contatoDto.setNome("Josias Gomes Lima");
		contatoDto.setSexo(SexoEnum.Homem);
		contatoDto.setTelefone("(92) 97777-8888");
		contatoDto.setEmail("josias_lima2@hotmail.com");
		listaContatos.add(contatoDto);

//		Contato 2
		contatoDto = new ContatoDto();
		contatoDto.setId(9);
		contatoDto.setNome("Maria");
		contatoDto.setSexo(SexoEnum.Mulher);
		contatoDto.setTelefone("(99) 99254-8754");
		contatoDto.setEmail("maria@gmail.com");
		listaContatos.add(contatoDto);
		
		when(contatoBo.getAll()).thenReturn(listaContatos);
		
		this.mockMvc.perform(get(VERSION + CONTACTS + "all")).andDo(print()).andExpect(status().isOk())
				.andExpect(content().string(containsString("Josias Gomes Lima")));
	}
}
