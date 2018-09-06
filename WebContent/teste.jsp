<body>
<%@ page import="java.util.*,br.insper.tecweb.p1.*" %>
<table border='1'>
<%
	DAO dao = new DAO();
 	List<Usuarios> pessoas = dao.getLista();
 	for (Usuarios pessoa : pessoas ) {
%>
	<tr>
 		<td><%=pessoa.getNome()%></td>
 		<td><%=pessoa.getEmail()%></td>
 		<td><%=pessoa.getSenha()%></td>
 	</tr>
<% } %>
</table>
</body>