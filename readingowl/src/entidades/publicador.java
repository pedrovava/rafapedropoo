package entidades;

public class publicador{
	private int id_publicador;
	private String nome;
	
	void set_publicador(String nome, int id_publicador) {
		this.id_publicador = id_publicador;
		this.nome = nome;
	}
	
	void set_publicador(int id_publicador) {
		this.id_publicador = id_publicador;
	}
	
	void set_publicadornome(String nome) {
		this.nome = nome;
	}
}