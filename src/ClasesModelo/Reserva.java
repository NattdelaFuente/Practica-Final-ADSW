package ClasesModelo;

public class Reserva {

	private int idRreserva;
	private String username;
	private int idSesion;
	private String tarjeta;

	public Reserva() {

	}

	public int getIdRreserva() {
		return idRreserva;
	}

	public void setIdRreserva(int idRreserva) {
		this.idRreserva = idRreserva;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getIdSesion() {
		return idSesion;
	}

	public void setIdSesion(int idSesion) {
		this.idSesion = idSesion;
	}

	public String getTarjeta() {
		return tarjeta;
	}

	public void setTarjeta(String tarjeta) {
		this.tarjeta = tarjeta;
	}

}
