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

	public boolean insertarSala(String name, int filas, int columnas) {

		Connection c = null;

		try {
			c = ConnectionHelper.getConnection();
			PreparedStatement ps = c
					.prepareStatement("INSERT INTO salas(filas, columnas, nombresala)" + "VALUES (?, ?, ?);");

			ps.setInt(1, filas);
			ps.setInt(2, columnas);
			ps.setString(3, name);

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

	public boolean modificarSala(int id, String name, int filas, int columnas) {

		Connection c = null;

		try {
			c = ConnectionHelper.getConnection();
			PreparedStatement ps = c
					.prepareStatement("UPDATE salas    SET nombresala=?,filas=?, columnas=? WHERE idsala=?;");
			ps.setString(1, name);
			ps.setInt(2, filas);
			ps.setInt(3, columnas);
			ps.setInt(4, id);
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

	public boolean borrarSala(int id) {
		Connection c = null;
		try {
			c = ConnectionHelper.getConnection();
			PreparedStatement ps = c.prepareStatement("DELETE FROM salas WHERE idsala=?");
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

	// para crear una sesion, comprobara si la sala esta libre a esa hora
	public boolean esPosibleSesion(int idSala, long sesionNuevaMilisInicio, long sesionNuevaMilisFinal) {

		Connection c = null;

		try {
			c = ConnectionHelper.getConnection();
			PreparedStatement ps = c.prepareStatement("select * from sesiones WHERE idsala=? ");
			ps.setInt(1, idSala);
			ResultSet rs = ps.executeQuery();
			long sesionFinal;
			long sesionInicio;
			while (rs.next()) {
				sesionFinal = rs.getLong("milisfinal");
				sesionInicio = rs.getLong("milisinicio");

				// si el comienzo de la sesion nueva es mayor que cuando empiece
				// otra Y A LA VEZ es menor que cuando termine, es que la sala
				// estara ocupada
				if (sesionNuevaMilisInicio >= sesionInicio && sesionNuevaMilisInicio <= sesionFinal)
					return false;
				if (sesionNuevaMilisFinal >= sesionInicio && sesionNuevaMilisFinal <= sesionFinal)
					return false;
			}

		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return false;

		} finally {
			ConnectionHelper.close(c);

		}

		return true;
	}

	// para modificar una sesion, comprobara si la sala esta libre, obviando la
	// propia sesion que se modifica, por si el usuario no cambia la fecha
	public boolean esPosibleModificarSesion(int idSala, long sesionNuevaMilisInicio, int idSesion,
			long sesionNuevaMilisFinal) {

		Connection c = null;

		try {
			c = ConnectionHelper.getConnection();
			PreparedStatement ps = c.prepareStatement("select * from sesiones WHERE idsala=? AND idsesion != ? ");
			ps.setInt(1, idSala);
			ps.setInt(2, idSesion);
			ResultSet rs = ps.executeQuery();
			long sesionFinal;
			long sesionInicio;
			while (rs.next()) {
				sesionFinal = rs.getLong("milisfinal");
				sesionInicio = rs.getLong("milisinicio");

				// si el comienzo de la sesion nueva es mayor que cuando empiece
				// otra Y A LA VEZ es menor que cuando termine, es que la sala
				// estara ocupada
				if (sesionNuevaMilisInicio >= sesionInicio && sesionNuevaMilisInicio <= sesionFinal)
					return false;
				if (sesionNuevaMilisFinal >= sesionInicio && sesionNuevaMilisFinal <= sesionFinal)
					return false;

			}

		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return false;

		} finally {
			ConnectionHelper.close(c);

		}

		return true;
	}

	public boolean insertarSesion(int idPelicula, int idSala, String fechaInicio, String horaInicio, long milisInicio,
			String fechaFinal, String horaFinal, long milisFinal) {

		Connection c = null;

		try {
			c = ConnectionHelper.getConnection();
			PreparedStatement ps = c.prepareStatement("INSERT INTO sesiones(		  "
					+ "          idpelicula, idsala, fechainicio, horainicio, fechafinal, 	"
					+ "	            horafinal, milisinicio, milisfinal) VALUES (?, ?, ?, ?, ?, ?, ?, ?);");

			ps.setInt(1, idPelicula);
			ps.setInt(2, idSala);
			ps.setString(3, fechaInicio);
			ps.setString(4, horaInicio);
			ps.setString(5, fechaFinal);
			ps.setString(6, horaFinal);
			ps.setLong(7, milisInicio);
			ps.setLong(8, milisFinal);
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

	public boolean modificarSesion(int idSesion, int idPelicula, int idSala, String fechaInicio, String horaInicio,
			long milisInicio, String fechaFinal, String horaFinal, long milisFinal) {

		Connection c = null;

		try {
			c = ConnectionHelper.getConnection();
			PreparedStatement ps = c.prepareStatement(
					"UPDATE sesiones    " + "SET idpelicula=?, idsala=?, fechainicio=?, horainicio=?,     "
							+ "    fechafinal=?, horafinal=?, milisinicio=?, milisfinal=?  " + "WHERE idsesion=?;");
			ps.setInt(1, idPelicula);
			ps.setInt(2, idSala);
			ps.setString(3, fechaInicio);
			ps.setString(4, horaInicio);
			ps.setString(5, fechaFinal);
			ps.setString(6, horaFinal);
			ps.setLong(7, milisInicio);
			ps.setLong(8, milisFinal);
			ps.setInt(9, idSesion);
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

	public boolean borrarSesion(int id) {
		Connection c = null;
		try {
			c = ConnectionHelper.getConnection();
			PreparedStatement ps = c.prepareStatement("DELETE FROM sesiones WHERE idsesion=?");
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

	// devuelve una lista que contendra todas las sesiones ordenadas por fecha
	// de inicio
	public List<Sesion> getListaTodasSesiones() {

		List<Sesion> list = new ArrayList<Sesion>();
		Connection c = null;
		String sql = "SELECT idsala,idpelicula,fechainicio,horainicio,idsesion,fechafinal,horafinal,nombre,nombresala,duracion,milisinicio,milisfinal "
				+ "FROM sesiones NATURAL JOIN peliculas NATURAL JOIN salas "
				+ "ORDER BY TO_TIMESTAMP(  CONCAT ( CONCAT(fechainicio, ' '),horainicio), 'DD/MM/YYYY HH24:MI') ASC  ";

		try {
			c = ConnectionHelper.getConnection();
			Statement s = c.createStatement();
			ResultSet rs = s.executeQuery(sql);
			while (rs.next()) {
				list.add(procesarSesion(rs));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			ConnectionHelper.close(c);
		}

		return list;

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
				list.add(procesarPelicula(rs));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			ConnectionHelper.close(c);
		}

		return list;

	}

	// devuelve una lista que contendra todas las salas ordenadas por id
	public List<Sala> getListaTodasSalas() {

		List<Sala> list = new ArrayList<Sala>();
		Connection c = null;
		String sql = "SELECT * FROM salas ORDER BY idsala";

		try {
			c = ConnectionHelper.getConnection();
			Statement s = c.createStatement();
			ResultSet rs = s.executeQuery(sql);
			while (rs.next()) {
				list.add(procesarSala(rs));
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
				return procesarPelicula(rs);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			ConnectionHelper.close(c);
		}

		return null;

	}

	// devuelve la sala pedida por id
	public Sala getSala(int id) {

		Connection c = null;
		try {

			c = ConnectionHelper.getConnection();
			PreparedStatement ps = c.prepareStatement("SELECT * FROM salas WHERE idsala=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				return procesarSala(rs);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			ConnectionHelper.close(c);
		}

		return null;

	}

	// devuelve la sesion pedida por id
	public Sesion getSesion(int id) {

		Connection c = null;
		try {

			c = ConnectionHelper.getConnection();
			PreparedStatement ps = c.prepareStatement(
					"SELECT idsala,idpelicula,fechainicio,horainicio,idsesion,fechafinal,horafinal,nombre,nombresala,duracion,milisinicio,milisfinal from sesiones NATURAL JOIN peliculas NATURAL JOIN salas WHERE idsesion=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				return procesarSesion(rs);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			ConnectionHelper.close(c);
		}

		return null;

	}

	// devuelve una lista que contendra todas las sesiones ordenadas por fecha
	// de inicio QUE PROYECTAN LA PELICULA INDICADA
	public List<Sesion> getListaSesionesProyectanPelicula(int idPelicula) {

		List<Sesion> list = new ArrayList<Sesion>();
		Connection c = null;
		try {

			c = ConnectionHelper.getConnection();
			PreparedStatement ps = c.prepareStatement(
					"SELECT idsala,idpelicula,fechainicio,horainicio,idsesion,fechafinal,horafinal,nombre,nombresala,duracion,milisinicio,milisfinal "
							+ "FROM sesiones " + "NATURAL JOIN peliculas " + "NATURAL JOIN salas  "
							+ "WHERE idpelicula = ?"
							+ "ORDER BY TO_TIMESTAMP(  CONCAT ( CONCAT(fechainicio, ' '),horainicio), 'DD/MM/YYYY HH24:MI') ASC  ");
			ps.setInt(1, idPelicula);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				list.add(procesarSesion(rs));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			ConnectionHelper.close(c);
		}

		return list;

	}

	// recibimos un resultSet que contiene una pelicula y lo convertimos en un
	// Objeto de ese tipo, para devolverlo
	private Pelicula procesarPelicula(ResultSet rs) throws SQLException {
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

	// recibimos un resultSet que contiene una sala y lo convertimos en un
	// Objeto de ese tipo, para devolverlo
	private Sala procesarSala(ResultSet rs) throws SQLException {
		Sala sala = new Sala();
		sala.setColumnas(rs.getInt("columnas"));
		sala.setFilas(rs.getInt("filas"));
		sala.setIdSala(rs.getInt("idsala"));
		sala.setNombreSala(rs.getString("nombresala"));
		return sala;
	}

	// recibimos un resultSet que contiene una sala y lo convertimos en un
	// Objeto de ese tipo, para devolverlo

	private Sesion procesarSesion(ResultSet rs) throws SQLException {

		Sesion sesion = new Sesion();

		sesion.setNombrePelicula(rs.getString("nombre"));
		sesion.setNombreSala(rs.getString("nombresala"));
		sesion.setDuracionPelicula(rs.getInt("duracion"));

		sesion.setIdSesion(rs.getInt("idsesion"));
		sesion.setIdPelicula(rs.getInt("idpelicula"));
		sesion.setIdSala(rs.getInt("idsala"));

		sesion.setFechaInicio(rs.getString("fechainicio"));
		sesion.setHoraInicio(rs.getString("horainicio"));
		sesion.setMilisInicio(rs.getLong("milisinicio"));

		sesion.setFechaFinal(rs.getString("fechafinal"));
		sesion.setHoraFinal(rs.getString("horafinal"));
		sesion.setMilisFinal(rs.getLong("milisfinal"));

		return sesion;
	}
}
