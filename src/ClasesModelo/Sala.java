package ClasesModelo;

import java.util.Arrays;

public class Sala {

	private String nombreSala;
	private int filas;
	private int columnas;
	private int idSala;
	private String map;

	public Sala() {

	}

	public String getNombreSala() {
		return nombreSala;
	}

	public void setNombreSala(String nombreSala) {
		this.nombreSala = nombreSala;
	}

	public int getFilas() {
		return filas;
	}

	public void setFilas(int filas) {
		this.filas = filas;
	}

	public int getColumnas() {
		return columnas;
	}

	public void setColumnas(int columnas) {
		this.columnas = columnas;
	}

	public int getIdSala() {
		return idSala;
	}

	public void setIdSala(int idSala) {
		this.idSala = idSala;
	}

	public String getMap() {
		return map;
	}

	public void setMap(String map) {
		this.map = map;
	}

	public static String calcularMap(int filas, int columnas) {
		String[] map = new String[filas];
		String columnaAsientos = "";

		switch (columnas) {

		case 8:
			columnaAsientos = "eeee_eeee";
			break;
		case 9:
			columnaAsientos = "eeee_eeeee";
			break;
		case 10:
			columnaAsientos = "eeeee_eeeee";
			break;
		case 11:
			columnaAsientos = "eeeee_eeeeee";
			break;
		case 12:
			columnaAsientos = "eeeeee_eeeeee";
			break;
		case 13:
			columnaAsientos = "eeeeee_eeeeeee";
			break;
		case 14:
			columnaAsientos = "eeeeeee_eeeeeee";
			break;
		case 15:
			columnaAsientos = "eeeeeee_eeeeeeee";
			break;
		case 16:
			columnaAsientos = "eeeeeeee_eeeeeeee";
			break;
		case 17:
			columnaAsientos = "eeeeeeee_eeeeeeeee";
			break;
		case 18:
			columnaAsientos = "eeeeeeeee_eeeeeeeee";
			break;
		case 19:
			columnaAsientos = "eeeeeeeee_eeeeeeeeee";
			break;
		case 20:
			columnaAsientos = "eeeeeeeeee_eeeeeeeeee";
			break;

		}
		for (int i = 0; i < filas; i++) {
			map[i] = "'" + columnaAsientos + "'";
		}

		return Arrays.toString(map);

	}

}
