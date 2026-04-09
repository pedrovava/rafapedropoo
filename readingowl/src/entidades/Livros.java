package entidades;

public class Livros{
	private int id_Livros;
	private String nome;
	private String autor;
	private String editora;
	
	void set_Livros(String nome, int id_Livros, String autor, String editora) {
		this.id_Livros = id_Livros;
		this.nome = nome;
		this.autor = autor;
		this.editora = editora; 
	}
	
	void set_Livros(int id_Livros) {
		this.id_Livros = id_Livros;
	};
	
	void set_Livrosnome(String nome) {
		this.nome = nome;
	};

	void set_Livrosautor(String autor) {
		this.autor = autor;
	};
	
	void set_Livroseditora(String editora) {
		this.editora = editora;
	}
}