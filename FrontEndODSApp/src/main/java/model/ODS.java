package model;


public class ODS {
	
	private int ods_id;
	private String logoPath;
	private String descripcion;
	
	
	public ODS() {
		
	}


	public String getLogoPath() {
		return logoPath;
	}


	public void setLogoPath(String logoPath) {
		this.logoPath = logoPath;
	}


	public String getDescripcion() {
		return descripcion;
	}


	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}


	public int getOds_id() {
		return ods_id;
	}


	public void setOds_id(int ods_id) {
		this.ods_id = ods_id;
	}
	
}
