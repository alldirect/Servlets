package br.com.alldirect.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	public Connection getConnection() {

		Connection connection = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			//String serverName = "192.68.0.200:3306";
			String serverName = "localhost:3306";
			String myDataBase = "estoque";
			String url = "jdbc:mysql://" + serverName + "/" + myDataBase;
			String userName = "aluno";
			String passWord = "123456";
			connection = DriverManager.getConnection(url, userName, passWord);
			return connection;
		} catch (ClassNotFoundException e) {
			System.out.println("Where is your MySQL JDBC Driver? \n");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("Connection Failed! Check output console.");
			System.out.println("It was not possible to connect to database.\n" + e);
			throw new RuntimeException(e);
		}
		return connection;
	}
}