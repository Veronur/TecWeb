<link rel="stylesheet" href="PaginaInicial.css">
<%@ page import="java.util.*,br.insper.tecweb.p1.*" %>

 <link rel="stylesheet" href="PaginaInicial.css">
 <body>
<%@ page import="java.util.*,br.insper.tecweb.p1.*" %>
<%
	DAONota daonota = new DAONota();
	List<Notas> notas = daonota.getLista();
	for (Notas nota : notas ) {
%>
	<ul>
	  <li>
	    <a href="#">
	      <h2>Title #1</h2>
	      <tr>
	 		<td><%=nota.getTitulo()%></td>
	 		<td><%=nota.getTexto()%></td>
	 		<td><%=nota.getCor()%></td>
	 		<td><%=nota.getPrazo_final()%></td>
 		 </tr>
	    </a>
	  </li>
	</ul>
<% } %>
</table>
</body>