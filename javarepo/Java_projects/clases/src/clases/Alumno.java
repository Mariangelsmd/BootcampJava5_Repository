package clases;

public class Alumno implements IPersona {

	private String nombre;
	private int curso;

	public Alumno() {

	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getcurso() {
		return curso;
	}

	public void setcurso(int curso) {
		this.curso = curso;
	}

}
