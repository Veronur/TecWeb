<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NovasNotas</title>
</head>
<body>
<%@ page import="java.util.*,br.insper.tecweb.p1.*" %>
<button onclick="window.location.href='Operacoes.jsp'">Op��es de Usu�rio</button>
<h1>Qual sua nova nota?</h1>

<h2>Adicionar Nota</h2>
	<form action="cria_nota" method="post">
  		Aberta:<br>
  		<input type="number" name="aberta"><br>
  		Quem Abriu:<br>
  		<input type="number" name="usuario_abriu"><br>
		Titulo:<br>
  		<input type="text" name="titulo"><br>
  		Texto:<br>
  		<input type="text" name="texto"><br>
  		Cor:<br>
  		<input type="text" name="cor"><br>
		Prazo:<br>
  		<input type="date" name="prazo_final_nota"><br>
  		Data da Cria��o:<br>
  		<input type="date" name="data_criacao"><br>
  			
  		<input type="submit" value="Submit">
	</form>	
<h2>Remover Nota</h2>
	<form action="remove_nota" method="post">

  			
  		<input type="submit" value="Remover">
	</form>	










</body>
</html>