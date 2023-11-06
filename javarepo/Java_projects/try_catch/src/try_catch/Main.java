package try_catch;

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

		do {
			try {
				System.out.println("Introduce tu nombre: ");
				nombre = scanner.next();
				System.out.println("Introduce tu edad: ");
				edad = scanner.nextInt();
				System.out.println("Introduce tu altura: ");
				altura = scanner.nextFloat();
				comp = false;

			} catch (Exception e) {
				System.err.println("El formato de los datos introducidos no es correcto. Vuelve a intentarlo");
				comp = true;
				Thread.sleep(2000);
				scanner.next();
			}
		} while (comp);

	}

}
