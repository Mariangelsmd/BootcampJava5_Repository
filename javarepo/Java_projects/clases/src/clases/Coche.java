package clases;

public class Coche {
	// Atributos
	private String combustible;
	private int maxvelocidad;
	private String marca;
	private int velocidad;

	// Constructor
	public Coche() {

	}

	public Coche(String combustible, int maxvelocidad, String marca, int velocidad) {
		this.combustible = combustible;
		this.maxvelocidad = maxvelocidad;
		this.marca = marca;
		this.velocidad = velocidad;
	}

	public String getCombustible() {
		return combustible;
	}

	public void setCombustible(String combustible) {
		this.combustible = combustible;
	}

	public int getMaxvelocidad() {
		return maxvelocidad;
	}

	public void setMaxvelocidad(int maxvelocidad) {
		this.maxvelocidad = maxvelocidad;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public int getVelocidad() {
		System.out.println("La velocidad del coche " + this.marca + " es " + this.velocidad + "km/h.");
		return velocidad;
	}

	public void setVelocidad(int velocidad) {
		this.velocidad = velocidad;
	}

}
