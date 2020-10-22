package josias.gomes.lima.contatos.model.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import josias.gomes.lima.contatos.model.enums.SexoEnum;
import lombok.Data;

@Data
@Table(name = "contato")
@Entity
@SequenceGenerator(name  = "SQ_GENERATOR", sequenceName = "contato_seq", initialValue = 5, allocationSize = 1)
public class Contato implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SQ_GENERATOR")
    private long id;
	private String nome;
	private SexoEnum sexo;
	private String telefone;
    private String email;
}
