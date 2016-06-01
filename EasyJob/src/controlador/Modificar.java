package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Postulante;


@SuppressWarnings("serial")
public class Modificar extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		String name = req.getParameter("name");
		String lastname = req.getParameter("lastname");
		String email = req.getParameter("email");
		int dni = Integer.parseInt(req.getParameter("dni"));
		String telefono= req.getParameter("telefono");
		String titulo = req.getParameter("titulo");
		
		PersistenceManager pm= PMF.get().getPersistenceManager();
		PrintWriter out=resp.getWriter();
		resp.setContentType("text/html");
		try{
		Query q = pm.newQuery(Postulante.class);
		q.setFilter("dni == dniParam");
		q.declareParameters("int dniParam");
		List<Postulante> postulantes = (List<Postulante>)q.execute(dni);
		if(postulantes != null){
			postulantes.get(0).setName(name);
			postulantes.get(0).setLastname(lastname);
			postulantes.get(0).setEmail(email);
			postulantes.get(0).setTitulo(titulo);
			postulantes.get(0).setPhone(telefono);
			req.setAttribute("postulante", postulantes.get(0));
			RequestDispatcher rd = req.getRequestDispatcher("/inicioPostulante.jsp");
			rd.forward(req, resp);
			resp.getWriter().println("Modificacion Guardada, <a href='mostra'>Inicio</a>");
		}else{
			resp.getWriter().println("Ocurrio un error, <a href='index.html'>vuelva a intentarlo</a>");
			}
		}catch(Exception e){
			System.out.println(e);
			resp.getWriter().println("Ocurrio un error, <a href='index.jsp'>vuelva a intentarlo</a>");
		}finally{
			pm.close();
		}
			
	}
}

