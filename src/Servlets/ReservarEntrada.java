package Servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import ClasesModelo.CineDAO;

public class ReservarEntrada extends HttpServlet {

	public void init(ServletConfig config) throws ServletException {
		super.init(config);

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// guardar parametros
		Enumeration attributeNames = request.getParameterNames();
		String numeroTarjeta = "";
		int idSesion = 0;
		ArrayList<String> butacas = new ArrayList<String>();

		while (attributeNames.hasMoreElements()) {
			String current = (String) attributeNames.nextElement();

			if (current.equals("numeroTarjeta"))
				numeroTarjeta = request.getParameter(current);
			else if (current.equals("sesion"))
				idSesion = Integer.parseInt(request.getParameter(current));
			else
				butacas.add(request.getParameter(current));
			System.out.println(current + "=" + request.getParameter(current));

		}

		// json de respuesta (posible: sucess, error, redirect)
		Map<String, String> data = new HashMap<String, String>();
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		// comprobar errores en el formulario
		if (numeroTarjeta.equals("") || idSesion == 0 || butacas.isEmpty()) {
			System.out.println("Faltan datos (tarjeta,idSesion o butacas)");
			data.put("error", "Faltan datos");
			String json = new Gson().toJson(data);
			response.getWriter().write(json);

		} else {
			boolean ajax = "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));

			if (ajax) { // Handle ajax (JSON or XML) response.

				CineDAO dao = new CineDAO();
				int numeroReserva = dao.reservarEntrada(idSesion, numeroTarjeta, butacas,
						String.valueOf(request.getSession().getAttribute("username")));
				if (numeroReserva != 0) {
					System.out.println("Reserva añadida");
					data.put("success", String.valueOf(numeroReserva));
					String json = new Gson().toJson(data);
					response.getWriter().write(json);
				} else {
					System.out.println("Error al crear la reserva");
					data.put("error", "La reserva no se ha podido realizar");
					String json = new Gson().toJson(data);
					response.getWriter().write(json);

				}
			} else {
				// Handle regular (JSP) response.

			}
		}
	}
}
