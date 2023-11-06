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

	public static void tablero(String[] l1, String[] l2, String[] l3, String[] l4) {
		System.out.println("\n___ TABLERO ___\n");
		imprimirLinea(l1);
		imprimirLinea(l2);
		imprimirLinea(l3);
		imprimirLinea(l4);
		System.out.println("\n"); // Salto de línea
	}

	public static int[] recogerCoordenadas() {
		Scanner sc = new Scanner(System.in);
		int[] coordenadas = new int[2];
		System.out.print("Introduce la coordenada x: ");
		coordenadas[0] = sc.nextInt();
		System.out.print("Introduce la coordenada y: ");
		coordenadas[1] = sc.nextInt();
		return coordenadas;
	}

	public static String[] insertarCoordenadas(int[] coord, String simbol, String[] linea) {
		if (coord[1] == 1) {
			if (linea[3].equals(" ")) {
				linea[3] = simbol;
			} else {
				System.out.println("Estas posiciones ya estan señaladas.");
			}
		} else if (coord[1] == 2) {
			if (linea[5].equals(" ")) {
				linea[5] = simbol;
			} else {
				System.out.println("Estas posiciones ya estan señaladas.");
			}
		} else if (coord[1] == 3) {
			if (linea[7].equals(" ")) {
				linea[7] = simbol;
			} else {
				System.out.println("Estas posiciones ya estan señaladas.");
			}
		} else {
			System.out.println("Estas coordenadas no son válidas");
		}

		return linea;
	}

	public static void imprimirCoordenadas(int[] coord, String simbol, String[] l1, String[] l2, String[] l3,
			String[] l4) {
		int key = coord[0];
		switch (key) {
		case 1:
			// Llamo a la funcion para que inserte el simbolo en la columna que toca
			l2 = insertarCoordenadas(coord, simbol, l2);
			break;
		case 2:
			l3 = insertarCoordenadas(coord, simbol, l3);
			break;
		case 3:
			l4 = insertarCoordenadas(coord, simbol, l4);
			break;
		default:
			throw new IllegalArgumentException("Estas coordenadas no son válidas.");
		}
		tablero(l1, l2, l3, l4);
	}
	
	public static boolean comprobacion (String[] l1, String[] l2, String[] l3,
			String[] l4) {
		boolean lleno = false;
		boolean ganador = false;
		if (l1[3] != " " && l1[5] != " " && l1[7] != " "
				&& l2[3] != " " && l2[5] != " " && l2[7] != " "
				&& l3[3] != " " && l3[5] != " " && l3[7] != " ") {
			// Está el tablero lleno
			lleno = true;
		}
		else if (ganador) {
			// TODO implementar casos de éxito
		}
			
		
		
		
		
		
		return true;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int op = 0;
		Scanner sc = new Scanner(System.in);
		int[] coord = new int[2];
		String[] lineax1 = { "| ", " ", " | ", "1", " | ", "2", " | ", "3", " | " };
		String[] lineax2 = { "| ", "1", " | ", " ", " | ", " ", " | ", " ", " | " };
		String[] lineax3 = { "| ", "2", " | ", " ", " | ", " ", " | ", " ", " | " };
		String[] lineax4 = { "| ", "3", " | ", " ", " | ", " ", " | ", " ", " | " };

		System.out.println("******************");
		System.out.println("** TRES EN RAYA **");
		System.out.println("******************\n");
		System.out.println(
				"¿Cómo desea jugar?\n1. Humano contra humano\n2. Humano contra CPU (El CPU juega como 0)\n3. CPU contra CPU");
		System.out.print("\nSeleccione la opción deseada introduciendo el número: ");
		op = sc.nextInt();

		switch (op) {
		case 1:
			tablero(lineax1, lineax2, lineax3, lineax4);
			System.out.println("x __ JUGADOR 1 __ x");
			coord = recogerCoordenadas();
			imprimirCoordenadas(coord, "x", lineax1, lineax2, lineax3, lineax4);
			System.out.println("o __ JUGADOR 2 __ o");
			coord = recogerCoordenadas();
			imprimirCoordenadas(coord, "o", lineax1, lineax2, lineax3, lineax4);
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
