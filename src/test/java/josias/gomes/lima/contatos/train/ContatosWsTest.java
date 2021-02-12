package josias.gomes.lima.contatos.train;

import static josias.gomes.lima.contatos.constant.Paths.CONTACTS;
import static josias.gomes.lima.contatos.constant.Paths.VERSION;
import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.boot.web.server.LocalServerPort;

import josias.gomes.lima.contatos.ws.ContatoWs;

@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT)
public class ContatosWsTest {
	
	@LocalServerPort
	private int port;
	
	@Autowired
	private ContatoWs contatoWs;
	
	@Autowired
	private TestRestTemplate restTemplate;
	
	@Test
	public void contextLoads() throws Exception {
		assertThat(contatoWs).isNotNull();
	}
	
	@Test
	public void greetingShouldReturnDefaultMessage() throws Exception {
		assertThat(this.restTemplate.getForObject("http://localhost:" + port + VERSION + CONTACTS + "all",
				String.class)).contains("Josias Gomes Lima");
	}

}
