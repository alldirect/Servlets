package br.com.alldirect.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.alldirect.connection.ConnectionFactory;
import br.com.alldirect.model.Produto;

public class ProdutoDao {
	private Connection connection;

	public ProdutoDao() {
		this.connection = new ConnectionFactory().getConnection();
	}

	public void adicionaProduto(Produto produto) {
		String sql = "INSERT INTO PRODUTOS (NOME,DESCRICAO,PRECO) VALUES (?,?,?)";
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, produto.getNome());
			stmt.setString(2, produto.getDescricao());
			stmt.setDouble(3, produto.getPreco());
			stmt.execute();
			stmt.close();
			//connection.close();
		} catch (SQLException e) {
			System.out.println("Erro ao adicionar produto." + e);
			throw new RuntimeException(e);
		}
	}

	public List<Produto> getLista() {
		String sql = "SELECT * FROM PRODUTOS ORDER BY ID DESC";
		List<Produto> produtos = new ArrayList<Produto>();
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			ResultSet resultSet = stmt.executeQuery();
			while (resultSet.next()) {
				Produto produto = new Produto();
				produto.setId(resultSet.getInt("id"));
				produto.setNome(resultSet.getString("nome"));
				produto.setDescricao(resultSet.getString("descricao"));
				produto.setPreco(resultSet.getDouble("preco"));
				produto.setData(resultSet.getDate("data_cadastro"));

				produtos.add(produto);
			}
			return produtos;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return produtos;
	}

	public void removeProduto(Produto produto) {
		String sql = "DELETE FROM PRODUTOS WHERE ID = ?";
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setInt(1, produto.getId());
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void alteraProduto() {

	}
}