package josias.gomes.lima.contatos.ws;

import static josias.gomes.lima.contatos.constant.Paths.CONTACTS;
import static josias.gomes.lima.contatos.constant.Paths.VERSION;
import static java.util.Collections.singletonList;
import static org.hamcrest.collection.IsCollectionWithSize.hasSize;
import static org.hamcrest.core.Is.is;
import static org.mockito.BDDMockito.given;
import static org.springframework.http.MediaType.APPLICATION_JSON;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.delete;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
//import static org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors.user;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.util.List;
import java.util.stream.Collectors;

import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;

import com.google.gson.Gson;

import josias.gomes.lima.contatos.bo.ContatoBo;
import josias.gomes.lima.contatos.dto.ContatoDto;
import josias.gomes.lima.contatos.model.entity.Contato;
import josias.gomes.lima.contatos.model.enums.SexoEnum;
import josias.gomes.lima.contatos.persistence.repository.IContatoRepository;


@WebMvcTest(ContatoWs.class)
public class ContatoWsTest {

    @Autowired
    private MockMvc mvc;

    @Autowired
    private ContatoWs contatoWs;
    
    @MockBean
	private ContatoBo contatoBo;
    
    @MockBean
	private IContatoRepository iContatoRepository;

    @Test
    public void getContatos() throws Exception {
    	Contato contato = createContato();
        List<Contato> allContatos = singletonList(contato);
        
    	ContatoDto contatoDto = createContatoDto();
        List<ContatoDto> allContatosDto = singletonList(contatoDto);

        given(iContatoRepository.findAll()).willReturn(allContatos);
        given(contatoBo.getAll()).willReturn(allContatosDto);
//        Mockito.when(iContatoRepository.findAll()).thenReturn(allContatos);
//        Mockito.when(contatoBo.getAll()).thenReturn(allContatosDto);

        mvc.perform(get(VERSION + CONTACTS + "all")
//                .with(user("blaze").password("Q1w2e3r4"))
                .contentType(APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$", hasSize(1)))
                .andExpect(jsonPath("$[0].nome", is(contatoDto.getNome())));
//        MvcResult mvcResult = mvc.perform(get(VERSION + CONTACTS + "/all")
////              .with(user("blaze").password("Q1w2e3r4"))
//              .contentType(APPLICATION_JSON))
//              .andExpect(status().isOk())
//              .andReturn();
//       System.out.println(mvcResult);
    }

    @Test
    public void getContatoById() throws Exception {
    	ContatoDto contatoDto = createContatoDto();

        given(contatoWs.get(contatoDto.getId())).willReturn(contatoDto);

        mvc.perform(get(VERSION + CONTACTS + contatoDto.getId())
//                .with(user("blaze").password("Q1w2e3r4"))
                .contentType(APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("nome", is(contatoDto.getNome())));
    }

    @Test
    public void removeContatoById() throws Exception {
    	ContatoDto contatoDto = createContatoDto();

        mvc.perform(delete(VERSION + CONTACTS + contatoDto.getId())
//                .with(user("blaze").password("Q1w2e3r4"))
                .contentType(APPLICATION_JSON))
                .andExpect(status().isOk());
    }

    @Test
    public void saveContato() throws Exception {
    	ContatoDto contatoDto = createContatoDto();

    	Gson gson = new Gson();
    	
        mvc.perform(post(VERSION + CONTACTS + "save")
//                .with(user("blaze").password("Q1w2e3r4"))
                .contentType(APPLICATION_JSON)
                .content(gson.toJson(contatoDto)))
                .andExpect(status().isOk());
    }

    private ContatoDto createContatoDto() {
    	ContatoDto contatoDto = new ContatoDto();
    	contatoDto.setId(5);
		contatoDto.setNome("Josias Gomes Lima");
		contatoDto.setSexo(SexoEnum.Homem);
		contatoDto.setTelefone("(92) 97777-8888");
		contatoDto.setEmail("josias_lima2@hotmail.com");

        return contatoDto;
    }

    private Contato createContato() {
    	Contato contato = new Contato();
    	contato.setId(5);
		contato.setNome("Josias Gomes Lima");
		contato.setSexo(SexoEnum.Homem);
		contato.setTelefone("(92) 97777-8888");
		contato.setEmail("josias_lima2@hotmail.com");

        return contato;
    }
}
