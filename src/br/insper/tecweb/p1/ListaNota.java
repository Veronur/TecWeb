package br.insper.tecweb.p1;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/lista")
public class ListaNota extends HttpServlet {
	protected void service(HttpServletRequest request,
							HttpServletResponse response)
			throws ServletException, IOException {
		
			DAONota daonota = new DAONota();
			
			List<Notas> notas = daonota.getLista();
			
			PrintWriter out = response.getWriter();
			out.println("<html><body><table border='1'>");
			out.println("<tr><td>ID</td><td>Nome</td>" +
					"<td>Login</td><td>Email</td><td>Senha</td></tr>");
			for (Notas nota : notas) {
				 out.println("<tr><td>" + nota.getId() + "</td>");
				 out.println("<td>" + nota.getTitulo() + "</td>");
				 out.println("<td>" + nota.getTexto() + "</td>");
				 out.println("<td>" + nota.getCor() + "</td>");
				 out.println("<td>" + nota.getPrazo_final() + "</td></tr>");
				}
			out.println("</table></body></html>");

			daonota.close();

	}
}