<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%
    String erro = (String) request.getAttribute("erro");
    if (erro != null) {
    }
    %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cadastro de Livros</title>
</head>
<body>
	<div style="color: red;">
        <strong><%= erro %></strong>
    </div>
    <h2>Cadastro de Livro</h2>
    <form action="${pageContext.request.contextPath}/livros" method="POST">
        <label for="titulo">Título:</label>
        <input type="text" id="titulo" name="titulo" required>
        <br>

        <label for="autor">Autor:</label>
        <input type="text" id="autor" name="autor" required>
        <br>

        <label for="ano">Ano de Publicação:</label>
        <input type="number" id="ano" name="ano" required>
        <br>

        <label for="isbn">ISBN:</label>
        <input type="text" id="isbn" name="isbn" required>
        <br>

        <button type="submit">Cadastrar</button>
    </form>
</body>
</html>
