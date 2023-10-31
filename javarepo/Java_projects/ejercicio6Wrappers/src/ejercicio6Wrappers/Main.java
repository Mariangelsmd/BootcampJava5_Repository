package ejercicio6Wrappers;

import java.awt.image.DataBufferByte;
import java.net.SecureCacheResponse;
import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// EJERCICIO RESUMEN TIPOS DE DATOS

		// Byte
		System.out.println("El tipo de dato es: byte");
		System.out.println("Está formado por : 1 Bytes");
		System.out.println("Un byte está formado por: 8 Bits");
		System.out.println("Su rango va del: -128 a 127");
		System.out.println();

		// Short
		System.out.println("El tipo de dato es: byte");
		System.out.println("Está formado por : 2 Bytes");
		System.out.println("Un byte está formado por: 16 Bits");
		System.out.println("Su rango va del: -32.768 a 32.767");
		System.out.println();

		// Int
		System.out.println("El tipo de dato es: byte");
		System.out.println("Está formado por : 4 Bytes");
		System.out.println("Un byte está formado por: 32 Bits");
		System.out.println("Su rango va del: -2.147.483.648 a 2.147.483.647");
		System.out.println();

		// Long
		System.out.println("El tipo de dato es: byte");
		System.out.println("Está formado por : 8 Bytes");
		System.out.println("Un byte está formado por: 64 Bits");
		System.out.println("Su rango va del: -9.233.372.036.854.775,808 a 9.233.372.036.854.775,807");
		System.out.println();

		// Float
		System.out.println("El tipo de dato es: byte");
		System.out.println("Está formado por : 4 Bytes");
		System.out.println("Un byte está formado por: 32 Bits");
		System.out.println("Su rango va del: 1,4E-45 a 3,4028235E08");
		System.out.println();

		// Double
		System.out.println("El tipo de dato es: byte");
		System.out.println("Está formado por : 8 Bytes");
		System.out.println("Un byte está formado por: 64 Bits");
		System.out.println("Su rango va del: 4,9E-324 a 1,7976931348623157E308");
		System.out.println();

		System.out.println("** RESUMEN **");
		System.out.println("Rango byte desde -128 a 127");
		System.out.println("------------------------------------------------------------------------------");
		System.out.println("Rango short desde -32.768 a 32.767");
		System.out.println("------------------------------------------------------------------------------");
		System.out.println("Rango int desde -2.147.483.648 a 2.147.483.647");
		System.out.println("------------------------------------------------------------------------------");
		System.out.println("Rango long desde -9.233.372.036.854.775,808 a 9.233.372.036.854.775,807");
		System.out.println("------------------------------------------------------------------------------");
		System.out.println("Rango float desde 1,4E-45 a 3,4028235E08");
		System.out.println("------------------------------------------------------------------------------");
		System.out.println("Rango double desde 4,9E-324 a 1,7976931348623157E308");
		System.out.println("------------------------------------------------------------------------------");
		System.out.println();

		// EJERCICIO TIPOS DE DATOS

		Long num1 = 35L;
		Byte num2 = 1;
		Short num3 = 8;
		Integer num4 = 14;

		System.out.println("La clase de num1 es " + num1.getClass().getSimpleName());
		System.out.println("La clase de num2 es " + num2.getClass().getSimpleName());
		System.out.println("La clase de num3 es " + num3.getClass().getSimpleName());
		System.out.println("La clase de num4 es " + num4.getClass().getSimpleName());
		System.out.println();

		// EJERCICIO VAR
		Scanner scanner = new Scanner(System.in);
		
		System.out.println("Introduce un dato: ");
		if (scanner.hasNextInt()) {
			Object content = scanner.nextInt();
			System.out.println("El dato es de tipo " + content.getClass().getSimpleName());
			
		} else if (scanner.hasNextLong()) {
			Object content = scanner.nextLong();
			System.out.println("El dato es de tipo " + content.getClass().getSimpleName());
			
		} else if (scanner.hasNextDouble()) {
			Object content = scanner.nextDouble();
			System.out.println("El dato es de tipo " + content.getClass().getSimpleName());
			
		} else if (scanner.hasNextBoolean()) {
			Object content = scanner.nextBoolean();
			System.out.println("El dato es de tipo " + content.getClass().getSimpleName());
			
		} else {
			Object content = scanner.next();
			System.out.println("El dato es de tipo " + content.getClass().getSimpleName());
		}

	}

}
