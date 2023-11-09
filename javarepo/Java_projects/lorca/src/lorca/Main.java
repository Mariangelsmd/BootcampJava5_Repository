package lorca;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		String palabra = "";
		boolean comprobacion = false;
		do {
			try {
				System.out.println("Introduce la frase secreta: ");
				palabra = scanner.nextLine();
				String[] palabrStrings = palabra.split(" ");
				if (palabrStrings[0].equalsIgnoreCase(args[0])) {

					if (palabrStrings[1].equalsIgnoreCase(args[1])) {
						comprobacion = false;
						System.out.println();
						Lorca.poema();
					} else {
						comprobacion = true;
						System.out.println();
						NotAutorized.nopermitido();
					}
				} else {
					comprobacion = true;
					System.out.println();
					NotAutorized.nopermitido();
				}
			} catch (ArrayIndexOutOfBoundsException e) {
				System.out.println("\n¡Son dos palabras!\n");
				comprobacion = true;
			}

		} while (comprobacion);

	}

}
