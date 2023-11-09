package enums;

public class Main {

	public static void main(String[] args) {
		
		Developer dev1 = new Developer("Sergi", "Gavín", 25, "44854966R", null);
		dev1.setRolTecnologico(Profesiones.FULLSTACKDEVELOPER.toString());

		Developer dev2 = new Developer("Carlos", "Terreno", 28, "44854966R", null);
		dev2.setRolTecnologico(Profesiones.BACKENDDEVELOPER.toString());
		
		Developer dev3 = new Developer("María Ángeles", "Molina", 28, "44854966R", null);
		dev3.setRolTecnologico(Profesiones.FRONTENDDEVELOPER.toString());
		
		Developer[] developers = { dev1, dev2, dev3 };
		
		// FOR EACH
		for (Developer dev : developers) {
			String rol = dev.getRolTecnologico();

			// Verificar el rol y mostrar mensaje
			if (rol.equals(Profesiones.FULLSTACKDEVELOPER.toString())) {
				System.out.println("Viva el Back");
			} else if (rol.equals(Profesiones.BACKENDDEVELOPER.toString())) {
				System.out.println("Viva el Back");
			} else if (rol.equals(Profesiones.FRONTENDDEVELOPER.toString())) {
				System.out.println("JS es una 💩 es mejor utilizar TypeScript");
			} 
		}
	}

}
