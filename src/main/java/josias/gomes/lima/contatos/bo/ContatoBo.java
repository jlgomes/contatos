package josias.gomes.lima.contatos.bo;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import josias.gomes.lima.contatos.dto.ContatoDto;
import josias.gomes.lima.contatos.model.entity.Contato;
import josias.gomes.lima.contatos.persistence.repository.IContatoRepository;

@Service
public class ContatoBo {

	@Autowired
	private IContatoRepository iContatoRepository;
	
    public List<ContatoDto> getAll() {
        return ((List<Contato>) iContatoRepository.findAll())
        		.stream()
                .map(this::convertToContatoDto)
				        .collect(Collectors.toList());
    }
 
    public void save(ContatoDto contato) {
    	iContatoRepository.save(convertToContato(contato));
    }
 
    public void update(ContatoDto contato) {
    	iContatoRepository.save(convertToContato(contato));
    }

    public ContatoDto get(long id) {
    	Optional<Contato> contato = iContatoRepository.findById(id);
    	return contato.isPresent() ? convertToContatoDto(contato.get()) : null ;
    }
    
    public void delete(long id) {
    	iContatoRepository.deleteById(id);
    }
    
    private ContatoDto convertToContatoDto(Contato contato) {
    	ContatoDto contatoDto = new ContatoDto();
    	contatoDto.setId(contato.getId());
    	contatoDto.setNome(contato.getNome());
    	contatoDto.setEmail(contato.getEmail());
    	contatoDto.setTelefone(contato.getTelefone());
    	contatoDto.setSexo(contato.getSexo());
    	
    	return contatoDto;
    }

    private Contato convertToContato(ContatoDto contatoDto) {
    	Contato contato = new Contato();
    	contato.setId(contatoDto.getId());
    	contato.setNome(contatoDto.getNome());
    	contato.setEmail(contatoDto.getEmail());
    	contato.setTelefone(contatoDto.getTelefone());
    	contato.setSexo(contatoDto.getSexo());
    	
    	return contato;
    }
}
