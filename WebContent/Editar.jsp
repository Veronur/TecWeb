<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

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
  		Id: <input type="hidden" name="id" value=<%=request.getParameter("id") %>><br>
  		<input type="submit" value="Atualiza">
	</form>

</body>
</html>