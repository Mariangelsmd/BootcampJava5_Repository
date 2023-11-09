package enums;

public class Developer {

	private String nombre;
	private String apellidos;
	private int edad;
	private String dni;
	private String rolTecnologico;

	public Developer(String nom, String ap, int edad, String dni, String rol) {
		this.nombre = nom;
		this.apellidos = ap;
		this.edad = edad;
		this.dni = dni;
		this.rolTecnologico = rol;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public String getRolTecnologico() {
		return rolTecnologico;
	}

	public void setRolTecnologico(String rolTecnologico) {
		this.rolTecnologico = rolTecnologico;
	}
	
	
}
