<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>operacoes</title>
</head>
<body>
<%@ page import="java.util.*,br.insper.tecweb.p1.*" %>
<h1>Op��es</h1>
<%
	DAO dao = new DAO();
	List<Usuarios> pessoas = dao.getLista();
	//System.out.println(request.getParameter("idlog"));
%>
<button onclick="window.location.href='NovasNotas.jsp'">Novas Notas</button>
<h2>Atualizar</h2>
	<form action="atualiza" method="post">
		Nome:<br>
  		<input type="text" name="nome"><br>
  		Login:<br>
  		<input type="text" name="Login"><br>
		Senha:<br>
  		<input type="text" name="senha"><br>
  		Email:<br>
  		<input type="text" name="email"><br>
  		<input type="hidden" name="id" value=<%=request.getParameter("idlog")%>><br>
  		<input type="submit" value="Atualiza">
	</form>
<h2>Remover Usu�rio</h2>
	<form action="remove" method="post">
  		<input type="hidden" name="id" value=<%=request.getParameter("idlog")%>><br>
  		<input type="submit" value="Delete">
	</form>

</body>
</html>	