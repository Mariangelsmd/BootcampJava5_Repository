package main;

import java.util.Scanner;

public class Main {

	public static void coordenadas(int coorx, int coordy) {

	}

	public static void imprimirLinea(String[] linea) {
		for (int i = 0; i < linea.length; i++) {
			System.out.print(linea[i]);
		}
		System.out.println("\n"); // Salto de línea
	}

	public static void tableroVacio() {
		String[] lineax1 = { "| ", " ", " | ", "1", " | ", "2", " | ", "3", " | " };
		String[] lineax2 = { "| ", "1", " | ", " ", " | ", " ", " | ", " ", " | " };
		String[] lineax3 = { "| ", "2", " | ", " ", " | ", " ", " | ", " ", " | " };
		String[] lineax4 = { "| ", "3", " | ", " ", " | ", " ", " | ", " ", " | " };

		imprimirLinea(lineax1);
		imprimirLinea(lineax2);
		imprimirLinea(lineax3);
		imprimirLinea(lineax4);
		System.out.println("\n"); // Salto de línea

	}
	
	public static int[] recogerCoordenadas () {
		Scanner sc = new Scanner(System.in);
		int[] coordenadas = new int [2];
		System.out.print("Introduce la coordenada x: ");
		coordenadas [0] = sc.nextInt();
		System.out.print("Introduce la coordenada y: ");
		coordenadas [1] = sc.nextInt();
		
		return coordenadas;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int op = 0;
		Scanner sc = new Scanner(System.in);
		
		System.out.println("******************");
		System.out.println("** TRES EN RAYA **");
		System.out.println("******************\n");
		System.out.println(
				"¿Cómo desea jugar?\n1. Humano contra humano\n2. Humano contra CPU (El CPU juega como 0)\n3. CPU contra CPU");
		System.out.print("\nSeleccione la opción deseada introduciendo el número: ");
		op = sc.nextInt();

		switch (op) {
		case 1:
			System.out.println("\n___ TABLERO ___\n");
			tableroVacio();
			System.out.println("x __ JUGADOR 1 __ x");
			recogerCoordenadas();
			System.out.println("\no __ JUGADOR 2 __ o");
			recogerCoordenadas();
			
			break;

		case 2:

			break;

		case 3:

			break;

		default:
			throw new IllegalArgumentException("Unexpected value: " + op);
		}

	}

}
