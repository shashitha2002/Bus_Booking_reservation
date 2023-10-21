package com.bus;

public class Passenger {
	
	private int id;
	private String name;
	private String nic;
	private String phone;
	private String email;
	private String username;
	private String password;
	
	public Passenger(int id, String name, String nic, String phone, String email, String username, String password) {
		
		this.id = id;
		this.name = name;
		this.nic = nic;
		this.phone = phone;
		this.email = email;
		this.username = username;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}
	
	public String getNic() {
		return nic;
	}

	public String getPhone() {
		return phone;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}

	
	
	
	
}
