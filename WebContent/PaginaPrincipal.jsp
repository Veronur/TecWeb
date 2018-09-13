<link rel="stylesheet" href="PaginaInicial.css">
<%@ page import="java.util.*,br.insper.tecweb.p1.*" %>

 <link rel="stylesheet" href="PaginaInicial.css">
 
 <body>
 	<div class="titulo_pagina">
		<h2>Notas</h2>
	</div>
	<div class="botao_novo_nota">
		<button onclick="window.location.href='NotaNova.jsp'">Nota Nova</button>
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
	 		<h4>Cor:</h4>
	 		<div class="cor"><%=nota.getCor()%></div>
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
				<button onclick="window.location.href='EditarNota.jsp?id=<%=nota.getId()%>'">Editar</button>
				</div>
			</div>
	</div>
	
<% } %>
</div>

</body>