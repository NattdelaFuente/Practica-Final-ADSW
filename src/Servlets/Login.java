package Servlets;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import ClasesModelo.CineDAO;

public class Login extends HttpServlet {

	public void init(ServletConfig config) throws ServletException {
		super.init(config);

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// guardar variables
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		// json de respuesta (posible: sucess, error, redirect)
		Map<String, String> data = new HashMap<String, String>();
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		// comprobar errores en el formulario
		if (username.equals("") || password.equals("")) {
			System.out.println("username y/o password vacios");
			data.put("error", "Rellene todos los campos vacíos");
			String json = new Gson().toJson(data);
			response.getWriter().write(json);

		} else {
			boolean ajax = "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));

			if (ajax) { // Handle ajax (JSON or XML) response.
				CineDAO dao = new CineDAO();
				if (dao.login(username, password)) {

					System.out.println("Usuario " + username + " logueado");

					// mirar para redireccionar en ajax
					// devolvemos la url
					String redirectURL;
					if (username.equals("admin"))
						redirectURL = "Admin/production/index.html";
					else
						redirectURL = "index.jsp";

					// variables de sesion
					request.getSession(true);
					request.getSession().setAttribute("username", username);

					data.put("redirect", redirectURL);
					// data.put("success", "");
					String json = new Gson().toJson(data);
					response.getWriter().write(json);
				}

				else {
					System.out.println("Fallo de login");
					data.put("error", "Usuario o contraseña incorrectos");
					String json = new Gson().toJson(data);
					response.getWriter().write(json);

				}

			} else {
				// Handle regular (JSP) response.
			}
		}

	}

}