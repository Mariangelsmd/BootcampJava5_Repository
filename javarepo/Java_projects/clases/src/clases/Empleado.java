package clases;

import java.security.interfaces.RSAMultiPrimePrivateCrtKey;
import java.util.Random;

public class Empleado extends Persona {

	// Atributos
	private String tipoContrato;
	private float sueldo;

	// Constructores

	public Empleado() {

	}

	public Empleado(String tipoContrato, float sueldo) {
		super();
		this.tipoContrato = tipoContrato;
		this.sueldo = sueldo;
	}

	public String getTipoContrato() {
		return tipoContrato;
	}

	public void setTipoContrato(String tipoContrato) {
		this.tipoContrato = tipoContrato;
	}

	public float getSueldo() {
		return sueldo;
	}

	public void setSueldo(float sueldo) {
		this.sueldo = sueldo;
	}

	public float calcularSueldo() {
		Random random = new Random();
		float sueldo = random.nextFloat(5000f);
		this.sueldo = sueldo;
		return sueldo;
	}

	public String toString() {
		return "Nombre: " + this.getNombre() + ", Apellidos: " + this.getApellidos() + ", Documento: "
				+ this.getDocumento() + ", Tipo: " + this.getTipo() + ", Tipo de contrato: " + this.getTipoContrato()
				+ ", Sueldo: " + this.getSueldo();
	}

}
