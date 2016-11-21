package br.com.alldirect.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alldirect.dao.ProdutoDao;
import br.com.alldirect.model.Produto;

@WebServlet("/ProdutoServlet")
public class ProdutoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ProdutoServlet() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String acao = request.getParameter("acao");
		ProdutoDao produtoDao = new ProdutoDao();
		if ("Excluir".equals(acao)) {
			Produto produto = new Produto();
			String id = request.getParameter("id");
			produto.setId(Integer.parseInt(id));
			produtoDao.removeProduto(produto);
			RequestDispatcher rd = request.getRequestDispatcher("/listaProdutos.jsp");
			rd.forward(request, response);
		}
		
		if ("Alterar".equals(acao)) {
			RequestDispatcher rd = request.getRequestDispatcher("/cadProdutos.jsp");
			rd.forward(request, response);
		}

		if (!("Excluir".equals(acao))) {
			String nome = request.getParameter("nome");
			String descricao = request.getParameter("descricao");
			Double preco = Double.parseDouble(request.getParameter("preco"));

			Produto produto = new Produto();

			produto.setNome(nome);
			produto.setDescricao(descricao);
			produto.setPreco(preco);

			produtoDao.adicionaProduto(produto);

			RequestDispatcher rd = request.getRequestDispatcher("/listaProdutos.jsp");
			rd.forward(request, response);
		}
	}
}