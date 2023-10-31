package ejercicio8Printf;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		System.out.printf("%1$s\t\t%2$s\t%3$s%n","NOMBRE", "APELLIDO1","APELLIDO2");
		System.out.printf("%1$s     %2$s %3$s%n","NOMBRE","apellido1","apellido2");
		System.out.printf("%3$s %2$s %1$s%n","Nombre","apellido1","apellido2");
		System.out.printf("%10s%n",22);
		System.out.printf("%010d%n",22);
		System.out.printf("%010.2f%n",17.1829327);
		System.out.printf("%s\b%s","Hola ","Mun\bdo"); //Puedo usar \b en medio del String
		
	}
}
