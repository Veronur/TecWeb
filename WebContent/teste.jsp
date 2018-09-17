<body>
<%@ page import="java.util.*,br.insper.tecweb.p1.*" %>
<table border='1'>
<button onclick="window.location.href='NovasNotas.jsp'">Editar Notas</button>

<h1>NOTAS</h1>
	
	<%Integer idlog= (int) (request.getAttribute("idlog")); %>
	<% System.out.println((idlog));%>
<%
	DAONota dao = new DAONota();
 	List<Notas> notas = dao.getListaNota(idlog);
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