<body>
<%@ page import="java.util.*,br.insper.tecweb.p1.*" %>
<table border='1'>
<button onclick="window.location.href='NovasNotas.jsp'">Editar Notas</button>

<h1>NOTAS</h1>
	
	<%Integer id= (int) (request.getAttribute("idlog")); %>
	<% System.out.println((id));%>
<%
	DAONota dao = new DAONota();
 	List<Notas> notas = dao.getListaNota();
 	for (Notas nota : notas ) {
%>
	<tr>
 		<td><%=nota.getTitulo()%></td>
 		<td><%=nota.getTexto()%></td>
 		<td><%=nota.getCor()%></td>
 		<td><%=nota.getPrazo_final().getTime()%></td>
 		<td><%=nota.getData_criacao().getTime()%></td>
 	</tr>
<% } %>
</table>
</body>