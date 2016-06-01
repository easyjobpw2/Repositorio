package controlador;

import java.io.IOException;
import java.io.PrintWriter;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;

import modelo.Postulante;

@SuppressWarnings("serial")
public class RegistrarPostulante extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		PrintWriter out=resp.getWriter();
		resp.setContentType("text/html");
		
		String name = req.getParameter("name");
		String lastname = req.getParameter("lastname");
		String email = req.getParameter("email");
		int dni = Integer.parseInt(req.getParameter("dni"));
		String telefono= req.getParameter("telefono");
		String titulo = req.getParameter("titulo");
		
		
		Postulante p = new Postulante(dni,name, lastname, email, telefono, titulo,1);
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		
		
		try{
			pm.makePersistent(p);
			req.setAttribute("postulante", p);
			RequestDispatcher rd = req.getRequestDispatcher("/inicioPostulante.jsp");
			rd.forward(req, resp);
			resp.getWriter().println("Datos grabados correctamente <a href='index.jsp'>Inicio</a>");
			

		}catch(Exception e){
			System.out.println(e);
			resp.getWriter().println("Ocurrio un error, <a href='index.jsp'>vuelva a intentarlo</a>");
		}finally{
			pm.close();
		}
	}
}