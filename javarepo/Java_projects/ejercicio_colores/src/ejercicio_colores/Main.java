package ejercicio_colores;

import java.awt.FocusTraversalPolicy;
import java.lang.module.FindException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Random;
import java.util.Scanner;

public class Main {

	public static void franjaH(int altura, int longitud, int franjas, ArrayList<String> colores, String inicio,
			String fin) {
		if (altura % franjas != 0) {
			altura -= altura % franjas;
		}
		int alturafranja = altura / franjas;
		for (int i = 0; i < franjas; i++) {
			for (int j = 0; j < alturafranja; j++) {
				for (int k = 0; k < longitud; k++) {
					System.out.print(inicio + colores.get(i) + " " + fin);
				}
				System.out.println();
			}
		}
	}

	public static void franjaV(int altura, int longitud, int franjas, ArrayList<String> colores, String inicio,
			String fin) {
		if (longitud % franjas != 0) {
			longitud -= longitud % franjas;
		}
		int longfranja = longitud / franjas;
		for (int i = 0; i < altura; i++) {
			for (int j = 0; j < franjas; j++) {
				for (int k = 0; k < longfranja; k++) {
					System.out.print(inicio + colores.get(j) + " " + fin);
				}
			}
			System.out.println();
		}
	}

	public static void bandera(int franjas, int altura, int longitud, ArrayList<String> colores, String inicio,
			String fin, String voh) {
		if (voh.equalsIgnoreCase("horizontales")) {
			franjaH(altura, longitud, franjas, colores, inicio, fin);
		} else if (voh.equalsIgnoreCase("verticales")) {
			franjaV(altura, longitud, franjas, colores, inicio, fin);
		}

	}

	public static String editorTexto(String texto, String color, String efecto, String inicio, String fin) {
		String formato = inicio + color + inicio + efecto;
		String textoFormateado = formato + texto + fin;
		return textoFormateado;
	}

	public static String formateoTexto(String texto, String fin) {
		String textoFormateado = texto + fin;
		return textoFormateado;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner scanner = new Scanner(System.in);

		// EJERCICIO 1
		// ***************************************************************************************
		final String BOLD = "1m";
		final String FAINT = "2m";
		final String ITALIC = "3m";
		final String UNDERLINED = "4m";
		final String INVERSE = "7m";
		final String STRIKETHROUGH = "9m";
		int numColor = 0; // Con este numero hacemos que estas constantes nos sean universales
		final String FONTC = "38;5m";
		final String BGC = "48;5m";

		// EJERCICIO 2
		// **************************************************************************************
		// El efecto de bg ya está incluido en estos colores
		final String RED = "48;5;1m";
		final String YELLOW = "48;5;226m";
		final String BLUE = "48;5;4m";
		final String BLACK = "48;5;232m";
		final String WHITE = "48;5;15m";

		final String FIN = "\033[0m";
		final String INICIO = "\033[";

//		System.out.println(RED + "                               " + FIN);

		// FABRICA DE BANDERAS

		int altura = 9;
		int longitud = 30;
		int franjas = 0;
		int color = 0;
		String grecia = "";
		String voh = "";
		ArrayList<String> colores = new ArrayList<String>();

		System.out.println("¿La bandera que quieres hacer es la de Grecia?");
		System.out.println("Escribe \"S\" para sí y \"N\" para no:");
		grecia = scanner.nextLine();

		System.out.println("¿Qué longitud debe teber la bandera? (La predeterminada es 30)");
		longitud = scanner.nextInt();
		System.out.println("¿Qué altura debe tener la bandera? (La predeterminada es 9)");
		altura = scanner.nextInt();
		scanner.nextLine();

		if (grecia.equalsIgnoreCase("s")) {

			for (int i = 1; i <= altura; i++) {

				// NUMEROS PARES

				if (i % 2 == 0) {
					// EXCEPCIONES CRUZ 2 Y 4
					if (i == 2 || i == 4) {
						for (int j = 0; j < 10; j++) {
							if (j == 4 || j == 5) {
								System.out.print(INICIO + WHITE + " " + FIN);
							} else {
								System.out.print(INICIO + BLUE + " " + FIN);
							}
						}

						for (int j = 0; j < longitud - 10; j++) {
							System.out.print(INICIO + WHITE + " " + FIN);
						}
						// RESTO DE NUMEROS PARES
					} else {
						for (int j = 0; j < longitud; j++) {
							System.out.print(INICIO + WHITE + " " + FIN);
						}
					}

					System.out.println();

					// NUMEROS IMPARES
				} else {
					// EXCEPCIONES CRUZ 1 Y 5
					if (i == 1 || i == 5) {
						for (int j = 0; j < 10; j++) {
							if (j == 4 || j == 5) {
								System.out.print(INICIO + WHITE + " " + FIN);
							} else {
								System.out.print(INICIO + BLUE + " " + FIN);
							}
						}
						for (int j = 0; j < longitud - 10; j++) {
							System.out.print(INICIO + BLUE + " " + FIN);
						}
					}
					// EXCEPCION LINEA 3
					else if (i == 3) {
						for (int j = 0; j < 10; j++) {
							System.out.print(INICIO + WHITE + " " + FIN);
						}
						for (int j = 0; j < longitud - 10; j++) {
							System.out.print(INICIO + BLUE + " " + FIN);
						}
					} else {
						for (int j = 0; j < longitud; j++) {
							System.out.print(INICIO + BLUE + " " + FIN);
						}
					}
					System.out.println();
				}
			}

		} else {

			System.out.println("¿Su bandera tiene franjas verticales u horizontales?");
			voh = scanner.nextLine();

			System.out.println("¿Cuántas franjas de color deseas? (máx altura indicada)");
			franjas = scanner.nextInt();

			System.out.println("La lista de colores a elegir es:\n1. Rojo\n2. Amarillo\n3. Azul\n4. Negro\n5. Blanco");

			for (int i = 0; i < franjas; i++) {
				System.out.println("¿Cuál es el múmero de color de la franja " + (i + 1) + "?");
				color = scanner.nextInt();
				switch (color) {
				case 1: {
					colores.add(RED);
					break;
				}
				case 2: {
					colores.add(YELLOW);
					break;
				}
				case 3: {
					colores.add(BLUE);
					break;
				}
				case 4: {
					colores.add(BLACK);
					break;
				}
				case 5: {
					colores.add(WHITE);
					break;
				}
				default:
					throw new IllegalArgumentException("Valor incorrecto");
				}
			}

			bandera(franjas, altura, longitud, colores, INICIO, FIN, voh);
		}

		// EJERCICIO 3
		// ********************************************************************************************
		String textoString = "Hola";
		String textoFormatString = editorTexto(textoString, RED, UNDERLINED, INICIO, FIN);
		System.out.println("**************************************************");
		System.out.println(textoFormatString);
		textoFormatString = formateoTexto(textoFormatString, FIN);
		System.out.println(textoFormatString + " Este texto ya no tiene formato");

		// EJERCICIO 4
		textoString = "Texto arcoiris";
		Random random = new Random();
		int efecto = random.nextInt(9) + 1;
		int colorf = random.nextInt(16);
		int colorbg = random.nextInt(16);
		String textoBucle = "\033[" + "38;5;" + colorf + "m" + "\033[" + "48;5;" + colorbg + "m" + "\033[" + efecto
				+ "m" + textoString + "\033[0m";
		System.out.println(textoBucle);
	}

}
