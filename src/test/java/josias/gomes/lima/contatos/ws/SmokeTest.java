package josias.gomes.lima.contatos.ws;
import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class SmokeTest {
	
	@Autowired
	private ContatoWs contatoWs;

	@Test
	public void contextLoads() throws Exception {
		assertThat(contatoWs).isNotNull();
	}
}
