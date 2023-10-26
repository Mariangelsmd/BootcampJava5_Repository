package ejercicio_colores;

import java.lang.module.FindException;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// EJERCICIO 1 ***************************************************************************************
		final String BOLD = "\033[1m";
		final String FAINT = "\033[2m";
		final String ITALIC = "\033[3m";
		final String UNDERLINED = "\033[4m";
		final String INVERSE = "\033[7m";
		final String STRIKETHROUGH = "\033[9m";
		int numColor = 0; // Con este numero hacemos que estas constantes nos sean universales
		final String FONTC = "\\033[38;5;"+numColor+"m";
		final String BGC = "\\033[48;5;"+numColor+"m";
		
		// EJERCICIO 2 **************************************************************************************
		final String RED = "\033[48;5;1m";
		final String YELLOW = "\033[48;5;226m";
		final String BLUE = "\033[48;5;4m";
		final String BLACK = "\033[48;5;232m";
		final String WHITE = "\033[48;5;15m";
		
		final String FIN = "\033[0m"; 
		
		System.out.println(RED+"                               "+FIN);
	}

}
