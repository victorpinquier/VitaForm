package beans;

import java.util.Date;

public class EntretienDiet {
	private int idEntretienDiet;
	private Date dateEntretien;
	private float tailleCm;
	private float poidsKg;
	private float imc;
	private String prisePetitDejeuner;
	private String nombreFruitsEtLegumes;
	private String autre;
	private String comportementAlimentaire;
	private String commentaires;
	private int idPatient;
	
	public int getIdEntretienDiet() {
		return idEntretienDiet;
	}
	public void setIdEntretienDiet(int idEntretienDiet) {
		this.idEntretienDiet = idEntretienDiet;
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
	public String getPrisePetitDejeuner() {
		return prisePetitDejeuner;
	}
	public void setPrisePetitDejeuner(String prisePetitDejeuner) {
		this.prisePetitDejeuner = prisePetitDejeuner;
	}
	public String getNombreFruitsEtLegumes() {
		return nombreFruitsEtLegumes;
	}
	public void setNombreFruitsEtLegumes(String nombreFruitsEtLegumes) {
		this.nombreFruitsEtLegumes = nombreFruitsEtLegumes;
	}
	public String getAutre() {
		return autre;
	}
	public void setAutre(String autre) {
		this.autre = autre;
	}
	public String getComportementAlimentaire() {
		return comportementAlimentaire;
	}
	public void setComportementAlimentaire(String comportementAlimentaire) {
		this.comportementAlimentaire = comportementAlimentaire;
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
