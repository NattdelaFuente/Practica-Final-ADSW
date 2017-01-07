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

public class BorrarSesion extends HttpServlet {

	public void init(ServletConfig config) throws ServletException {
		super.init(config);

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// guardar parametros
		int id = Integer.parseInt(request.getParameter("idSesion"));

		// json de respuesta (posible: sucess, error, redirect)
		Map<String, String> data = new HashMap<String, String>();
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		boolean ajax = "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));
		if (ajax) { // Handle ajax (JSON or XML) response.
			CineDAO dao = new CineDAO();
			if (dao.borrarSesion(id)) {

				System.out.println("borrada la sesion " + id);
				data.put("success", "sesion borrada con éxito");
				String json = new Gson().toJson(data);
				response.getWriter().write(json);
			}

			else {
				System.out.println("Fallo al borrar sala");
				data.put("error", "la sesion no ha podido ser borrada");
				String json = new Gson().toJson(data);
				response.getWriter().write(json);

			}

		} else {
			// Handle regular (JSP) response.
		}

	}

}
