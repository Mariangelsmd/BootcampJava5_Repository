package main;

import java.util.Random;
import java.util.Scanner;

import javax.lang.model.element.Element;

public class Main {

	// Imprimir linea en pantalla
	public static void imprimirLinea(String[] linea) {
		for (int i = 0; i < linea.length; i++) {
			System.out.print(linea[i]);
		}
		System.out.println("\n"); // Salto de línea
	}

	// Imprimir tablero completo
	public static void tablero(String[] l1, String[] l2, String[] l3, String[] l4) {
		System.out.println("\n_____ TABLERO _____\n");
		imprimirLinea(l1);
		imprimirLinea(l2);
		imprimirLinea(l3);
		imprimirLinea(l4);
		System.out.println("\n"); // Salto de línea
	}

	// Recoger las coordenadas del usuario
	public static int[] recogerCoordenadas() {
		Scanner sc = new Scanner(System.in);
		int[] coordenadas = new int[2];
		System.out.print("Introduce la coordenada x: ");
		coordenadas[0] = sc.nextInt();
		System.out.print("Introduce la coordenada y: ");
		coordenadas[1] = sc.nextInt();
		return coordenadas;
	}

	// Insertar las coordenadas en el array
	public static String[] insertarCoordenadas(int[] coord, String simbol, String[] linea) {
		if (coord[1] == 1) {
			if (linea[3].equals(" ")) {
				linea[3] = simbol;
			}
		} else if (coord[1] == 2) {
			if (linea[5].equals(" ")) {
				linea[5] = simbol;
			}
		} else if (coord[1] == 3) {
			if (linea[7].equals(" ")) {
				linea[7] = simbol;
			}
		}

		return linea;
	}

	// Existen las coordenadas?

	public static boolean existen(int[] coord, String[] linea) {
		boolean existentes = false;
		if (coord[1] == 1) {
			if (!linea[3].equals(" ")) {
				existentes = true;
			}
		} else if (coord[1] == 2) {
			if (!linea[5].equals(" ")) {
				existentes = true;
			}
		} else if (coord[1] == 3) {
			if (!linea[7].equals(" ")) {
				existentes = true;
			}
		} else {
			System.out.println("Estas coordenadas no son válidas.\n");
		}

		return existentes;
	}

	public static boolean comprobarCoordenadas(int[] coord, String[] l2, String[] l3, String[] l4) {
		boolean existen = false;
		int key = coord[0];
		try {

			switch (key) {
			case 1:
				existen = existen(coord, l2);
				break;
			case 2:
				existen = existen(coord, l3);
				break;
			case 3:
				existen = existen(coord, l4);
				break;
			default:
				existen = true;
				break;
			}
		} catch (Exception e) {
		}

		return existen;
	}

