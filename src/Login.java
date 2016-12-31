
//
// Encuesta.java
//
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

public class Login extends HttpServlet {

	public void init(ServletConfig config) throws ServletException {
		super.init(config);

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println(request.getHeader("X-Requested-With"));
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		boolean ajax = "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));

		// ...

		if (ajax) { // Handle ajax (JSON or XML) response.
			CineDAO dao = new CineDAO();
			if (dao.login(username, password)) {
				// mirar para redireccionar en ajax

				// devolvemos la url
				String redirectURL = "index.html";

				Map<String, String> data = new HashMap<>();
				data.put("redirect", redirectURL);
				String json = new Gson().toJson(data);

				response.setContentType("application/json");
				response.setCharacterEncoding("UTF-8");
				response.getWriter().write(json);
			}

			else {

			}

		} else {
			// Handle regular (JSP) response.
		}
	}

}