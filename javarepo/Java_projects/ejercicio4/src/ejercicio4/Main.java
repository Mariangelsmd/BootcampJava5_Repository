package ejercicio4;

import java.util.ArrayList;
import java.util.Random;
import java.util.Scanner;

public class Main {

	public static void entreDos(int num) {
		int num2 = num;
		for (int i = 0; i <= num; i++)
			if (num2 % 2 == 0) {
				System.out.print(num2 + " ");
				num2--;
			} else {
				num2--;
			}
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// EJERCICIO 1
		// *************************************************************************************************************************************
		int num;
		Scanner scanner = new Scanner(System.in);
		System.out.println("Introduce un número para mostrar sus divisibles por dos hasta llegar a 0: ");
		num = scanner.nextInt();
		entreDos(num);
		System.out.println();

		// EJERCICIO 2
		// *************************************************************************************************************************************
		int[] numeros = new int[10];
		Random random = new Random();

		for (int i = 0; i < 10; i++) {
			numeros[i] = random.nextInt(100); // Genera números aleatorios entre 0 y 99
			System.out.print(numeros[i] + " ");
		}

		System.out.println();
		System.out.println("Los divisibles por 3 de este array son: ");
		for (int i = 0; i < 10; i++) {
			if (numeros[i] % 3 == 0) {
				System.out.print(numeros[i] + " ");
			}
		}

		// EJERCICIO 3
		// *************************************************************************************************************************************
		System.out.println();
		System.out.println("¿Cuántas veces quieres decir hola? Uno será el mínimo");
		num = scanner.nextInt();
		int i = 0;
		do {
			System.out.println("Hola");
			i++;
		} while (i < num);

		// EJERCICIO 4
		// *************************************************************************************************************************************
		String xyz = "ZYXWVUTSRQPOÑNMLKJIHGFEDCBA";
		String abc = "";

		while (xyz.length() > 0) {
			char primerCaracter = xyz.charAt(0);
			abc += primerCaracter;
			System.out.println(xyz);
			xyz = xyz.substring(1); // Elimina el primer carácter
		}

		while (abc.length() > 0) {
			char ultimoCaracter = abc.charAt(abc.length() - 1);
			xyz += ultimoCaracter;
			abc = abc.substring(0, abc.length() - 1); // Elimina el primer carácter
			System.out.println(xyz);
		}

	}

}
