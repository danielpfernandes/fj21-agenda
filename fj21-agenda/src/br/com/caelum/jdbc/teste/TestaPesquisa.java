package br.com.caelum.jdbc.teste;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import br.com.caelum.jdbc.ConnectionFactory;

public class TestaPesquisa {
	public static void main(String[] args) throws SQLException {
		Connection con = new ConnectionFactory().getConnetcion();
		PreparedStatement stmt = con.prepareStatement("select * from contatos");
		
		ResultSet rs = stmt.executeQuery();
		
		while (rs.next()) {
			String nome = rs.getString("nome");
			String email = rs.getString("email");
			
			System.out.println(nome + "_" + email);
		}
		
		stmt.close();
		con.close();
	}
}
