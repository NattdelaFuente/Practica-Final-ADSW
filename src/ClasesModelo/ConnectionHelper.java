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
			url = "jdbc:postgresql://localhost:5432/practicaFinal";

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnection() throws SQLException {
		if (instance == null) {
			instance = new ConnectionHelper();
		}
		try {

			return DriverManager.getConnection(url, "postgres", "admin");
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