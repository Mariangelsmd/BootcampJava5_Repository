package clases;

public class Profesor implements IPersona {

	private int salario;
	private String nombre;

	public Profesor() {

	}

	public Profesor(int salario) {
		super();
		this.salario = salario;
	}

	public int getSalario() {
		return salario;
	}

	public void setSalario(int salario) {
		this.salario = salario;
	}

	@Override
	public void setNombre(String nombre) {
		this.nombre = nombre;

	}

	@Override
	public String getNombre() {
		// TODO Auto-generated method stub
		return null;
	}

}
