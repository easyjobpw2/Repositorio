package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EvaluarTest extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		PrintWriter out=resp.getWriter();
		resp.setContentType("text/html");
		
		int q1 = Integer.parseInt(req.getParameter("p1"));
		int q2 = Integer.parseInt(req.getParameter("p2"));
		int q3 = Integer.parseInt(req.getParameter("p3"));
		int q4 = Integer.parseInt(req.getParameter("p4"));
		int q5 = Integer.parseInt(req.getParameter("p5"));
		int q6 = Integer.parseInt(req.getParameter("p6"));
		int q7 = Integer.parseInt(req.getParameter("p7"));
		int q8 = Integer.parseInt(req.getParameter("p8"));
		int q9 = Integer.parseInt(req.getParameter("p9"));
		int q10 = Integer.parseInt(req.getParameter("p10"));
		int q11 = Integer.parseInt(req.getParameter("p11"));
		int q12 = Integer.parseInt(req.getParameter("p12"));
		
		int result= q1+q2+q3+q4+q5+q6+q7+q8+q9+q10+q11+q12;
		String result1="TE DEJAS LLEVAR: Tus rasgos como líder brillan por su ausencia. Te dejas llevar por la opinión y decisiones de los otros más que decidir por tu propia vida. Esta actitud puede esconder un bajo nivel de autoestima o un déficit de habilidades sociales. Revísalo";
		String result2="CUANDO ES NECESARIO ME IMPLICO: Tienes una capacidad de liderazgo moderada. Tu actitud es inteligente pues te ahorra esfuerzos y te evita tener problemas. Eso sí, ten cuidado de no caer en la desidia ante situaciones en las que realmente pudiera resultarte ventajoso participar.";
		String result3="JEFE DE EQUIPOTu rasgo de liderazgo es elevado. Necesitas sentirte el “jefe” u organizador de la mayoría de cosas en las que participas. Tal vez es tu forma de mostrar tu implicación. Está bien, pero recuerda que no siempre es posible y valora si realmente es necesario que asumas la responsabilidad de tantas cosas.";
		try{
			if(result>= 0&&result<=8){
				
				req.setAttribute("resultado", result1 );
				RequestDispatcher rd = req.getRequestDispatcher("/resultadoTestPostulante.jsp");
				rd.forward(req, resp);
			}else if(result>8&&result<=16){
				
				req.setAttribute("resultado", result2 );
				RequestDispatcher rd = req.getRequestDispatcher("/resultadoTestPostulante.jsp");
				rd.forward(req, resp);
			}else if(result>16&&result<=24){
				
				req.setAttribute("resultado", result3 );
				RequestDispatcher rd = req.getRequestDispatcher("/resultadoTestPostulante.jsp");
				rd.forward(req, resp);
			}
		}catch(Exception e){
				System.out.println(e);
				resp.getWriter().println("Ocurrio un error, <a href='index.jsp'>vuelva a intentarlo</a>");
			
		}
			
	}

}
