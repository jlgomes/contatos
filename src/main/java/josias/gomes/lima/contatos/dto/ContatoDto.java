package josias.gomes.lima.contatos.dto;

import java.io.Serializable;

import org.springframework.stereotype.Component;

import josias.gomes.lima.contatos.model.enums.SexoEnum;
import lombok.Data;

@Component
@Data
public class ContatoDto implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
    private long id;
	private String nome;
	private SexoEnum sexo;
	private String telefone;
    private String email;
}
