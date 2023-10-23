package com.bus;

public class Admin {
	
	private int id;
	private String name;
	private String nic;
	private String username;
	private String password;
	
	public Admin(int id, String name, String nic, String username, String password) {
		this.id = id;
		this.name = name;
		this.nic = nic;
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

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}
	
	
	
}
