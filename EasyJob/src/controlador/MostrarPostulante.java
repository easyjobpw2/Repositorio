package controlador;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.*;

@SuppressWarnings("serial")
public class MostrarPostulante extends HttpServlet{
	@SuppressWarnings("unchecked")
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Query q = pm.newQuery(Postulante.class);
		List<Postulante> postulantes = (List<Postulante>) q.execute();
		req.setAttribute("postulantes", postulantes);
		RequestDispatcher rd = req.getRequestDispatcher("/mostrarPostulante.jsp");
		rd.forward(req, resp);
		
	}
}
	