package modelo;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class Postulante {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	@Persistent
	private String name;
	
	@Persistent
	private String lastname;
	
	@Persistent
	private String email;
	
	@Persistent
	private int dni;
	
	@Persistent
	private String titulo;
	
	@Persistent
	private String phone;
	
	@Persistent
	private int estatus=0;

	public Postulante(int dni,String name, String lastname, String email, String phone, String titulo, int estatus) {
		this.name = name;
		this.lastname = lastname;
		this.email = email;
		this.phone = phone;
		this.dni = dni;
		this.titulo = titulo;
		this.estatus = estatus;
		
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public int getDni() {
		return dni;
	}

	public void setDni(int dni) {
		this.dni = dni;
	}
	
	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	
	public int setEstatus() {
		return estatus;
	}

	public void setEstatus(int est) {
		this.estatus = est;
	}

	public Key getKey() {
		return key;
	}
	
	@Override
	public String toString() {
		String resp = dni +":"+ name  + lastname + " : " + email + " : " + phone;  
		return resp;
	}
}
