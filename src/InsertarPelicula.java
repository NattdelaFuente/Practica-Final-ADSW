
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

public class InsertarPelicula extends HttpServlet {

	public void init(ServletConfig config) throws ServletException {
		super.init(config);

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Enumeration attributeNames = request.getParameterNames();

		while (attributeNames.hasMoreElements()) {
			String current = (String) attributeNames.nextElement();

			System.out.println(current + "=" + request.getParameter(current));

		}

		// guardar parametros
		String name = request.getParameter("name");
		String sinopsis = request.getParameter("sinopsis");
		String website = request.getParameter("website");
		String original = request.getParameter("original");
		String genero = request.getParameter("genero");
		String nacionalidad = request.getParameter("nacionalidad");
		int duracion = Integer.parseInt(request.getParameter("duracion"));
		int anyo = Integer.parseInt(request.getParameter("anyo"));
		String distribuidora = request.getParameter("distribuidora");
		String director = request.getParameter("director");
		String actores = request.getParameter("actores");
		String edad = request.getParameter("edad");
		String otros = request.getParameter("otros");
		String imagen = request.getParameter("imagen");
		String trailer = request.getParameter("trailer");

		// json de respuesta (posible: sucess, error, redirect)
		Map<String, String> data = new HashMap<String, String>();
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		boolean ajax = "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));
		if (ajax) { // Handle ajax (JSON or XML) response.
			CineDAO dao = new CineDAO();
			if (dao.insertarPelicula(name, sinopsis, website, original, genero, nacionalidad, duracion, anyo,
					distribuidora, director, actores, edad, otros, imagen, trailer)) {

				System.out.println("Creada la pelicula " + name);
				data.put("success", name + " guardada con éxito");
				String json = new Gson().toJson(data);
				response.getWriter().write(json);
			}

			else {
				System.out.println("Fallo al crear pelicula");
				data.put("error", name + " no ha podido ser guardada");
				String json = new Gson().toJson(data);
				response.getWriter().write(json);

			}

		} else {
			// Handle regular (JSP) response.
		}

	}

}