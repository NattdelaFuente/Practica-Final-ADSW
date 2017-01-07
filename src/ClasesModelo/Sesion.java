package ClasesModelo;

public class Sesion {

	private int idSesion;
	private int idPelicula;
	private int idSala;
	private String fechaInicio;
	private String horaInicio;
	private long milisInicio;
	private String fechaFinal;
	private String horaFinal;
	private long milisFinal;
	private String nombrePelicula;
	private String nombreSala;
	private int duracionPelicula;

	public int getDuracionPelicula() {
		return duracionPelicula;
	}

	public void setDuracionPelicula(int duracionPelicula) {
		this.duracionPelicula = duracionPelicula;
	}

	public String getNombrePelicula() {
		return nombrePelicula;
	}

	public void setNombrePelicula(String nombbrePelicula) {
		this.nombrePelicula = nombbrePelicula;
	}

	public String getNombreSala() {
		return nombreSala;
	}

	public void setNombreSala(String nombreSala) {
		this.nombreSala = nombreSala;
	}

	public int getIdSesion() {
		return idSesion;
	}

	public void setIdSesion(int idSesion) {
		this.idSesion = idSesion;
	}

	public Sesion() {

	}

	public int getIdPelicula() {
		return idPelicula;
	}

	public void setIdPelicula(int idPelicula) {
		this.idPelicula = idPelicula;
	}

	public int getIdSala() {
		return idSala;
	}

	public void setIdSala(int idSala) {
		this.idSala = idSala;
	}

	public String getFechaInicio() {
		return fechaInicio;
	}

	public void setFechaInicio(String fechaInicio) {
		this.fechaInicio = fechaInicio;
	}

	public String getHoraInicio() {
		return horaInicio;
	}

	public void setHoraInicio(String horaInicio) {
		this.horaInicio = horaInicio;
	}

	public long getMilisInicio() {
		return milisInicio;
	}

	public void setMilisInicio(long milisInicio) {
		this.milisInicio = milisInicio;
	}

	public String getFechaFinal() {
		return fechaFinal;
	}

	public void setFechaFinal(String fechaFinal) {
		this.fechaFinal = fechaFinal;
	}

	public String getHoraFinal() {
		return horaFinal;
	}

	public void setHoraFinal(String horaFinal) {
		this.horaFinal = horaFinal;
	}

	public long getMilisFinal() {
		return milisFinal;
	}

	public void setMilisFinal(long milisFinal) {
		this.milisFinal = milisFinal;
	}

}
