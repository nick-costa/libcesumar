<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <h2>Cadastro de Livro</h2>
    <form action="${pageContext.request.contextPath}/livros" method="POST">
        <label for="titulo">Título:</label>
        <input type="text" id="titulo" name="titulo" required>
        <br>

        <label for="autor">Autor:</label>
        <input type="text" id="autor" name="autor" required>
        <br>

        <label for="ano">Ano de Publicação:</label>
        <input type="text" id="ano" name="ano" required pattern="\d{4}" title="O ano deve ter 4 algarismos">
        <br>

        <label for="isbn">ISBN:</label>
        <input type="text" id="isbn" name="isbn" required pattern="\d{13}" title="O ISBN deve ter 13 dígitos">
        <br>

        <button type="submit">Cadastrar</button>
    </form>
</body>
</html>
