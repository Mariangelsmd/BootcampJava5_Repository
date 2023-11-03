package ejercicio10Recursividad;

import java.util.ArrayList;

import javax.swing.plaf.basic.BasicInternalFrameTitlePane.IconifyAction;

public class Main {

	// LEER ARRAY EN RECURSIVO
	public static void leer(String[] texto, int num) {
		System.out.println(texto[num]);
		num++;
		if (num < texto.length) {
			leer(texto, num);
		}
	}

	// PARAR LECTURA EN HTML
	public static void html(String[] texto, int num) {
		System.out.println(texto[num]);
		num++;
		if (num < texto.length) {
			if (texto[num].equalsIgnoreCase("html")) {
				System.out.println(texto[num]);
			} else {
				html(texto, num);
			}

		}
	}

	public static int fibonacci(int n) {
		if (n <= 1) {
			return n;
		} else {
			return fibonacci(n - 1) + fibonacci(n - 2);
		}
	}

	public static String reverseString(String str) {
		// Caso base: si la cadena es vacía o tiene un solo carácter, se devuelve tal
		// cual
		if (str.isEmpty() || str.length() == 1) {
			return str;
		} else {
			// Llamada recursiva para invertir la subcadena que excluye el primer carácter
			String primerCaracter = str.substring(0, 1);
			String subcadenaInvertida = reverseString(str.substring(1));
			return subcadenaInvertida + primerCaracter;
		}
	}

	public static void sumaNumeros(int numero) {
		int suma = numero + numero;

		if (suma > 100) {
			System.out.println("Has llegado a más de 100");
		} else {
			System.out.print(suma + ", ");
			sumaNumeros(suma);
		}

	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		String[] tecnologies = { "Markdown", "Regexp", "HTML", "CSS", "JS", "SQL", "Java" };
		// EJERCICIO FIBONACCI
		int maximo = 30; // Valor máximo deseado
		System.out.println("Secuencia de Fibonacci hasta " + maximo + ":");
		int i = 0;
		int fibValue = fibonacci(i);
		while (fibValue <= maximo) {
			System.out.print(fibValue + " ");
			i++;
			fibValue = fibonacci(i);
		}
		// GIRAR STRING
		String textoString = "supercalifragilisticoespialidoso";
		String reversed = reverseString(textoString);
		System.out.println("\nString original: " + textoString);
		System.out.println("String invertido: " + reversed);

		// SUMAR NÚMEROS
		sumaNumeros(5);
	}

}
