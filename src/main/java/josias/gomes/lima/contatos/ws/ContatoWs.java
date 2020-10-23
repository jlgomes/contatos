package josias.gomes.lima.contatos.ws;

import java.util.List;

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
import josias.gomes.lima.contatos.bo.ContatoBo;
import josias.gomes.lima.contatos.dto.ContatoDto;

@Api(value = "Contato", tags = "Contato")
@Controller
@RestController
@RequestMapping(value = "/contato")
@CrossOrigin(origins = "*")
public class ContatoWs {

	@Autowired
	private ContatoBo contatoBo;
	
	@GetMapping("/all")
    public List<ContatoDto> getAll() {
        return (List<ContatoDto>) contatoBo.getAll();
    }
 
    @PostMapping("/save")
    void save(@RequestBody ContatoDto contato) {
    	contatoBo.save(contato);
    }

    @GetMapping(path = "/{id}")
    public ContatoDto get(@PathVariable("id") long id) {
    	return contatoBo.get(id);
    }

    @DeleteMapping(path = "/{id}")
    void delete(@PathVariable("id") long id) {
    	contatoBo.delete(id);
    }
}
