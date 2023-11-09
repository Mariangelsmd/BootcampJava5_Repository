package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class Main {

	public static void main(String[] args) {

		final String URL = "jdbc:mysql://localhost:3306/db_test";
		final String USER = "root";
		final String PW = "admin";
		int op = 0;
		Scanner scanner = new Scanner(System.in);

		try {
			Connection connection = DriverManager.getConnection(URL, USER, PW);
			Statement statement = connection.createStatement();
			System.out.print(
					"¿Qué quiere realizar?\n1. Crear un nuevo usuario\n2. Realizar una consulta de los datos\n3. Actualizar los datos de un usuario\n4. Borrar un usuario\n");
			op = scanner.nextInt();
			switch (op) {
			case 1:
				System.out.print("Introduce el nombre del nuevo usuario: ");
				String nombre = scanner.next();
				System.out.print("\nIntroduce la edad del usuario: ");
				int edad = scanner.nextInt();
				System.out.print("\nIntroduce la nacionalidad del usuario: ");
				String nacionalidad = scanner.next();
				String consultaString = "INSERT INTO usuarios (nombre, edad, nacionalidad) VALUES (\"" + nombre
						+ "\", \"" + edad + "\", \"" + nacionalidad + "\");";
				try {
					int filasAfectadas = statement.executeUpdate(consultaString);
					if (filasAfectadas > 0) {
						System.out.println("Inserción exitosa. Filas afectadas: " + filasAfectadas);
					} else {
						System.out.println("No se realizó ninguna inserción.");
					}
				} catch (SQLException e) {
					System.out.println("Error al ejecutar la consulta de datos: " + e.getMessage());
				}
				break;
			case 2:
				String consultaDatos = "SELECT * FROM usuarios";
				try {
					ResultSet resultSet = statement.executeQuery(consultaDatos);

					// Recorrer los resultados
					while (resultSet.next()) {
						String nombreUsuario = resultSet.getString("nombre");
						int edadUsuario = resultSet.getInt("edad");
						String nacionalidadUsuario = resultSet.getString("nacionalidad");

						// Imprimir los resultados o realizar otras operaciones
						System.out.println("Nombre: " + nombreUsuario + ", Edad: " + edadUsuario + ", Nacionalidad: "
								+ nacionalidadUsuario);
					}
				} catch (SQLException e) {
					System.out.println("Error al ejecutar la consulta de datos: " + e.getMessage());
				}
				break;
			case 3:
				// Actualizar los datos de un usuario
				System.out.print("Introduce el ID del usuario a actualizar: ");
				int idUsuarioActualizar = scanner.nextInt();
				System.out.print("Introduce el nuevo nombre del usuario: ");
				String nuevoNombre = scanner.next();
				System.out.print("Introduce la nueva edad del usuario: ");
				int nuevaEdad = scanner.nextInt();
				System.out.print("Introduce la nueva nacionalidad del usuario: ");
				String nuevaNacionalidad = scanner.next();

				// Construir la consulta de actualización
				String consultaActualizar = "UPDATE usuarios SET nombre = \"" + nuevoNombre + "\", edad=" + nuevaEdad
						+ ", nacionalidad=\"" + nuevaNacionalidad + "\" WHERE id_usuarios=" + idUsuarioActualizar;
				try {
					int filasAfectadas = statement.executeUpdate(consultaActualizar);
					if (filasAfectadas > 0) {
						System.out.println("Inserción exitosa. Filas afectadas: " + filasAfectadas);
					} else {
						System.out.println("No se realizó ninguna inserción.");
					}
				} catch (SQLException e) {
					System.out.println("Error al ejecutar la consulta de datos: " + e.getMessage());
				}

				break;
			case 4:
				System.out.print("Introduce el ID del usuario a borrar: ");
				int idUsuarioBorrar = scanner.nextInt();

				// Construir la consulta de eliminación
				String consultaBorrar = "DELETE FROM usuarios WHERE id_usuarios=" + idUsuarioBorrar;

				try {
					// Ejecutar la eliminación
					int filasAfectadas = statement.executeUpdate(consultaBorrar);

					// Verificar el resultado
					if (filasAfectadas > 0) {
						System.out.println("Borrado exitoso. Filas afectadas: " + filasAfectadas);
					} else {
						System.out.println("No se realizó ningún borrado. Puede que el usuario no exista.");
					}
				} catch (SQLException e) {
					System.out.println("Error al ejecutar la consulta de borrado: " + e.getMessage());
				}
				break;

			default:
				break;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
