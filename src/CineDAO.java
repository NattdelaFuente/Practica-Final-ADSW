import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CineDAO {

	boolean login(String username, String pass) {

		Connection c = null;

		try {
			c = ConnectionHelper.getConnection();
			PreparedStatement ps = c.prepareStatement("select * from usuarios WHERE username=? AND password=?");
			ps.setString(1, username);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				return true;
			}

		} catch (SQLException e) {
			System.out.println(e.getMessage());

		} finally {
			ConnectionHelper.close(c);

		}

		return false;
	}

	boolean registroUsuario(String username, String pass, String pass2, String email) {

		Connection c = null;

		try {
			c = ConnectionHelper.getConnection();
			PreparedStatement ps = c
					.prepareStatement("INSERT INTO usuarios (username, password, email) VALUES (?,?,?)");
			ps.setString(1, username);
			ps.setString(2, pass);
			ps.setString(3, email);
			int count = ps.executeUpdate();
			if (count == 1) { // usuario insertado bien

				return true;
			}

			else // hubo fallo (parara por el catch, pero por si acaso)
				return false;

		} catch (SQLException e) {
			// e.printStackTrace();
			System.out.println(e.getMessage());

		} finally {
			ConnectionHelper.close(c);

		}

		return false;
	}

	boolean insertarPelicula(String name, String sinopsis, String website, String original, String genero,
			String nacionalidad, int duracion, int anyo, String distribuidora, String director, String actores,
			String edad, String otros, String imagen, String trailer) {

		Connection c = null;

		try {
			c = ConnectionHelper.getConnection();
			PreparedStatement ps = c.prepareStatement("INSERT INTO peliculas(nombre, sinopsis, paginaoficial,"
					+ " genero, nacionalidad,duracion, anio, distribuidora, director, actores, "
					+ "clasificacion,otros, imagen, trailer, titulooriginal)    "
					+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");
			ps.setString(1, name);
			ps.setString(2, sinopsis);
			ps.setString(3, website);
			ps.setString(4, genero);
			ps.setString(5, nacionalidad);
			ps.setInt(6, duracion);
			ps.setInt(7, anyo);
			ps.setString(8, distribuidora);
			ps.setString(9, director);
			ps.setString(10, actores);
			ps.setString(11, edad);
			ps.setString(12, otros);
			ps.setString(13, imagen);
			ps.setString(14, trailer);
			ps.setString(15, original);
			int count = ps.executeUpdate();
			if (count == 1) { // usuario insertado bien

				return true;
			}

			else // hubo fallo (parara por el catch, pero por si acaso)
				return false;

		} catch (SQLException e) {
			// e.printStackTrace();
			System.out.println(e.getMessage());

		} finally {
			ConnectionHelper.close(c);

		}

		return false;
	}

}
