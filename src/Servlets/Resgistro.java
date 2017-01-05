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

public class Resgistro extends HttpServlet {

	public void init(ServletConfig config) throws ServletException {
		super.init(config);

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// guardar variables

		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String password2 = request.getParameter("password_confirm");

		// json de respuesta (posible: sucess, error, redirect)
		Map<String, String> data = new HashMap<String, String>();
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		// comprobar errores en el formulario
		if (username.equals("") || password.equals("") || password2.equals("") || email.equals("")) {
			System.out.println("usuario, pass1, pass2 o email vacio");
			data.put("error", "Rellene todos los campos vacíos");
			String json = new Gson().toJson(data);
			response.getWriter().write(json);

		} else if (!password.equals(password2)) {
			System.out.println("Contraseñas distitnas");
			data.put("error", "Las contraseñas tienen que ser iguales");
			String json = new Gson().toJson(data);
			response.getWriter().write(json);

		} else {
			boolean ajax = "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));

			if (ajax) { // Handle ajax (JSON or XML) response.

				CineDAO dao = new CineDAO();
				if (dao.registroUsuario(username, password, password2, email)) {
					System.out.println("Usuario añadido");
					data.put("success", "Usuario registrado con éxito");
					String json = new Gson().toJson(data);
					response.getWriter().write(json);
				} else {
					System.out.println("Error de insert (ya existe)");
					data.put("error", "Usuario o email ya existen");
					String json = new Gson().toJson(data);
					response.getWriter().write(json);

				}

			} else {
				// Handle regular (JSP) response.

			}
		}

	}

}