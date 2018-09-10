package br.insper.tecweb.p1;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/atualiza")
public class Atualiza extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request,
							HttpServletResponse response)
			throws ServletException, IOException {
				PrintWriter out = response.getWriter();
				out.println("<html><body>");
				out.println("<form method='post'>");
				out.println("ID: <input type='number' name='id'><br>");
				out.println("Nome: <input type='text' name='aberta'><br>");
				out.println("Login: <input type='text' name='titulo'><br>");
				out.println("Email: <input type='text' name='texto'><br>");
				out.println("Senha: <input type='text' name='prazo_final_nota' step='0.01'><br>");
				out.println("<input type='submit' value='Submit'>");
				out.println("</form>");
				out.println("<body><html>");
			}
	@Override
	protected void doPost(HttpServletRequest request,
							HttpServletResponse response)
			throws ServletException, IOException {
					DAO dao = new DAO();
					Usuarios pessoa = new Usuarios();
					pessoa.setId(Integer.valueOf(request.getParameter("id")));
					pessoa.setNome(request.getParameter("aberta"));
					pessoa.setLogin(request.getParameter("titulo"));	
					pessoa.setSenha(request.getParameter("texto"));	
					pessoa.setEmail(request.getParameter("cor"));
					
					
					dao.altera(pessoa);
					
					PrintWriter out = response.getWriter();
					out.println("<html><body>");
					out.println("atualizado" + pessoa.getNome());
					out.println("</body></html>");
					dao.close();
					
	}
}