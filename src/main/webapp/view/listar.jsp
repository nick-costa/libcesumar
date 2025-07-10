<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Livro" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listagem de Livros</title>
</head>
<body>
    <h2>Livros Cadastrados</h2>
    <table border="1">
        <thead>
            <tr>
                <th>Título</th>
                <th>Autor</th>
                <th>Ano</th>
                <th>ISBN</th>
                <th>Ação</th>
            </tr>
        </thead>
        <tbody>
            <% 
            ArrayList<Livro> livros = (ArrayList<Livro>) request.getAttribute("livros");
            if (livros != null) {
                for (Livro livro : livros) {
            %>
            <tr>
                <td><%= livro.getTitulo() %></td>
                <td><%= livro.getAutor() %></td>
                <td><%= livro.getAno() %></td>
                <td><%= livro.getIsbn() %></td>
                <td>
                    <a href="${pageContext.request.contextPath}/livros?isbn=<%= livro.getIsbn() %>&action=delete">Excluir</a>
                </td>
            </tr>
            <% 
                }
            } 
            %>
        </tbody>
    </table>

    <br>
    <a href="${pageContext.request.contextPath}/index.jsp">
        <button>Voltar para o Cadastro</button>
    </a>
</body>
</html>
