package controller;

import model.Livro;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LivroServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private ArrayList<Livro> livros = new ArrayList<>(); 

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("delete".equals(action)) {
            String isbn = request.getParameter("isbn");
            doDelete(request, response); 
            return;
        }

        request.setAttribute("livros", livros);
        request.getRequestDispatcher("/view/listar.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String titulo = request.getParameter("titulo");
        String autor = request.getParameter("autor");
        String anoStr = request.getParameter("ano");
        String isbn = request.getParameter("isbn");

        // Verificando se algum campo está vazio
        if (titulo == null || titulo.trim().isEmpty() || 
            autor == null || autor.trim().isEmpty() ||
            anoStr == null || anoStr.trim().isEmpty() ||
            isbn == null || isbn.trim().isEmpty()) {
            
            request.setAttribute("erro", "Todos os campos são obrigatórios!");
            request.getRequestDispatcher("/view/index.jsp").forward(request, response);  
            return;
        }

        // Verificando se o ano é um número válido
        int ano;
        try {
            ano = Integer.parseInt(anoStr);
        } catch (NumberFormatException e) {
            request.setAttribute("erro", "O ano deve ser um número válido!");
            request.getRequestDispatcher("/view/index.jsp").forward(request, response);  
            return;
        }

        // Verificando se o ISBN é válido (deve ter exatamente 13 dígitos)
        if (!isbn.matches("\\d{13}")) {
            request.setAttribute("erro", "O ISBN deve ter exatamente 13 dígitos!");
            request.getRequestDispatcher("/view/index.jsp").forward(request, response);  
            return;
        }

        // Verificando se o ISBN já existe na lista
        for (Livro livro : livros) {
            if (livro.getIsbn().equals(isbn)) {
                request.setAttribute("erro", "Já existe um livro cadastrado com esse ISBN!");
                request.getRequestDispatcher("/view/index.jsp").forward(request, response);  
                return;
            }
        }

        // Criando o livro e adicionando à lista
        Livro livro = new Livro(titulo, autor, ano, isbn);
        livros.add(livro);
        response.sendRedirect("livros");  
    }

    // Método para excluir um livro baseado no ISBN
    protected void doDelete(HttpServletRequest request, HttpServletResponse response)
    		throws ServletException, IOException {
        String isbn = request.getParameter("isbn");

        if (isbn == null || isbn.trim().isEmpty()) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ISBN não informado.");
            return;
        }

        Livro livroParaRemover = null;
        for (Livro livro : livros) {
            if (livro.getIsbn().equals(isbn)) {
                livroParaRemover = livro;
                break;
            }
        }

        if (livroParaRemover != null) {
            livros.remove(livroParaRemover);  // Exclui o livro da lista
            response.sendRedirect("livros");  // Redireciona para a listagem de livros
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND, "Livro não encontrado.");
        }
    }
}
