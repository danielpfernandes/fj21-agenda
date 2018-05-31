<%@page import="java.text.SimpleDateFormat"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%@ page
		import="java.util.*,br.com.caelum.agenda.dao.*,br.com.caelum.agenda.modelo.*, java.text.*"%>
	<table>
		<tr>
		<td>Nome</td>
		<td>Email</td>
		<td>Endereço</td>
		<td>Nascimento</td>
		</tr>
		<%
			ContatoDao dao = new ContatoDao();
			List<Contato> contatos = dao.getLista();

			for (Contato contato : contatos) {
		%>
		<tr>
			<td><%=contato.getNome()%></td>
			<td><%=contato.getEmail()%></td>
			<td><%=contato.getEndereco()%></td>
			<td><%=new SimpleDateFormat("dd/MM/yyyy").format(contato.getDataNascimento().getTime())%></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>