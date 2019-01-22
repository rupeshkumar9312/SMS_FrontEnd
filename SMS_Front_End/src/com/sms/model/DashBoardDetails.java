package com.sms.model;

public class DashBoardDetails {

	public String total;
	public String dac;
	public String ditiss;
	
	
	
	public DashBoardDetails(String total, String dac, String ditiss) {
		super();
		this.total = total;
		this.dac = dac;
		this.ditiss = ditiss;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public String getDac() {
		return dac;
	}
	public void setDac(String dac) {
		this.dac = dac;
	}
	public String getDitiss() {
		return ditiss;
	}
	public void setDitiss(String ditiss) {
		this.ditiss = ditiss;
	}
	
	
	
}
