package try_catch;

import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.InputMismatchException;
import java.util.Locale;
import java.util.Scanner;

import javax.swing.plaf.basic.BasicTreeUI.TreeCancelEditingAction;

public class Main {

	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub

		int edad = 0;
		String nombre = "";
		float altura = 0.0f;
		boolean comp = false;
		Scanner scanner = new Scanner(System.in);
		;

//		do {
//			try {
//				System.out.println("Introduce tu nombre: ");
//				nombre = scanner.next();
//				System.out.println("Introduce tu edad: ");
//				edad = scanner.nextInt();
//				System.out.println("Introduce tu altura: ");
//				altura = scanner.nextFloat();
//				comp = false;
//
//			} catch (Exception e) {
//				System.err.println("El formato de los datos introducidos no es correcto. Vuelve a intentarlo");
//				comp = true;
//				Thread.sleep(1000);
//				nombre = scanner.next();
//			}
//		} while (comp);

//		int num1; int num2; int resultado;
//		System.out.println(
//				"Vamos a hacer una división. Introduce los números que se solicitan.\n");
//		do {
//			try {
//				System.out.println("Dividir el número...\n(Introduce el número)");
//				num1 = scanner.nextInt();
//				System.out.println("Entre...\n(Introduce el segundo número)");
//				num2 = scanner.nextInt();
//				resultado = num1 / num2;
//				System.out.println("El resultado es " + resultado);
//				comp = false;
//			} catch (ArithmeticException e) {
//				System.err.println("No se puede dividir entre 0.");
//				comp = true;
//			} catch (InputMismatchException e) {
//				System.err.println("El tipo de dato introducido no es correcto.");
//				scanner.next();
//				comp = true;
//			} catch (Exception e) {
//				System.err.println("Ha surgido un error, vuelve a intentarlo. Error: "+ e);
//				scanner.next();
//				comp = true;
//			}
//		} while (comp);

		
		try {
			String numeroString;
			double ndouble = 0;
			// Recojo el número
			System.out.print("Introduce un número decimal: ");
			numeroString = scanner.next();
			// Si lleva coma...
			if (numeroString.contains(",")) {
				// Creo scanner del string
				Scanner doubleComa = new Scanner(numeroString);
				doubleComa.useLocale(Locale.ITALIAN);
				ndouble = doubleComa.nextDouble();
				System.out.println("El número decimal es: " + ndouble);
			} 
			// Lo mismo pero con el punto
			else if (numeroString.contains(".")) {
				Scanner puntoComa = new Scanner(numeroString);
				puntoComa.useLocale(Locale.ENGLISH);
				ndouble = puntoComa.nextDouble();
				System.out.println("El número decimal es: " + ndouble);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		

	}

}
