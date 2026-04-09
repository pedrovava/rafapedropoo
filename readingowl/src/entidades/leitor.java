package entidades;

public class leitor{
	private int id_leitor;
	private String nome;
	
	void set_leitor(String nome, int id_leitor) {
		this.id_leitor = id_leitor;
		this.nome = nome;
	}
	
	void set_leitorid(int id_leitor) {
		this.id_leitor = id_leitor;
	}
	
	void set_leitornome(String nome) {
		this.nome = nome;
	}
}