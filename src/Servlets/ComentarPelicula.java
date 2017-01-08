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

public class ComentarPelicula extends HttpServlet {

	public void init(ServletConfig config) throws ServletException {
		super.init(config);

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// guardar variables

		String username = String.valueOf(request.getSession().getAttribute("username"));
		String comentario = request.getParameter("comentario");
		int idPelicula = Integer.parseInt(request.getParameter("idPeli"));

		// json de respuesta (posible: sucess, error, redirect)
		Map<String, String> data = new HashMap<String, String>();
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		// comprobar errores en el formulario
		if (username == null || username.equals("") || comentario == null || comentario.equals("")) {
			System.out.println("sin usuario o comentario");
			data.put("error", "Escriba su comentario en el campo");
			String json = new Gson().toJson(data);
			response.getWriter().write(json);

		} else {
			boolean ajax = "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));

			if (ajax) { // Handle ajax (JSON or XML) response.

				CineDAO dao = new CineDAO();
				if (dao.comentarPelicula(username, comentario, idPelicula)) {
					System.out.println("comentario hecho");
					data.put("success", "Comentario registrado con éxito");
					String json = new Gson().toJson(data);
					response.getWriter().write(json);
				} else {
					System.out.println("Error al comentar");
					data.put("error", "Error al realizar el comentario");
					String json = new Gson().toJson(data);
					response.getWriter().write(json);

				}

			} else {
				// Handle regular (JSP) response.

			}
		}

	}

}