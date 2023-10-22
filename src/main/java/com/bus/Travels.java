package com.bus;

public class Travels {
	
	private int travel_id;
	private String date;
	private String time;
	private String departure;
	private String destination;
	private String turns;
	private String driverName;
	private int busNo;
	
	public Travels(int travel_id, String date, String time, String departure, String destination, String turns,
			String driverName, int busNo) {
		
		this.travel_id = travel_id;
		this.date = date;
		this.time = time;
		this.departure = departure;
		this.destination = destination;
		this.turns = turns;
		this.driverName = driverName;
		this.busNo = busNo;
	}

	public int getTravel_id() {
		return travel_id;
	}

	public String getDate() {
		return date;
	}

	public String getTime() {
		return time;
	}

	public String getDeparture() {
		return departure;
	}

	public String getDestination() {
		return destination;
	}

	public String getTurns() {
		return turns;
	}

	public String getDriverName() {
		return driverName;
	}

	public int getBusNo() {
		return busNo;
	}
	
	
	
	
}
