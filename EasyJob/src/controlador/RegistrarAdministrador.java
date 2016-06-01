package controlador;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.*;

import modelo.Administrador;

import modelo.Usuario;

@SuppressWarnings("serial")
public class RegistrarAdministrador extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		resp.setContentType("text/html");
		try{

			int DNI= Integer.parseInt(req.getParameter("dni"));
			PersistenceManager pm1 = PMF.get().getPersistenceManager();
			Query q = pm1.newQuery(Usuario.class);
			@SuppressWarnings("unchecked")
			List<Usuario> usuarios = (List<Usuario>) q.execute();
			if(usuarios != null ){
				for(Usuario a: usuarios){
					if(a.getDNI()==DNI){
						resp.sendRedirect("/administrador.jsp");
						return;
					}
				}
			}
			q.closeAll();
			pm1.close();

			Administrador admin=new Administrador(DNI, req.getParameter("nombre"), req.getParameter("apellidos"), 
					req.getParameter("email"));
			PersistenceManager pm = PMF.get().getPersistenceManager();
			pm.makePersistent(admin);
			
			String password=Integer.toString(DNI);
			Usuario usu=new Usuario(DNI, password, "Administrador");
			pm.makePersistent(usu);
		
			resp.sendRedirect("Administrador.jsp");
			
		}catch(Exception e){
			resp.getWriter().println("Imposible Guardar");
			resp.getWriter().println(e.getMessage());
		}
	}
}