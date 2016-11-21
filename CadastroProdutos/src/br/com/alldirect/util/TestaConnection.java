package br.com.alldirect.util;

import java.sql.SQLException;

import br.com.alldirect.dao.ProdutoDao;
import br.com.alldirect.model.Produto;

public class TestaConnection {
	public static void main(String args[]) throws SQLException {
		ProdutoDao produtoDao = new ProdutoDao();
		for (int i = 100; i < 200; i++) {
			Produto produto = new Produto();
			produto.setNome("WINDOWS 10");
			produto.setDescricao("PACOTE DE INSTALAÇÃO DO WINDOWS 10");
			produto.setPreco(11.11+(i*(10.11)*3.33)+12.12);
			produtoDao.adicionaProduto(produto);
			System.out.println(i + " products add...");
		}
	}
}