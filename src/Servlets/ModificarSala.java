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

public class ModificarSala extends HttpServlet {

	public void init(ServletConfig config) throws ServletException {
		super.init(config);

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		/*
		 * Enumeration attributeNames = request.getParameterNames();
		 * 
		 * while (attributeNames.hasMoreElements()) { String current = (String)
		 * attributeNames.nextElement();
		 * 
		 * System.out.println(current + "=" + request.getParameter(current));
		 * 
		 * }
		 */

		// guardar parametros
		int id = Integer.parseInt(request.getParameter("idSala"));
		String name = request.getParameter("name");
		int filas = Integer.parseInt(request.getParameter("filas"));
		int columnas = Integer.parseInt(request.getParameter("columnas"));

		// json de respuesta (posible: sucess, error, redirect)
		Map<String, String> data = new HashMap<String, String>();
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		boolean ajax = "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));
		if (ajax) { // Handle ajax (JSON or XML) response.
			CineDAO dao = new CineDAO();
			if (dao.modificarSala(id, name, filas, columnas)) {

				System.out.println("modificada la pelicula " + name);
				data.put("success", name + " modificada con éxito");
				String json = new Gson().toJson(data);
				response.getWriter().write(json);
			}

			else {
				System.out.println("Fallo al modificar la pelicula");
				data.put("error", name + " posiblemente ya exista anteriormente");
				String json = new Gson().toJson(data);
				response.getWriter().write(json);

			}

		} else {
			// Handle regular (JSP) response.
		}

	}

}