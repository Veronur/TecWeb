<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<%@ page import="java.util.*,br.insper.tecweb.p1.*" %>
<h1>Bem Vindo!</h1>
<%
	DAO dao = new DAO();
	List<Usuarios> pessoas = dao.getLista();
%>
	<form action="login" method="post">
		Login:<br>
  		<input type="text" name="Login"><br>
		Senha:<br>
  		<input type="text" name="senha"><br>
		<input type="submit" value="LOGIN">
	</form>

	<button onclick="window.location.href='NewUser.jsp'">Novo Usuário</button>



</body>
</html>