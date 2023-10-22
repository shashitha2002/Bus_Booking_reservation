package com.bus;

public class ComplainsAndResponds {
	
	private int comId;
	private int pasId;
	private String complain;
	private String respond;
	
	public ComplainsAndResponds(int comId, int pasId, String complain, String respond) {
		this.comId = comId;
		this.pasId = pasId;
		this.complain = complain;
		this.respond = respond;
	}

	public int getComId() {
		return comId;
	}

	public int getPasId() {
		return pasId;
	}

	public String getComplain() {
		return complain;
	}

	public String getRespond() {
		return respond;
	}
	
	
	
	
	
}
