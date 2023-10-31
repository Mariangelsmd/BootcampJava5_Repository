package ejercicio9Printf;

import java.util.ArrayList;

public class Main {
	public static void main(String[] args) {
		ArrayList<Alumno> alumnosList = new ArrayList<Alumno>();
		// Añadiendo peliculas al arrayList
		alumnosList.add(new Alumno("María", "Molina", "2º", "2023"));
		alumnosList.add(new Alumno("Sergi", "Gavín", "2º", "2023"));
		alumnosList.add(new Alumno("Carlos", "Terreno", "2º", "2023"));

		System.out.printf("%20s%20s%20s%20s%n", "Nombre ", "Apellidos", "Curso", "Año");
		System.out.println("\t-------------------------------------------------------------------------------");
		for (Alumno alumno : alumnosList) {
			System.out.printf("%20s%20s%20s%20s%n", alumno.nombre, alumno.apellidos, alumno.curso, alumno.anyo);
		}
		System.out.println();

		System.out.printf("%-20s%-20s%-20s%-20s%n", "Nombre ", "Apellidos", "Curso", "Año");
		System.out.println("-------------------------------------------------------------------");
		for (Alumno alumno : alumnosList) {
			System.out.printf("%-20s%-20s%-20s%-20s%n", alumno.nombre, alumno.apellidos, alumno.curso, alumno.anyo);
		}
	}

	public static class Alumno {
		String nombre = "";
		String apellidos = "";
		String curso = "";
		String anyo = "";
		
		public Alumno(String nombre, String apellidos, String curso, String anyo) {
			super();
			this.nombre = nombre;
			this.apellidos = apellidos;
			this.curso = curso;
			this.anyo = anyo;
		}

		public String getNombre() {
			return nombre;
		}

		public void setNombre(String nombre) {
			this.nombre = nombre;
		}

		public String getApellidos() {
			return apellidos;
		}

		public void setApellidos(String apellidos) {
			this.apellidos = apellidos;
		}

		public String getCurso() {
			return curso;
		}

		public void setCurso(String curso) {
			this.curso = curso;
		}

		public String getAnyo() {
			return anyo;
		}

		public void setAnyo(String anyo) {
			this.anyo = anyo;
		}

		
	}
}