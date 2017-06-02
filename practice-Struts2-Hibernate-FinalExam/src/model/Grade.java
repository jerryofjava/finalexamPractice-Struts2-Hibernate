package model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="SemestralGrade")
public class Grade {

	@Id
	private double prelim;
	private double finals;
	private double semGrade;
	private double decimalGrade;
	private String remarks;
	
	public double getPrelim() {
		return prelim;
	}
	
	public void setPrelim(double prelim) {
		this.prelim = prelim;
	}
	
	public double getFinals() {
		return finals;
	}
	
	public void setFinals(double finals) {
		this.finals = finals;
	}
	
	public double getSemGrade() {
		return semGrade;
	}
	
	public void setSemGrade(double semGrade) {
		this.semGrade = semGrade;
	}
	
	public double getDecimalGrade() {
		return decimalGrade;
	}
	
	public void setDecimalGrade(double decimalGrade) {
		this.decimalGrade = decimalGrade;
	}
	
	public String getRemarks() {
		return remarks;
	}
	
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
}
