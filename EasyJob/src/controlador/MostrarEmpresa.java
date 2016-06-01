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
public class MostrarEmpresa extends HttpServlet{
	@SuppressWarnings("unchecked")
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Query q = pm.newQuery(Empresa.class);
		List<Empresa> empresas = (List<Empresa>) q.execute();
		req.setAttribute("empresas", empresas);
		RequestDispatcher rd = req.getRequestDispatcher("/mostrarEmpresa.jsp");
		rd.forward(req, resp);
		
	}
}