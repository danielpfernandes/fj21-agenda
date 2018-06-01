<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:import url="cabecalho.jsp" />
	<table>
		<c:forEach var="contato" items="${contatos}">
			<tr>
				<td>${contato.id}</td>
				<td>${contato.nome}</td>
				<td><c:choose>
						<c:when test="${not empty contato.email}">
							<a href="mailto:${contato.email}">${contato.email}</a>
						</c:when>
						<c:otherwise>
							E-mail n�o informado
						</c:otherwise>
					</c:choose></td>
				<td>${contato.endereco}</td>
				<td><fmt:formatDate value ="${contato.dataNascimento.time}" pattern="dd/MM/yyyy"/></td>
				<td><a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a></td>
			</tr>
		</c:forEach>
	</table>
	<c:import url="rodape.jsp"/>
</body>
</html>