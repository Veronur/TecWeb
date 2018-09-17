package br.insper.tecweb.p1;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/listaNota")
public class ListaNota extends HttpServlet {
	protected void service(HttpServletRequest request,
							HttpServletResponse response)
			throws ServletException, IOException {
		
			DAONota daonota = new DAONota();
			
			List<Notas> notas = daonota.getListaNota(idlog);
			
			PrintWriter out = response.getWriter();
			out.println("<html><body><table border='1'>");
			out.println("<tr><td>ID</td><td>Titulo</td>" +
					"<td>Texto</td><td>Cor</td><td>Prazo_final_nota</td><td>data_criacao</td>");
			for (Notas nota : notas) {
				 out.println("<tr><td>" + nota.getId() + "</td>");
				 out.println("<td>" + nota.getTitulo() + "</td>");
				 out.println("<td>" + nota.getTexto() + "</td>");
				 out.println("<td>" + nota.getCor() + "</td>");
				 out.println("<td>" + nota.getPrazo_final() + "</td>");
				 out.println("<td>" + nota.getData_criacao() + "</td></tr>");
				 
				}
			out.println("</table></body></html>");

			daonota.close();

	}
}