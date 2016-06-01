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

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;


@SuppressWarnings("serial")
public class ModificarConsulta extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		
		String name = req.getParameter("name");
	
		PersistenceManager pm= PMF.get().getPersistenceManager();
		PrintWriter out=resp.getWriter();
		resp.setContentType("text/html");
		
		Query q = pm.newQuery(Postulante.class);
		q.setFilter("name == nameParam");
		q.declareParameters("String nameParam");
		
		List<Postulante> personas = (List<Postulante>)q.execute(name);
		if(personas.size()!=0){
			Postulante temp = personas.get(0);
			req.setAttribute("personas", temp);			
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/modificar.jsp");
			rd.forward(req, resp);
		}
		else
		{
			
			resp.getWriter().println("Datos no encontrado <a href='index.html'>Inicio</a>");
				
			
		}
	} 

}
