
import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Resgistro extends HttpServlet {

	public void init(ServletConfig config) throws ServletException {
		super.init(config);

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println(request.getHeader("X-Requested-With"));
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		boolean ajax = "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));

		// ...

		if (ajax) { // Handle ajax (JSON or XML) response.

		} else {
			// Handle regular (JSP) response.

			CineDAO dao = new CineDAO();
			if (dao.login(username, password)) {
				// mirar para redireccionar en ajax
			} else {

			}
		}
	}

}