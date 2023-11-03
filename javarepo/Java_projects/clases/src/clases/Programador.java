package clases;

public class Programador extends Trabajador{

	// Atributos
	private int bonus;
	
	
	// Constructor
	public Programador() {
		
	}
	
	public Programador(int bonus, float salario) {
		this.bonus = bonus;
		this.salario = salario;
	}

	public int getBonus() {
		return bonus;
	}

	public void setBonus(int bonus) {
		this.bonus = bonus;
	}
	
	
	
	
}
