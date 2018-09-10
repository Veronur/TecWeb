<link rel="stylesheet" href="PaginaInicial.css">
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
      <td><%=nota.getTitulo()%></td>
    </a>
  </li>
  </ul>
 <% } %>
