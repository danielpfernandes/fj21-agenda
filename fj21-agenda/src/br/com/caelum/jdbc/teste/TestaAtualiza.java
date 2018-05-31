package br.com.caelum.jdbc.teste;

import java.util.Calendar;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

public class TestaAtualiza {
	public static void main(String[] args) {
		Contato contato = new Contato();
		contato.setNome("Maria");
		contato.setEmail("email@email.com");
		contato.setEndereco("Rua 2");
		contato.setDataNascimento(Calendar.getInstance());
		contato.setId((long) 1);
		
		ContatoDao dao = new ContatoDao();
		
		dao.altera(contato);
		
		System.out.println("Alterado!");

	}
}
