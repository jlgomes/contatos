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

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.web.servlet.MockMvc;

import com.google.gson.Gson;

import josias.gomes.lima.contatos.dto.ContatoDto;
import josias.gomes.lima.contatos.model.enums.SexoEnum;


@WebMvcTest(ContatoWs.class)
public class ContatoWsTest {

    @Autowired
    private MockMvc mvc;

    @MockBean
    private ContatoWs contatoWs;

    @Test
    public void getContatos() throws Exception {
    	ContatoDto contatoDto = createContato();

        List<ContatoDto> allContatos = singletonList(contatoDto);

        given(contatoWs.getAll()).willReturn(allContatos);

        mvc.perform(get(VERSION + CONTACTS + "all")
//                .with(user("blaze").password("Q1w2e3r4"))
                .contentType(APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$", hasSize(1)))
                .andExpect(jsonPath("$[0].nome", is(contatoDto.getNome())));
    }

    @Test
    public void getContatoById() throws Exception {
    	ContatoDto contatoDto = createContato();

        given(contatoWs.get(contatoDto.getId())).willReturn(contatoDto);

        mvc.perform(get(VERSION + CONTACTS + contatoDto.getId())
//                .with(user("blaze").password("Q1w2e3r4"))
                .contentType(APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("nome", is(contatoDto.getNome())));
    }

    @Test
    public void removeContatoById() throws Exception {
    	ContatoDto contatoDto = createContato();

        mvc.perform(delete(VERSION + CONTACTS + contatoDto.getId())
//                .with(user("blaze").password("Q1w2e3r4"))
                .contentType(APPLICATION_JSON))
                .andExpect(status().isOk());
    }

    @Test
    public void saveContato() throws Exception {
    	ContatoDto contatoDto = createContato();

    	Gson gson = new Gson();
    	
        mvc.perform(post(VERSION + CONTACTS + "save")
//                .with(user("blaze").password("Q1w2e3r4"))
                .contentType(APPLICATION_JSON)
                .content(gson.toJson(contatoDto)))
                .andExpect(status().isOk());
    }

    private ContatoDto createContato() {
    	ContatoDto contatoDto = new ContatoDto();
    	contatoDto.setId(5);
		contatoDto.setNome("Josias Gomes Lima");
		contatoDto.setSexo(SexoEnum.Homem);
		contatoDto.setTelefone("(92) 97777-8888");
		contatoDto.setEmail("josias_lima2@hotmail.com");

        return contatoDto;
    }
}
