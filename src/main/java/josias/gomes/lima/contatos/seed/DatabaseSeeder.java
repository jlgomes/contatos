package josias.gomes.lima.contatos.seed;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Component
public class DatabaseSeeder implements CommandLineRunner {

	@Autowired
	private ContatoSeeder contatoSeeder;
	
	@Override
	public void run(String... args) throws Exception {
		contatoSeeder.seed();
		
		System.out.println("Database creation finished!!!");
	}
}
