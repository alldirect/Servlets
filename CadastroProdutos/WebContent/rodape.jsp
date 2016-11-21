<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/estilo.css">
<title>Insert title here</title>
<script language="JavaScript">
	function moveRelogio() {
		momentoAtual = new Date()
		hora = momentoAtual.getHours()
		minuto = momentoAtual.getMinutes()
		segundo = momentoAtual.getSeconds()
		horaImprimivel = hora + " : " + minuto + " : " + segundo
		document.form_relogio.relogio.value = horaImprimivel
		setTimeout("moveRelogio()", 1000)
	}
</script>
</head>
<body onload="moveRelogio()">
	<c:set var="now" value="<%=new java.util.Date()%>" />
	<form name="form_relogio">
		<input type="text" name="relogio" size="10"
			style="background-color: Black; color: White; font-family: Verdana, Arial, Helvetica; font-size: 8pt; text-align: center;" >
	</form>
	<div class="rodape">
		:: © Copyright 2016 Copyright.com.br - All Rights Reserved - AllDirect
		::
		<fmt:formatDate type="both" pattern="MM/dd/yyyy" value="${now}" />

	</div>
</body>
</html>