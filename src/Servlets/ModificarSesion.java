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

public class ModificarSesion extends HttpServlet {

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
		int idSesion = Integer.parseInt(request.getParameter("idSesion"));
		int idPelicula = Integer.parseInt(request.getParameter("idPelicula"));
		int idSala = Integer.parseInt(request.getParameter("idSala"));

		String fechaInicio = request.getParameter("fechaInicio");
		String horaInicio = request.getParameter("horaInicio");
		long milisInicio = Long.parseLong(request.getParameter("milisInicio"));

		String fechaFinal = request.getParameter("fechaFinal");
		String horaFinal = request.getParameter("horaFinal");
		long milisFinal = Long.parseLong(request.getParameter("milisFinal"));

		// json de respuesta (posible: sucess, error, redirect)
		Map<String, String> data = new HashMap<String, String>();
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		boolean ajax = "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));
		if (ajax) { // Handle ajax (JSON or XML) response.
			CineDAO dao = new CineDAO();
			// comprobar si la sala esta libre
			if (dao.esPosibleModificarSesion(idSala, milisInicio, idSesion, milisFinal)) {
				if (dao.modificarSesion(idSesion, idPelicula, idSala, fechaInicio, horaInicio, milisInicio, fechaFinal,
						horaFinal, milisFinal)) {

					System.out.println("Modificada la sesion ");
					data.put("success", "Sesión modificada con éxito");
					String json = new Gson().toJson(data);
					response.getWriter().write(json);
				}

				else {
					System.out.println("Fallo al modificar sesion");
					data.put("error", "La sesion no ha podido ser modificada");
					String json = new Gson().toJson(data);
					response.getWriter().write(json);

				}
			} else {
				System.out.println("La sala esta ocupada");
				data.put("error", "Ya existe una sesión programada para esa sala durante la fecha indicada");
				String json = new Gson().toJson(data);
				response.getWriter().write(json);
			}

		} else {
			// Handle regular (JSP) response.
		}

	}

}