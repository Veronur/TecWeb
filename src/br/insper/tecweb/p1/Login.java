package br.insper.tecweb.p1;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class Login extends HttpServlet { 

		@Override
		protected void doGet(HttpServletRequest request,
								HttpServletResponse response)
				throws ServletException, IOException {
			 		PrintWriter out = response.getWriter();
				out.println("<html><body>");
				out.println("<form method='post'>");
				out.println("Login: <input type='text' name='Login's><br>");
				out.println("Senha: <input type='text' name='Senha'><br>");
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
			 	pessoa.setLogin(request.getParameter("Login"));
				pessoa.setSenha(request.getParameter("senha"));
			 	Integer id_login=dao.login(pessoa);
			 	Calendar lastlogin=Calendar.getInstance();

			 	if (id_login!=null) {
			 		System.out.println(("certo"));
			 		response.sendRedirect("teste.jsp"); 
			 	}
			 	else {
			 		PrintWriter out = response.getWriter();
					out.println("<html><body>");
					out.println("BAD LOGIN");
					out.println("</body></html>");
			 	}
			 		
			 	//System.out.println(logtime.getTime());
			 	//System.out.println(id_login);
		dao.close();
		 }
}