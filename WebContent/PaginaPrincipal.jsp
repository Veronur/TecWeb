<link rel="stylesheet" href="PaginaInicial.css">
<%@ page import="java.util.*,br.insper.tecweb.p1.*" %>
<%
	DAONota daonota = new DAONota();
 	List<Notas> notas = daonota.getLista();
 	for (Notas nota : notas ) {
%>

 <% } %>

 <link rel="stylesheet" href="PaginaInicial.css">
 <body>
<%@ page import="java.util.*,br.insper.tecweb.p1.*" %>
<%
	DAO dao = new DAO();
 	List<Usuarios> pessoas = dao.getLista();
 	for (Usuarios pessoa : pessoas ) {
%>
	<ul>
	  <li>
	    <a href="#">
	      <h2>Title #1</h2>
	      <tr>
	 		<td><%=pessoa.getNome()%></td>
	 		<td><%=pessoa.getLogin()%></td>
	 		<td><%=pessoa.getEmail()%></td>
	 		<td><%=pessoa.getSenha()%></td>
 		 </tr>
	    </a>
	  </li>
	</ul>
<% } %>
</table>
</body>