<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Qual sua nova nota?</h1>
<h2>Adicionar Nota</h2>
	<form action="cria_nota" method="post">
  		<input type="hidden" name="aberta" value="1">
  		Quem Abriu:<br>
  		<input type="number" name="usuario_abriu"><br>
		Titulo:<br>
  		<input type="text" name="titulo"><br>
  		Texto:<br>
  		<input type="text" name="texto"><br>
  		Cor:<br>
  		<input name="cor" type="color"/>
		Prazo:<br>
  		<input type="date" name="prazo_final_nota"><br>
  		<input type="submit" value="Submit">
	</form>	
</body>
</html>