package josias.gomes.lima.contatos.ws;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import josias.gomes.lima.contatos.model.entity.Contato;
import josias.gomes.lima.contatos.persistence.repository.IContatoRepository;

@Api(value = "Contato", tags = "Contato")
@Controller
@RestController
@RequestMapping(value = "/contato")
@CrossOrigin(origins = "*")
public class ContatoWs {

	@Autowired
	private IContatoRepository iContatoRepository;
	
	@GetMapping("/all")
    public List<Contato> getAll() {
        return (List<Contato>) iContatoRepository.findAll();
    }
 
    @PostMapping("/save")
    void save(@RequestBody Contato Contato) {
    	iContatoRepository.save(Contato);
    }

    @GetMapping(path = "/{id}")
    public Contato get(@PathVariable("id") long id) {
    	Optional<Contato> contato = iContatoRepository.findById(id);
    	return contato.isPresent() ? contato.get() : null ;
    }

    @DeleteMapping(path = "/{id}")
    void delete(@PathVariable("id") long id) {
    	iContatoRepository.deleteById(id);
    }
}
