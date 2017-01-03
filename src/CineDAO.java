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

}
