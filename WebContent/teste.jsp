<body>
<%@ page import="java.util.*,br.insper.tecweb.p1.*" %>
<table border='1'>
<% DAO dao = new DAO();
 	List<Pessoas> pessoas = dao.getLista();
 	for (Pessoas pessoa : pessoas ) { %>
	<tr>
 		<td><%=pessoa.getNome()%></td>
 		<td><%=pessoa.getNascimento().getTime()%></td>
 		<td><%=pessoa.getAltura()%></td>
 	</tr>
<% } %>
</table>
</body>