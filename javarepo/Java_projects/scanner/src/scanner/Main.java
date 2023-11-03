package scanner;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner sc = new Scanner(System.in);

		System.out.println("Introduce tu nombre: ");
		String nombre = sc.next();
		System.out.println("Introduce tu primer apellido: ");
		String apellido1 = sc.next();
		System.out.println("Introduce tu segundo apellido: ");
		String apellido2 = sc.next();
		System.out.println("Introduce tu edad: ");
		int edad = sc.nextInt();
		System.out.println("Introduce tu altura: ");
		float altura = sc.nextFloat();
		System.out.println("¿Eres una persona?\nEscribe true o false: ");
		boolean persona = sc.nextBoolean();
		System.out.println("Los datos introducidos son:\nNombre: " + nombre + ", Primer apellido: " + apellido1
				+ ", Segundo apellido: " + apellido2 + ", Edad: " + edad + ", Altura: " + altura + ", ¿Eres persona? "
				+ persona);
	}

}
