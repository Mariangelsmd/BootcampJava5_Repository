package ejercicio5;

import java.util.Random;
import java.util.Scanner;

public class Main {

	public static void javaOrNull(String opcion) {
		if (opcion.equalsIgnoreCase("java")) {
			System.out.println("Java");
		} else if (opcion.equalsIgnoreCase("Null")) {
			System.out.println("Null");
		}
	}

	public static String login(String user, String pw) {
		String acceso = "";
		if (user.contentEquals("admin") && pw.equals("1234")) {
			acceso = "Login true";
		} else {
			acceso = "Login false";
		}
		return acceso;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// EJERCICIO 1
		// *************************************************************************************************************************************
		for (int i = 1; i <= 3; i++) {
			System.out.println(i);
			if (i == 3) {
				break;
			}
		}
		System.out.println("El bucle ha dado 3 vueltas");

		for (int i = 1; i <= 6; i++) {
			if (i == 5) {
				continue;
			}
			System.out.println(i);
		}
		System.out.println("El bucle ha dado 6 vueltas y no ha impreso el 5");

		// EJERCICIO 2
		// *************************************************************************************************************************************
		javaOrNull("Java");
		javaOrNull("Null");

		// EJERCICIO 3
		// *************************************************************************************************************************************
		String user="";
		String pw="";
		Scanner sc = new Scanner(System.in);
		System.out.println("Introduce el usuario: ");
		user = sc.next();
		System.out.println("Introduce la contraseña: ");
		pw = sc.next();
		System.out.println(login(user, pw));
		
		// EJERCICIO 4 ***********************************************************************************************************************
		Random random = new Random();
		int numero = random.nextInt(100);
		System.out.println(numero);
		
		if (numero%2 == 0) {
			System.out.println(numero%2 == 0);
		}
		else {
			System.out.println(numero%2 == 0);
		}
		
		
	}

}
