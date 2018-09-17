<link rel="stylesheet" href="PaginaInicial.css">
<%@ page import="java.util.*,br.insper.tecweb.p1.*" %>

 <link rel="stylesheet" href="PaginaInicial.css">
 
 <body>
 	<div class="titulo_pagina">
		<h2>Notas</h2>
	</div>
	
 <div class="flex-container">
<%@ page import="java.util.*,br.insper.tecweb.p1.*" %>
<%Integer idlog= (int) (request.getAttribute("idlog")); %>
	<div class="botao_novo_nota">
		<button onclick="window.location.href='NotaNova.jsp?idlog=<%=idlog%>'">Nota Nova</button>
	</div>
<%
	DAONota daonota = new DAONota();
	System.out.println("c�");

	List<Notas> notas = daonota.getListaNota(idlog);
	for (Notas nota : notas ) {
%>
	<div class="nota" style="background-color: <%=nota.getCor()%>">
	 		<div class="titulo">
	 			<h2><%=nota.getTitulo()%></h2>
	 			</div>
	 		<div class="texto"><%=nota.getTexto()%></div>
	 		<h4>Nota Criada em:</h4>
	 		<div class="prazo_final"><%=nota.getData_criacao().getTime()%></div>
	 		
	 		<h4>Prazo Final:</h4>
	 			 		
	 		<div class="prazo_final"><%=nota.getPrazo_final().getTime()%></div>
	 		<div class='botoes'>
	 			<div>
		 		<form action="remove_nota" method="post">
			  		<input type="hidden" name="id" value="<%=nota.getId()%>">
			  		<input type="submit" value="Delete">
				</form>
				</div>
				<div>
				<button onclick="window.location.href='EditarNota.jsp?id=<%=idlog%>'">Editar</button>
				</div>
			</div>
	</div>
	
<% } %>
</div>

</body>