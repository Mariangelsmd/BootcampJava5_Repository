package clases;

public class TarjetaCredito {

	// Atributos
	private boolean activa;
	private int saldo;

	// Constructor
	public TarjetaCredito() {

	}

	public TarjetaCredito(boolean activa) {
		this.activa = activa;
		this.saldo = 100;
	}

	public boolean isActiva() {
		return activa;
	}

	public void setActiva(boolean activa) {
		this.activa = activa;
	}

	public int getSaldo() {
		return saldo;
	}

	public void setSaldo(int saldo) {
		this.saldo = saldo;
	}

	public void pago(int coste) {
		if (this.activa) {
			if (this.saldo >= coste) {
				this.saldo -= coste;
				System.out.println("Tu saldo ahora es: "+this.saldo);
			} else {
				System.out.println("No hay saldo suficiente para realizar la operación");
			}
		} else {
			System.out.println("La tarjeta no está activa y no se puede realizar el pago.");
		}
	}
}
