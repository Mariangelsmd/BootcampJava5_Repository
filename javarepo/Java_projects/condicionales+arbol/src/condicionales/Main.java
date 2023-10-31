package condicionales;

import java.lang.invoke.StringConcatFactory;
import java.util.Scanner;

import javax.naming.directory.AttributeModificationException;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// EJERCICIO 1
		// *******************************************************************************************
		int num1 = (int) Math.round(Math.random());
		boolean numero = false;

		if (num1 == 0) {
			numero = false;
			System.err.println("Es un 0");
		} else if (num1 == 1) {
			numero = true;
			System.out.println("Es un 1");
		}
		System.out.println("_______________________________________");

		// EJERCICIO 2
		// *******************************************************************************************
		double temp = 0.0;
		Scanner sc = new Scanner(System.in);
		System.out.print("Introduce una temperatura: ");
		temp = sc.nextDouble();

		if (temp < 10) {
			if (temp < 5) {
				System.out.println("Clima frío polar");
			} else if (temp >= 5) {
				System.out.println("Clima frío de alta montaña");
			}
		} else if (temp >= 10 && temp < 20) {
			if (temp < 13.5) {
				System.out.println("Clima templado oceánico");
			} else if (temp >= 13.5 && temp < 16.5) {
				System.out.println("Clima templado mediterráneo");
			} else if (temp >= 16.5 && temp < 20) {
				System.out.println("Clima templado continental");
			}
		} else if (temp >= 20) {
			if (temp < 23.5) {
				System.out.println("Clima cálido ecuatorial");
			} else if (temp >= 23.5 && temp < 26.5) {
				System.out.println("Clima cálido tropical");
			} else if (temp >= 26.5) {
				System.out.println("Clima cálido desértico");
			}
		}

		System.out.println("_______________________________________");

		// EJERCICIO 3
		// *******************************************************************************************
		int num2 = 0;
		System.out.print("Introduce un número del 1 al 9 para pasarlo a texto: ");
		num2 = sc.nextInt();

		switch (num2) {
		case 1:
			System.out.println("Uno");
			break;
		case 2:
			System.out.println("Dos");
			break;
		case 3:
			System.out.println("Tres");
			break;
		case 4:
			System.out.println("Cuatro");
			break;
		case 5:
			System.out.println("Cinco");
			break;
		case 6:
			System.out.println("Seis");
			break;
		case 7:
			System.out.println("Siete");
			break;
		case 8:
			System.out.println("Ocho");
			break;
		case 9:
			System.out.println("Nueve");
			break;
		default:
			System.out.println("No ha introducido un número del 1 al 9");
			break;
		}
		System.out.println("_______________________________________");

		// EJERCICIO 4
		// ******************************************************************************************
		double number = 55;
		String resultado;
		System.out.print("Introduce un número para evaluarlo: ");
		number = sc.nextDouble();
		resultado = number < 0 ? "¡Es negativo!" : (number > 0 ? "¡Es positivo!" : "¡Es cero, ná de ná!");
		System.out.println(resultado);
		System.out.println("_______________________________________");

		// EJERCICIO 5
		// ******************************************************************************************
		String espacio = " ";
		String simbolo = "";
		String inicioFormatoV = "\033[48;5;2m";
		String inicioFormatoM = "\033[48;5;52m";
		String finalFormato = "\033[0m";
		String simboloFormateadoCopa = "";
		String simboloFormateadoPie = "";
		int altura = 0;
		System.out.println("¿Qué símbolo desea para su árbol?");
		simbolo = sc.next();
		System.out.println("¿Qué altura desea que tenga su árbol?");
		altura = sc.nextInt();
		
		simboloFormateadoCopa = inicioFormatoV+simbolo+finalFormato;
		simboloFormateadoPie = inicioFormatoM+simbolo+finalFormato;

		for (int i = 1; i <= altura; i++) {

			// Pie del árbol
			if (i >= altura - 1) {
				for (int j = 0; j < (altura - 4); j++) {
					System.out.print(espacio);
				}
				for (int k = 4; k > 0; k--) {
					System.out.print(simboloFormateadoPie);
				}
				// Copa del árbol
			} else {
				for (int j = 0; j < (altura - 2) - i; j++) {
					System.out.print(espacio);
				}
				for (int k = 2 * i; k > 0; k--) {
					System.out.print(simboloFormateadoCopa);
				}
			}

			System.out.println();

		}

	}

}
