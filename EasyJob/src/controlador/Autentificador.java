package controlador;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class Autentificador extends HttpServlet {
	
	protected void doPost(HttpServletRequest request,
		HttpServletResponse response) throws IOException, ServletException {
 
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		RequestDispatcher rd = null;
 
		if(username.equals("admin") && password.equals("1234"))
		
			response.sendRedirect("/Administrador.jsp");
		else 
			response.sendRedirect("/inicio.jsp");
		}
		
		
	}
