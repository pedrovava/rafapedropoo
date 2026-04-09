create table publicador (
	nome varchar (100),
	id_publicador serial primary key
);
create table livro (
	id_livro serial primary key,
	nome varchar(100),
	autor varchar(100)
);
create table leitor (
	nome varchar(100), 
	id_leitor serial primary key
);
create table livro_publicador (
	id_livro integer references livro(id_livro),
	id_publicador integer references publicador(id_publicador)
);
create table leitor_livro (
	id_leitor integer references leitor(id_leitor),
	id_livro integer references livro(id_livro)
);
