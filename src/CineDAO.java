import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CineDAO {

	boolean login(String username, String pass) {

		Connection c = null;
		if (username.equals("") || pass.equals("")) {
			System.out.println("Fallo de login");
			return false;
		}

		try {
			c = ConnectionHelper.getConnection();
			PreparedStatement ps = c.prepareStatement("select * from usuarios WHERE username=? AND password=?");
			ps.setString(1, username);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				System.out.println("Usuario " + username + " logueado");
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			ConnectionHelper.close(c);

		}
		System.out.println("Fallo de login");
		return false;
	}
}
