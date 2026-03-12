# Reading Owl  
Sistema de Livraria Online para Descoberta, Exploração e Gestão de Livros.

## Descrição
Reading Owl é um sistema web full-stack desenvolvido para gerenciamento e organização de livros em uma livraria online. A plataforma permite que usuários explorem, descubram e acompanhem livros de diferentes editoras, oferecendo ferramentas de busca avançada, organização de catálogo e gerenciamento de usuários.

O sistema foi projetado para oferecer uma experiência de navegação simples e eficiente, com foco em organização do acervo, controle de acesso por perfis de usuário e facilidade na busca e visualização de livros.

A proposta da plataforma é unir funcionalidades de catálogo digital, gestão administrativa e experiência personalizada para leitores, garantindo escalabilidade, organização de dados e segurança de acesso.

---

# Entidades

## Leitor
Usuário da plataforma focado na experiência de leitura. Pode explorar livros disponíveis no catálogo, visualizar detalhes das obras e acompanhar seus interesses dentro da plataforma.

## Usuário
Conta base do sistema responsável pela autenticação e acesso à plataforma. Um usuário pode possuir diferentes permissões dependendo do papel associado a ele.

## Livro
Representa os itens disponíveis no catálogo da livraria. Cada livro possui informações como título, autor, editora, gênero, sinopse, ISBN, número de páginas e ano de publicação.

## Editora
Representa a organização responsável pela publicação de livros. Cada editora pode possuir diversos livros cadastrados no sistema.

## Role
Define o nível de permissão e acesso dentro da plataforma. Permite diferenciar tipos de usuários, como administradores ou leitores, controlando quais funcionalidades cada perfil pode acessar.

---

# Funcionalidades

## Catálogo de Livros
Visualização organizada do acervo de livros com informações detalhadas, incluindo capa, descrição e dados editoriais.

## Busca Avançada
Sistema de pesquisa que permite localizar livros por título, autor, editora ou gênero.

## Gerenciamento de Usuários
Criação e administração de contas de usuários com controle de permissões baseado em roles.

## Gestão de Editoras
Cadastro e organização das editoras responsáveis pelas publicações presentes no sistema.

## Experiência do Leitor
Permite que leitores explorem o catálogo de livros e encontrem novas obras de interesse.

## Controle de Acesso
Sistema de permissões baseado em roles que garante acesso adequado às funcionalidades administrativas e de usuário comum.

## Interface Responsiva
Aplicação web adaptada para diferentes dispositivos, proporcionando uma navegação fluida em desktops, tablets e smartphones.

````markdown
## Tecnologias Utilizadas

**Backend:** Java 17+ com Spring Boot 3.x  
**Banco de Dados:** PostgreSQL (JPA/Hibernate para ORM)  
**Frontend:** React.js com Material-UI ou Bootstrap  
**Autenticação:** Spring Security + JWT  
**Outros:** Maven ou Gradle, Git para versionamento

---

# Instalação e Execução

### 1. Clonar o repositório
```bash
git clone https://github.com/seuusuario/reading-owl.git
cd reading-owl
````

### 2. Instalar dependências do backend

```bash
cd backend
./mvnw clean install   # ou ./gradlew build
```

### 3. Instalar dependências do frontend

```bash
cd ../frontend
npm install
```

### 4. Configurar variáveis de ambiente

Crie o arquivo:

```
backend/src/main/resources/application.properties
```

```properties
spring.datasource.url=jdbc:postgresql://localhost:5432/readingowl
spring.datasource.username=seuuser
spring.datasource.password=suapass
spring.jpa.hibernate.ddl-auto=update

jwt.secret=suasecret
```

### 5. Executar o projeto

**Backend (terminal 1)**

```bash
cd backend
./mvnw spring-boot:run
```

**Frontend (terminal 2)**

```bash
cd frontend
npm start
```

A aplicação poderá ser acessada em:

```
http://localhost:3000
```

O backend estará rodando em:

```
http://localhost:8080
```

---

# Estrutura de Pastas

```
reading-owl/
├── backend/                # API Spring Boot (controllers, entities, services)
│   └── src/main/java/com/readingowl/
├── frontend/               # Interface React
├── docs/                   # Diagramas, protótipos e documentação
└── README.md
```

---

# Roteiro de Desenvolvimento

* Modelagem do Banco de Dados
* Desenvolvimento do Backend
* Implementação da Autenticação e Controle de Acesso
* Desenvolvimento da Interface Web
* Testes e ajustes de usabilidade

---

# Contribuições

Contribuições são bem-vindas.

Caso encontre **bugs**, tenha **sugestões de melhoria** ou queira implementar **novas funcionalidades**, sinta-se à vontade para:

* Abrir uma **Issue**
* Enviar um **Pull Request**

---

# Desenvolvedores

**Pedro Alvarenga** 
**Rafaela** 

```
```
