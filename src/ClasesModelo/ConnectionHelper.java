package ClasesModelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionHelper {
	private static String url;
	private static ConnectionHelper instance;

	private ConnectionHelper() {

		try {
			Class.forName("org.postgresql.Driver");
			// url = "jdbc:postgresql://localhost:5432/practicaFinal";
			url = "jdbc:postgresql://46.105.101.208:5432/postgres";
			// url = "jdbc:postgresql://localhost:5432/postgres";
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnection() throws SQLException {
		if (instance == null) {
			instance = new ConnectionHelper();
		}
		try {
			return DriverManager.getConnection(url, "webnarrativa", "n4rr4t1v4");
			// return DriverManager.getConnection(url, "postgres", "admin");
		} catch (SQLException e) {
			e.printStackTrace();
			throw e;
		}
	}

	public static void close(Connection connection) {
		try {
			if (connection != null) {
				connection.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}