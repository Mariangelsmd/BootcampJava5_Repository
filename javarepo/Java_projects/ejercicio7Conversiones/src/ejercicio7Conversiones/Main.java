package ejercicio7Conversiones;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		double numero = 44.52454;
		float numero2 = (float) numero;
		long numero3 = (long) numero2;
		int numero4 = (int) numero3;
		short numero5 = (short) numero4;
		byte numero6 = (byte) numero5;
		System.out.println(numero6);

		numero6 = 6;
		numero5 = (short) numero6;
		numero4 = (int) numero5;
		numero3 = (long) numero4;
		numero2 = (float) numero3;
		numero = (double) numero2;
		System.out.println(numero);

		byte num100 = 100;
		// num100 *= 2;

		// Como byte se desborda a -56 es necesario el uso de una variable de mayor tamaño
		// para realizar esta operación

		short num101 = (short) num100;
		num101 *= 2;

		System.out.println(num100 + "," + num101);
	}

}
