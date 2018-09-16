<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>operacoes</title>
</head>
<body>
<%@ page import="java.util.*,br.insper.tecweb.p1.*" %>
<h1>Opções</h1>
<%
	DAO dao = new DAO();
	List<Usuarios> pessoas = dao.getLista();
	
%>
<button onclick="window.location.href='NovasNotas.jsp'">Novas Notas</button>
	
<h2>Adicionar Usuário</h2>
	<form action="cria" method="post">
  		Nome:<br>
  		<input type="text" name="nome"><br>
  		Login:<br>
  		<input type="text" name="Login"><br>
		Senha:<br>
  		<input type="text" name="senha"><br>
  		Email:<br>
  		<input type="text" name="email"><br>
  		
  		<input type="submit" value="Submit">
	</form>	
	f
<h2>Remover Usuário</h2>
	<form action="remove" method="post">
  		Id: <input type="text" name="id"><br>
  		<input type="submit" value="Delete">
	</form>
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
  		Id: <input type="text" name="id"><br>
  		<input type="submit" value="Atualiza">
	</form>
</body>
</html>	