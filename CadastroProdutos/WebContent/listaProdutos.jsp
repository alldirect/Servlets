<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/estilo.css">
<title>.::Lista de Produtos::.</title>
</head>
<body>
<c:import url="cabecalho.jsp" />
<jsp:useBean id="dao" class="br.com.alldirect.dao.ProdutoDao" />
	<div class="conteudo">
		<table>
			<tr>
				<td class="alinhaCentro corTitulo tamCol100">Código</td>
				<td class="alinhaCentro corTitulo tamCol300">Nome</td>
				<td class="alinhaCentro corTitulo tamCol400">Descrição</td>
				<td class="alinhaCentro corTitulo tamCol100">Preço</td>
				<td class="alinhaCentro corTitulo tamCol100">Data de Cadastro</td>
				<td class="alinhaCentro corTitulo tamCol50">Excluir</td>
				<td class="alinhaCentro corTitulo tamCol50">Alterar</td>
			</tr>
			<c:forEach var="p" items="${dao.lista}">
			<tr>
				<td class="alinhaCentro corTitulo">${p.id}</td>
				<td>${p.nome}</td>
				<td>${p.descricao}</td>
				<td class="alinhaDireita"><fmt:formatNumber value="${p.preco}" type="currency" /></td>
				<td class="alinhaCentro"><fmt:formatDate value="${p.data}" pattern="dd/MM/yyyy" /></td>
				<td class="alinhaCentro"><a href="ProdutoServlet?acao=Excluir&id=${p.id}"><img src="images/delete.png"></a></td>
				<td class="alinhaCentro"><a href="ProdutoServlet?acao=Alterar&id=${p.id}"><img src="images/edit.png"></a></td>
			</tr>
			</c:forEach>
		</table>
	</div>
<c:import url="rodape.jsp" />
</body>
</html>