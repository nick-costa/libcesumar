<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Livro" %>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <h2>Livros Cadastrados</h2>
    <table>
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
    <a href="${pageContext.request.contextPath}/view/index.jsp">
        <button>Voltar para o Cadastro</button>
    </a>
</body>
</html>
