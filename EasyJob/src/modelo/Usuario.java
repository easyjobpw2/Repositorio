package modelo;

import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;

import controlador.PMF;
@PersistenceCapable
public class Usuario {
	
	@Persistent
	private int DNI;
	@Persistent
	private String password;
	@Persistent
	private String tipo;
	
	public Usuario(int dni, String password, String tipo) {
	
		DNI = dni;
		this.password = password;
		this.tipo = tipo;
	}
	
	@SuppressWarnings("unchecked")
	public String getNombreUsuario(){
		PersistenceManager pm = PMF.get().getPersistenceManager();
		if(this.tipo.equals("Postulante")){
			Query q = pm.newQuery(Postulante.class);
			List<Postulante> postulantes = (List<Postulante>) q.execute();
			
			for(Postulante pos: postulantes){
				if(pos.getDni() == DNI){
					return pos.getName()+" "+pos.getLastname();
				}
			}
			}else{
				Query q = pm.newQuery(Administrador.class);
				List<Administrador> administradores = (List<Administrador>) q.execute();
				
				for(Administrador a: administradores){
					if(a.getDNI()== DNI){
						return a.getNombre()+" "+a.getApellido();
					}
				}
			}
		return "";
		}

	
	public int getDNI() {
		return DNI;
	}

	public void setDNI(int dni) {
		DNI = dni;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}	
	@Override
	public String toString() {
		return "DNI=" + DNI + ", password=" + password + ", tipo="
				+ tipo;
	}
}
