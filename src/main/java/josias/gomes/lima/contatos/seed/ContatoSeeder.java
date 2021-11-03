package josias.gomes.lima.contatos.seed;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import josias.gomes.lima.contatos.model.entity.Contato;
import josias.gomes.lima.contatos.model.enums.SexoEnum;
import josias.gomes.lima.contatos.persistence.repository.IContatoRepository;

@Component
public class ContatoSeeder {
	
	@Autowired
	private IContatoRepository iContatoRepository;
	
	/**
	 * Cria contatos fake para o sistema.
	 * 
	 * @author Josias Gomes Lima.
	 */
	public void seed() {
		if (iContatoRepository.count() == 0) {
//			Contato 1
			Contato contato = new Contato();
			contato.setNome("Josias Gomes Lima");
			contato.setSexo(SexoEnum.Homem);
			contato.setTelefone("(92) 97777-8888");
			contato.setEmail("josias_lima2@hotmail.com");
			iContatoRepository.save(contato);
			
//			Contato 2
			contato = new Contato();
			contato.setNome("Maria");
			contato.setSexo(SexoEnum.Mulher);
			contato.setTelefone("(99) 99254-8754");
			contato.setEmail("maria@gmail.com");
			iContatoRepository.save(contato);
			
			System.out.println("Contatos created!!");
		}
	}

}
