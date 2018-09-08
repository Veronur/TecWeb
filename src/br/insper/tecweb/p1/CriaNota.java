package br.insper.tecweb.p1;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cria_nota")
public class CriaNota extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request,
							HttpServletResponse response)
								throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<form method='post'>");
		out.println("aberta: <input type='text' name='aberta'><br>");
		out.println("usuario_abriu: <input type='text' name='usuario_abriu'><br>");
		out.println("titulo: <input type='text' name='titulo'><br>");
		out.println("texto: <input type='text' name='texto'<br>");
		out.println("cor: <input type='text' name='cor'><br>");
		out.println("prazo_final: <input type='text' name='prazo_final'><br>");
		out.println("data_criacao: <input type='text' name='data_criacao'<br>");
		out.println("<input type='submit' value='Submit'>");
		out.println("</form>");
		out.println("<body><html>");
	}
	@Override
	protected void doPost(HttpServletRequest request,
							HttpServletResponse response)
			throws ServletException, IOException {
		DAONota daoNota = new DAONota();
	Notas nota = new Notas();
	nota.setAberta(Integer.valueOf(request.getParameter("aberta")));
	nota.setUsuario_abriu(Integer.valueOf(request.getParameter("usuario_abriu")));
	nota.setTitulo(request.getParameter("titulo"));
	nota.setTexto(request.getParameter("texto"));
	nota.setCor(request.getParameter("cor"));
	
	//nota.setPrazo_final(request.getParameter("prazo_final"));
	//nota.setData_criacao(request.getParameter("data_criacao"));
	
	
	String prazo_final_nota = request.getParameter("prazo_final_nota");
	Date data = null;
	try {
		data = (Date) new SimpleDateFormat("yyyy-MM-dd").parse(prazo_final_nota);
	} catch (ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	Calendar dataPrazo = Calendar.getInstance();
 	nota.setPrazo_final(dataPrazo);

 	
 	
 	String data_criacao = request.getParameter("data_criacao");
	Date datac = null;
	try {
		datac = (Date) new SimpleDateFormat("yyyy-MM-dd").parse(data_criacao);
	} catch (ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	Calendar dataCria = Calendar.getInstance();
	System.out.println("DATA");
	System.out.println(dataCria);
 	nota.setData_criacao(dataCria);
	
	
	daoNota.adiciona(nota);
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("adicionado" + nota.getTitulo());
		
		out.println("</body></html>");
		daoNota.close();
 }
}