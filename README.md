# 📚 **Biblioteca Universitária Cesumar** - Sistema de Cadastro de Livros

Este repositório contém o código-fonte do sistema web de cadastro e listagem de livros desenvolvido para a Biblioteca da Universidade Cesumar. O sistema permite que os funcionários cadastrem livros, visualizem o acervo e realizem a exclusão de livros.

## 🛠️ **Tecnologias Utilizadas**

- **Java 17**: Linguagem de programação principal utilizada para o desenvolvimento.
- **Apache Tomcat 9**: Servidor de aplicação utilizado para rodar o sistema.
- **Servlets e JSP**: Arquitetura utilizada para manipulação de dados e visualização de páginas.
- **CSS**: Usado para estilização do front-end e criar um design responsivo.
- **Git**: Controle de versão para gerenciar e versionar o código.

## 🚀 **Como Rodar o Projeto Localmente**

### Pré-requisitos

- **JDK 17** ou superior instalado.
- **Apache Tomcat 9** ou superior.
- **IDE**: Eclipse ou qualquer editor de sua preferência para desenvolvimento Java.

### Passo 1: Clonando o Repositório

1. No seu terminal, clone o repositório para a sua máquina local:

   ```bash
   git clone https://github.com/seu-usuario/libcesumar.git

### Passo 2: Rodando o Projeto

1. Abra o projeto na sua IDE preferida.

2. Selecione o servidor Apache Tomcat 9 e configure-o, caso não esteja configurado.

3. Execute o projeto. O sistema estará acessível em:

 ```bash
http://localhost:8080/libcesumar
```
### 📝 Funcionalidades
O sistema oferece as seguintes funcionalidades:

- Cadastro de Livros: Adiciona novos livros ao acervo, com informações como título, autor, ano de publicação e ISBN.

- Listagem de Livros: Exibe todos os livros cadastrados no sistema em uma tabela.

- Exclusão de Livros: Permite excluir livros do sistema pelo ISBN.

#### Validações:
- Ano de publicação deve ter 4 dígitos e não pode ser maior que o ano atual.

- ISBN deve ter exatamente 13 dígitos.

- Campos obrigatórios, como título, autor, ano e ISBN, são validados.

- Evita duplicidade de ISBN ao tentar cadastrar um livro com o mesmo número.

### 🎨 Design Responsivo
O sistema foi projetado para ser responsivo, ou seja, funciona bem em dispositivos de diferentes tamanhos de tela, como:

- Desktop

- Tablets

- Celulares

### 📚 Exemplo de Uso
Cadastro de Livro:

- Título: Hábitos Atômicos

- Autor: James Clear

- Ano de Publicação: 2025

- ISBN: 123456789101

### 🧑‍💻 Contribuindo
Fork este repositório.

Crie uma branch para sua feature (ex: git checkout -b minha-feature).

Faça as alterações desejadas e commit (ex: git commit -m 'Adicionando nova funcionalidade').

Faça o push para sua branch (ex: git push origin minha-feature).

Abra um Pull Request para este repositório.

 Licença
Este projeto está licenciado sob a Licença MIT - consulte o arquivo LICENSE para mais detalhes.

🔗 Links Úteis

Documentação Java: https://docs.oracle.com/javase/17/

Apache Tomcat 9: http://tomcat.apache.org/

