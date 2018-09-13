<link rel="stylesheet" href="PaginaInicial.css">
<%@ page import="java.util.*,br.insper.tecweb.p1.*" %>

 <link rel="stylesheet" href="PaginaInicial.css">
 
 <body>
 	<div class="titulo_pagina">
		<h2>Notas</h2>
	</div>
 <div class="flex-container">
<%@ page import="java.util.*,br.insper.tecweb.p1.*" %>
<%
	DAONota daonota = new DAONota();
	List<Notas> notas = daonota.getListaNota();
	for (Notas nota : notas ) {
%>
	<div class="nota">
	 		<div class="titulo">
	 			<h2><%=nota.getTitulo()%></h2>
	 			</div>
	 		<div class="texto"><%=nota.getTexto()%></div>
	 		<div class="cor"><%=nota.getCor()%></div>
	 		<div class="prazo_final"><%=nota.getPrazo_final().getTime()%></div>
	 		<form action="remove_nota" method="post">
		  		<input type="hidden" name="id" value="<%=nota.getId()%>">
		  		<input type="submit" value="Delete">
			</form>
			<button onclick="window.location.href='Editar.jsp?id=<%=nota.getId()%>'">Editar</button>
	
	</div>
	
<% } %>
</div>

</body>