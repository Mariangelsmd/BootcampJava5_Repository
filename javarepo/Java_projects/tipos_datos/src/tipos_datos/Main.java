package tipos_datos;

import java.security.PublicKey;

public class Main {

	public static int incrementar(int num) {
		return num++;
	}

	public static int decrementar(int num) {
		num--;
		num--;
		return num;
	}

	public static void main(String[] args) {
		// EJERCICIO 1 ******************************
		// Lógicos
		boolean booleano = true;

		// Carácter
		char caracter = 'M';

		// Numéricos enteros
		byte numeroPeque = 127;
		short numeroMediano = 32767;
		int numeroGrande = 2147483647;
		long numeroMuyGrande = 9223372036854775l; // La letra es para indicar que es long

		// Numéricos reales
		float decimalPeque = 3.4028235f;
		double decimalGrande = 1.7976931348623157;

		// Constantes

		// EJERCICIO 2 ******************************
		// Desbordamiento circular
		numeroPeque = (byte) 132;
		numeroPeque = (byte) (Byte.MAX_VALUE + 5);
		numeroMediano = (short) 32792;
		numeroMediano = (short) (Short.MAX_VALUE + 25);
		numeroGrande = Integer.MAX_VALUE + 10000; // No hace falta casteo porque por defecto los numeros son integer
		numeroGrande = (int) 2147493647L;
		numeroMuyGrande = Long.MAX_VALUE + 20000; // No hace falta casteo porque esla "caja" más grande
		numeroMuyGrande = (long) 9223372036874775.0;

		// EJERCICIO 3 ******************************
		final boolean SIONO = true;
		final char INICIAL = 'M';
		final byte NUMBYTE = 127;
		final short NUMSHORT = 32767;
		final int NUMINT = 2147483647;
		final long NUMLONG = 9223372036854775l;
		final float NUMFLOAT = 3.4028235f;
		final double NUMDOUBLE = 1.7976931348623157;

		// EJERCICIO 4 ******************************
		// Concatenar
		String nombre = "María";
		String apellido = "Molina";
		String calle = "Gran de la Sagrera";
		String municipio = "Barcelona";
		String codPostal = "08027";
		char sex = 'f';
		String correo = "mariangelesmolinadiaz@gmail.com";

		System.out.println("\n Nombre: " + nombre + "\t Apellido: " + apellido + "\n Calle: " + calle + "\t Municipio: "
				+ municipio + "\t Código Postal: " + codPostal + "\n Correo electrónico: " + correo);
		System.out.println("_______________________________________________________________");

		// EJERCICIO 5 *******************************
		// Operadores aritméticos

		int ope1 = 5 - 10;
		int ope2 = 55 + 45;
		int ope3 = -3;
		int ope4 = 5 * 5;
		float ope5 = (int) 25 / 7;
		float ope6 = 25 / 7;
		float ope7 = 25 % 4;

		// EJERCICIO 6 *******************************
		// Operadores aritméticos icrementales
		int numero = 0;

		incrementar(numero);
		decrementar(numero);

		// EJERCICIO 6
		// Operadores aritméticos combinados

		int numero2 = 25;
		numero2 += 5;
		numero2 -= 15;
		numero2 *= 2;
		numero2 /= 2;
		numero2 %= 3;
		System.out.println(numero2);
		System.out.println("_______________________________________________________________");

		// EJERCICIO 7
		// Operadores de relación
		int num1 = 1;
		int num2 = 2;
		int num3 = 3;
		int num4 = 2;

		System.out.println(num4 == num2);
		System.out.println(num2 == num3);
		System.out.println(num1 != num3);
		System.out.println(num2 != num2);
		System.out.println(num4 < num3);
		System.out.println(num3 < num1);
		System.out.println(num1 > num3);
		System.out.println(num2 > num4);
		System.out.println(num2 > num3);
		System.out.println(num2 <= num3);
		System.out.println(num2 <= num4);
		System.out.println(num2 <= num1);
		System.out.println(num1 >= num2);
		System.out.println(num2 >= num1);
		System.out.println(num1 >= num2);
		System.out.println(num2 >= num2);
		System.out.println("_______________________________________________________________");

		// EJERCICIO 8
		// Operadores lógicos booleanos
		boolean bool1 = true;
		boolean bool2 = false;
		boolean bool3 = false;
		boolean bool4= true;
		
	}

}
