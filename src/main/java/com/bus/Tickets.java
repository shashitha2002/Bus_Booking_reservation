package com.bus;

public class Tickets {
	
	private int id;
	private String date;
	private String time;
	private String start;
	private String destination;
	private String seatNo;
	private int pid;
	
	public Tickets(int id, String date, String time, String start, String destination, String seatNo,int pid) {
		this.id = id;
		this.date = date;
		this.time = time;
		this.start = start;
		this.destination = destination;
		this.seatNo = seatNo;
		this.pid = pid;
	}

	public int getPid() {
		return pid;
	}

	public int getId() {
		return id;
	}

	public String getDate() {
		return date;
	}

	
	public String getTime() {
		return time;
	}

	
	public String getStart() {
		return start;
	}

	
	public String getDestination() {
		return destination;
	}

	

	public String getSeatNo() {
		return seatNo;
	}

	
	
	
	
}
