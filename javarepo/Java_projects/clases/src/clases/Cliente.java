package clases;

import java.util.Random;

public class Cliente extends Persona{
	// Atributos
	private String categoria;
	private int codigo;
	
	// Constructor
	public Cliente() {
		
	}

	public Cliente(String categoria, int codigo) {
		super();
		this.categoria = categoria;
		this.codigo = codigo;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	
	public int generarCodigo() {
		Random random = new Random();
		int num = random.nextInt(100);
		this.codigo = num;
		return num;
	}

}