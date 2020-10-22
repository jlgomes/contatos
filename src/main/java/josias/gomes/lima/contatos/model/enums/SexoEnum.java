package josias.gomes.lima.contatos.model.enums;

public enum SexoEnum {
	Homem(0),
	Mulher(1),
	Outro(2);
	
	private int value;
	private SexoEnum(int value) {
		this.value = value;
	}
	int getValue() {
		return value;
	}
}