	// Imprimir las coordenadas nuevas en el tablero
	public static void imprimirCoordenadas(int[] coord, String simbol, String[] l1, String[] l2, String[] l3,
			String[] l4) {
		try {
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
				break;
			}
		} catch (Exception e) {

		}
		tablero(l1, l2, l3, l4);
	}

	// Comprobar si el tablero está lleno o hay 3 en raya
	public static boolean comprobacion(String[] l1, String[] l2, String[] l3, String[] l4, String jugadorySimbolo) {
		boolean lleno = false;
		boolean ganador = false;
		boolean fin = false;

		// Verificar ganador en las filas horizontales
		if (l2[3].equals(l3[3]) && l3[3].equals(l4[3]) && !l2[3].equals(" ")) {
			ganador = true;
		}
		if (l2[5].equals(l3[5]) && l3[5].equals(l4[5]) && !l2[5].equals(" ")) {
			ganador = true;
		}
		if (l2[7].equals(l3[7]) && l3[7].equals(l4[7]) && !l2[7].equals(" ")) {
			ganador = true;
		}

		// Verificar ganador en las columnas verticales
		if (l2[3].equals(l2[5]) && l2[5].equals(l2[7]) && !l2[3].equals(" ")) {
			ganador = true;
		}
		if (l3[3].equals(l3[5]) && l3[5].equals(l3[7]) && !l3[3].equals(" ")) {
			ganador = true;
		}
		if (l4[3].equals(l4[5]) && l4[5].equals(l4[7]) && !l4[3].equals(" ")) {
			ganador = true;
		}

		// Verificar ganador en las diagonales
		if (l2[3].equals(l3[5]) && l3[5].equals(l4[7]) && !l2[3].equals(" ")) {
			ganador = true;
		}
		if (l2[7].equals(l3[5]) && l3[5].equals(l4[3]) && !l2[7].equals(" ")) {
			ganador = true;
		}

		// Verificar si el tablero está lleno
		if (!l2[3].equals(" ") && !l2[5].equals(" ") && !l2[7].equals(" ") && !l3[3].equals(" ") && !l3[5].equals(" ")
				&& !l3[7].equals(" ") && !l4[3].equals(" ") && !l4[5].equals(" ") && !l4[7].equals(" ")) {
			// Está el tablero lleno
			lleno = true;
		}

		if (ganador) {
			System.out.println("El jugador " + jugadorySimbolo + " ha ganado la partida.");
			fin = true;
		} else if (lleno) {
			System.out.println("El tablero está lleno por lo que hay un empate.");
			fin = true;
		}

		return fin;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int op = 0;
		Scanner sc = new Scanner(System.in);
		int[] coord = new int[2];
		boolean fin = false;
		boolean existencia = false;
		Random random = new Random();
		String[] lineax1 = { "|   ", " ", " | ", "y 1", " | ", "y 2", " | ", "y 3", " | " };
		String[] lineax2 = { "| ", "x 1", " |  ", " ", "  |  ", " ", "  |  ", " ", "  | " };
		String[] lineax3 = { "| ", "x 2", " |  ", " ", "  |  ", " ", "  |  ", " ", "  | " };
		String[] lineax4 = { "| ", "x 3", " |  ", " ", "  |  ", " ", "  |  ", " ", "  | " };

		System.out.println("******************");
		System.out.println("** TRES EN RAYA **");
		System.out.println("******************\n");
		System.out.println(
				"¿Cómo desea jugar?\n1. Humano contra humano\n2. Humano contra CPU (El CPU juega como 0)\n3. CPU contra CPU");
		System.out.print("\nSeleccione la opción deseada introduciendo el número: ");
		op = sc.nextInt();
		sc.nextLine();

		switch (op) {
		case 1:
			int i = 1;
			tablero(lineax1, lineax2, lineax3, lineax4);
			do {
				System.out.println("X __ JUGADOR 1 __ X");
				do {
					coord = recogerCoordenadas();
					existencia = comprobarCoordenadas(coord, lineax2, lineax3, lineax4);
					if (existencia) {
						System.out.println("Estas posiciones ya estan señaladas o no son válidas.\n");
					} else if (!existencia) {
						imprimirCoordenadas(coord, "X", lineax1, lineax2, lineax3, lineax4);
					}
				} while (existencia);

				if (i > 2) {
					fin = comprobacion(lineax1, lineax2, lineax3, lineax4, "Jugador 1 con \"X\"");
					if (fin) {
						break;
					}
				}
				System.out.println("O __ JUGADOR 2 __ O");
				do {
					coord = recogerCoordenadas();
					existencia = comprobarCoordenadas(coord, lineax2, lineax3, lineax4);
					if (existencia) {
						System.out.println("Estas posiciones ya estan señaladas o no son válidas.\n");
					} else if (!existencia) {
						imprimirCoordenadas(coord, "O", lineax1, lineax2, lineax3, lineax4);
					}
				} while (existencia);
				if (i > 2) {
					fin = comprobacion(lineax1, lineax2, lineax3, lineax4, "Jugador 2 con \"O\"");
					if (fin) {
						break;
					}
				}
				i++;
			} while (fin == false);
			break;

		case 2:
			i = 1;
			tablero(lineax1, lineax2, lineax3, lineax4);
			do {
				System.out.println("X __ JUGADOR 1 __ X");
				do {
					coord = recogerCoordenadas();
					existencia = comprobarCoordenadas(coord, lineax2, lineax3, lineax4);
					if (existencia) {
						System.out.println("Estas posiciones ya estan señaladas o no son válidas.\n");
					} else if (!existencia) {
						imprimirCoordenadas(coord, "X", lineax1, lineax2, lineax3, lineax4);
					}
				} while (existencia);
				if (i > 2) {
					fin = comprobacion(lineax1, lineax2, lineax3, lineax4, "Jugador 1 con \"X\"");
					if (fin) {
						break;
					}
				}
				System.out.println("O __ JUGADOR 2 __ O");
				do {
					coord[0] = random.nextInt(3) + 1;
					coord[1] = random.nextInt(3) + 1;
					existencia = comprobarCoordenadas(coord, lineax2, lineax3, lineax4);
					if (!existencia) {
						imprimirCoordenadas(coord, "O", lineax1, lineax2, lineax3, lineax4);
					}
				} while (existencia);
				if (i > 2) {
					fin = comprobacion(lineax1, lineax2, lineax3, lineax4, "Jugador 2 con \"O\"");
					if (fin) {
						break;
					}
				}
				i++;
			} while (fin == false);
			break;

		case 3:

			i = 1;
			tablero(lineax1, lineax2, lineax3, lineax4);
			do {
				sc.nextLine();
				System.out.println("X __ JUGADOR 1 __ X");
				do {
					coord[0] = random.nextInt(3) + 1;
					coord[1] = random.nextInt(3) + 1;
					existencia = comprobarCoordenadas(coord, lineax2, lineax3, lineax4);
					if (!existencia) {
						imprimirCoordenadas(coord, "X", lineax1, lineax2, lineax3, lineax4);
					}
				} while (existencia);
				if (i > 2) {
					fin = comprobacion(lineax1, lineax2, lineax3, lineax4, "Jugador 1 con \"X\"");
					if (fin) {
						break;
					}
				}
				sc.nextLine();
				System.out.println("O __ JUGADOR 2 __ O");
				do {
					coord[0] = random.nextInt(3) + 1;
					coord[1] = random.nextInt(3) + 1;
					existencia = comprobarCoordenadas(coord, lineax2, lineax3, lineax4);
					if (!existencia) {
						imprimirCoordenadas(coord, "O", lineax1, lineax2, lineax3, lineax4);
					}
				} while (existencia);
				if (i > 2) {
					fin = comprobacion(lineax1, lineax2, lineax3, lineax4, "Jugador 2 con \"O\"");
					if (fin) {
						break;
					}
				}
				i++;
			} while (fin == false);
			break;

		default:
			throw new IllegalArgumentException("Unexpected value: " + op);
		}

	}

}
