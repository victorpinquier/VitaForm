package beans;

import java.util.Date;

public class EntretienSport {
	private int idEntretienSport;
	private Date dateEntretien;
	private float tailleCm;
	private float poidsKg;
	private float imc;
	private float tourTailleCm;
	private String autresBiometries;
	private String commentaires;
	private int idPatient;
	
	public int getIdEntretienSport() {
		return idEntretienSport;
	}
	public void setIdEntretienSport(int idEntretienSport) {
		this.idEntretienSport = idEntretienSport;
	}
	public Date getDateEntretien() {
		return dateEntretien;
	}
	public void setDateEntretien(Date dateEntretien) {
		this.dateEntretien = dateEntretien;
	}
	public float getTailleCm() {
		return tailleCm;
	}
	public void setTailleCm(float tailleCm) {
		this.tailleCm = tailleCm;
	}
	public float getPoidsKg() {
		return poidsKg;
	}
	public void setPoidsKg(float poidsKg) {
		this.poidsKg = poidsKg;
	}
	public float getImc() {
		return imc;
	}
	public void setImc(float imc) {
		this.imc = imc;
	}
	public float getTourTailleCm() {
		return tourTailleCm;
	}
	public void setTourTailleCm(float tourTailleCm) {
		this.tourTailleCm = tourTailleCm;
	}
	public String getAutresBiometries() {
		return autresBiometries;
	}
	public void setAutresBiometries(String autresBiometries) {
		this.autresBiometries = autresBiometries;
	}
	public String getCommentaires() {
		return commentaires;
	}
	public void setCommentaires(String commentaires) {
		this.commentaires = commentaires;
	}
	public int getIdPatient() {
		return idPatient;
	}
	public void setIdPatient(int idPatient) {
		this.idPatient = idPatient;
	}
	
	
	
}
