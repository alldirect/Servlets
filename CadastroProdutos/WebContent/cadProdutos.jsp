<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/estilo.css">
<title>.::Cadastro de Produto::.</title>
</head>
<body>
<c:import url="cabecalho.jsp" />
	<div class="conteudo">
		<form action="ProdutoServlet" method="GET">
			<table>
				<tr>
					<td colspan="2" class="alinhaCentro corTitulo">.::Cadastro de Produto::.</td>
				</tr>
				<tr>
					<td class="alinhaDireita"><label for="nomeProduto">Nome do Produto:</label></td>
					<td><input type="text" id="nomeProduto" name="nome" required="true" autofocus="true" /></td>
				</tr>
				<tr>
					<td class="alinhaDireita"><label for="descProduto">Descrição do Produto:</label></td>
					<td><input type="text" id="descProduto" name="descricao" required="true" /></td>
				</tr>
				<tr>
					<td class="alinhaDireita"><label for="precoProduto">Preço do Produto:</label></td>
					<td><input type="number" id="precoProduto" name="preco" required="true" /></td>
				</tr>
				<tr>
					<td class="alinhaDireita"><label for="precoProduto">Data do Produto:</label></td>
					<td><input type="date" name="data" required="true" /></td>
				</tr>
				<tr>
					<td colspan="2" class="alinhaCentro">
						<input type="submit" value="Gravar Produto" />
					</tr>
			</table>
		</form>
	</div>
<c:import url="rodape.jsp" />
</body>
</html>
