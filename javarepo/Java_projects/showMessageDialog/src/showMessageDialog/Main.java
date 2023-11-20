package showMessageDialog;

import javax.swing.JOptionPane;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// JOptionPane.showMessageDialog(null, "Mari", "Java", 2, null);

		// JOptionPane.showMessageDialog(null, "El total es:\n120€ (IVA 10% no
		// incl.)\n132€ (con IVA incl.)", "Ticket", 1, null);

		String nombreString = "";
		boolean bcancelar = false;

		do {
			nombreString = JOptionPane.showInputDialog("¿Cuál es tu nombre?");
			//System.out.println(nombreString);

			if (nombreString == null) {
				System.out.println("Has pulsado cancelar");
				bcancelar = true;
				JOptionPane.showMessageDialog(null, "Has pulsado cancelar", "Aviso", 2, null);

			} else {
				if (nombreString.trim().isEmpty()) {

					JOptionPane.showMessageDialog(null, "El nombre está en blanco", "Aviso", 0, null);
					bcancelar = true;
				} else {
					JOptionPane.showMessageDialog(null, "Has introducido correctamente el nombre", "Información", 1,
							null);
					bcancelar = false;
				}

			}
		} while (bcancelar);

	}

}
