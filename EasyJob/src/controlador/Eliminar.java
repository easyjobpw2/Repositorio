package controlador;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.*;
@SuppressWarnings("serial")
public class Eliminar extends HttpServlet{
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int dni = Integer.parseInt(req.getParameter("dni"));
		String tipoUsuario = req.getParameter("opcion");

		PersistenceManager pm = PMF.get().getPersistenceManager();
		
		Query q;

		if(tipoUsuario.equals("administrador")){
			q = pm.newQuery(Administrador.class);
		}else if(tipoUsuario.equals("empresa")){
			q = pm.newQuery(Empresa.class);
		}else if(tipoUsuario.equals("postulante")){
			q = pm.newQuery(Postulante.class);
		}else{
			q = null;
		}
		
			q.setFilter("dni == dniParam");
			q.declareParameters("String dniParam");
			try{
					if(tipoUsuario.equals("administrador")){
						List<Administrador> administradores = (List<Administrador>)q.execute(dni);
						for(Administrador admin: administradores){
							pm.deletePersistent(admin);
						}
						resp.sendRedirect("mostrarAdministrador");
						
					}else if(tipoUsuario.equals("empresa")){
						List<Empresa> empresas = (List<Empresa>)q.execute(dni);
						for(Empresa emp: empresas){
							pm.deletePersistent(emp);
						}
						resp.sendRedirect("mostrarEmpresa");
						
					}else if(tipoUsuario.equals("postulante")){
						
						List<Postulante> postulantes = (List<Postulante>)q.execute(dni);
						for(Postulante p: postulantes){
							pm.deletePersistent(p);
						}
						resp.sendRedirect("mostrarPostulante");
					}		
				
			}catch(Exception e){
				resp.getWriter().print("error de copilacion"
						+ "\n"+e.getMessage());
			}finally{
				q.closeAll();
			}
		}
	}
