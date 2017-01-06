package ClasesModelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CineDAO {

	public boolean login(String username, String pass) {

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

	public boolean registroUsuario(String username, String pass, String pass2, String email) {

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

	public boolean insertarPelicula(String name, String sinopsis, String website, String original, String genero,
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
			return count == 1;

		} catch (SQLException e) {
			// e.printStackTrace();
			System.out.println(e.getMessage());

		} finally {
			ConnectionHelper.close(c);

		}

		return false;
	}

	public boolean modificarPelicula(int id, String name, String sinopsis, String website, String original,
			String genero, String nacionalidad, int duracion, int anyo, String distribuidora, String director,
			String actores, String edad, String otros, String imagen, String trailer) {

		Connection c = null;

		try {
			c = ConnectionHelper.getConnection();
			PreparedStatement ps = c
					.prepareStatement("UPDATE peliculas    SET nombre=?,sinopsis=?, paginaoficial=?, genero=?,  "
							+ "      nacionalidad=?, duracion=?, anio=?, distribuidora=?, director=?,       "
							+ " actores=?, clasificacion=?, otros=?, imagen=?, trailer=?, titulooriginal=? "
							+ "WHERE idpelicula=?;");
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
			ps.setInt(16, id);
			int count = ps.executeUpdate();
			return count == 1;

		} catch (SQLException e) {
			// e.printStackTrace();
			System.out.println(e.getMessage());

		} finally {
			ConnectionHelper.close(c);

		}

		return false;
	}

	public boolean borrarPelicula(int id) {
		Connection c = null;
		try {
			c = ConnectionHelper.getConnection();
			PreparedStatement ps = c.prepareStatement("DELETE FROM peliculas WHERE idpelicula=?");
			ps.setInt(1, id);
			int count = ps.executeUpdate();
			return count == 1;
		} catch (Exception e) {
			// e.printStackTrace();
			System.out.println(e.getMessage());
		} finally {
			ConnectionHelper.close(c);
		}
		return false;
	}

	// devuelve una lista que contendra todas las peliculas ordenadas por id
	public List<Pelicula> getListaTodasPeliculas() {

		List<Pelicula> list = new ArrayList<Pelicula>();
		Connection c = null;
		String sql = "SELECT * FROM peliculas ORDER BY idpelicula";

		try {
			c = ConnectionHelper.getConnection();
			Statement s = c.createStatement();
			ResultSet rs = s.executeQuery(sql);
			while (rs.next()) {
				list.add(procesarResultSet(rs));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			ConnectionHelper.close(c);
		}

		return list;

	}

	// devuelve la pelicula pedida por id
	public Pelicula getPelicula(int id) {

		Connection c = null;
		try {

			c = ConnectionHelper.getConnection();
			PreparedStatement ps = c.prepareStatement("SELECT * FROM peliculas WHERE idpelicula=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				return procesarResultSet(rs);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			ConnectionHelper.close(c);
		}

		return null;

	}

	// recibimos un resultSet que contiene una pelicula y lo convertimos en un
	// Objeto de ese tipo, para devolverlo
	private Pelicula procesarResultSet(ResultSet rs) throws SQLException {
		Pelicula pelicula = new Pelicula();
		pelicula.setId(rs.getInt("idpelicula"));
		pelicula.setName(rs.getString("nombre"));
		pelicula.setSinopsis(rs.getString("sinopsis"));
		pelicula.setWebsite(rs.getString("paginaoficial"));
		pelicula.setOriginal(rs.getString("titulooriginal"));
		pelicula.setGenero(rs.getString("genero"));
		pelicula.setNacionalidad(rs.getString("nacionalidad"));
		pelicula.setDuracion(rs.getInt("duracion"));
		pelicula.setAnyo(rs.getInt("anio"));
		pelicula.setDistribuidora(rs.getString("distribuidora"));
		pelicula.setDirector(rs.getString("director"));
		pelicula.setActores(rs.getString("actores"));
		pelicula.setEdad(rs.getString("clasificacion"));
		pelicula.setOtros(rs.getString("otros"));
		pelicula.setImagen(rs.getString("imagen"));
		pelicula.setTrailer(rs.getString("trailer"));

		return pelicula;
	}

}
