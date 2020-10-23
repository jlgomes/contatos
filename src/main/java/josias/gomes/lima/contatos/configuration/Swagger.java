package josias.gomes.lima.contatos.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.RequestMapping;

import springfox.documentation.swagger2.annotations.EnableSwagger2;

@Configuration
@EnableSwagger2
public class Swagger extends ABaseSwagger{
	
	@RequestMapping("/")
	public String greeting() {
		return "index";
	}
	
	public  String getTitle() {
		return "Sip Service";
	}
	
	public String getSubTitle(){
		return "Documentation for Sip Services";
	}
	
	public String getTag(){
		return "DEVELOPMENT";
	}
	
}
