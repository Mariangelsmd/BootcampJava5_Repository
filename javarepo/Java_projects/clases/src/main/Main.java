package main;

import clases.Coche;
import clases.Programador;
import clases.TarjetaCredito;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Coche yarisCoche = new Coche("gasolina", 120, "Toyota", 120);
		Coche peugeotCoche = new Coche("gasolina", 150, "Peugeot", 280);
		Coche crislerCoche = new Coche("diesel", 130, "Chrysler", 180);
		
		System.out.println(yarisCoche.getCombustible()+", "+yarisCoche.getMaxvelocidad());
		yarisCoche.setCombustible("diesel");
		yarisCoche.setMaxvelocidad(100);
		System.out.println(yarisCoche.getCombustible()+", "+yarisCoche.getMaxvelocidad());
		
		TarjetaCredito tarjCredito = new TarjetaCredito(true);
		System.out.println(tarjCredito.getSaldo());
		tarjCredito.pago(150);
		tarjCredito.pago(100);
		tarjCredito.pago(20);
		System.out.println(tarjCredito.getSaldo());
		
		Programador programador = new Programador(20,250.0f);
		System.out.println(programador.getSalario());
		
		yarisCoche.getVelocidad();
		peugeotCoche.getVelocidad();
		crislerCoche.getVelocidad();
	}

}
