package com.bus;

public class Vehicles {
	
	private int vNo;
	private String vehicle_Reg_No;
	private String chassisNo;
	private int bus_owner_id;
	
	public Vehicles(int vNo, String vehicle_Reg_No, String chassisNo, int bus_owner_id) {
		this.vNo = vNo;
		this.vehicle_Reg_No = vehicle_Reg_No;
		this.chassisNo = chassisNo;
		this.bus_owner_id = bus_owner_id;
	}

	public int getvNo() {
		return vNo;
	}

	public String getVehicle_Reg_No() {
		return vehicle_Reg_No;
	}

	public String getChassisNo() {
		return chassisNo;
	}

	public int getBus_owner_id() {
		return bus_owner_id;
	}

	
	
	
	
}
