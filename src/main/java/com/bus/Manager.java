package com.bus;

public class Manager {
	
	private int mId;
	private String name;
	private String NIC;
	private String username;
	private String password;
	
	public Manager(int mId, String name, String nIC, String username, String password) {
		this.mId = mId;
		this.name = name;
		NIC = nIC;
		this.username = username;
		this.password = password;
	}

	public int getmId() {
		return mId;
	}

	public String getName() {
		return name;
	}

	public String getNIC() {
		return NIC;
	}

	public String getUsername() {
		return username;
	}


	public String getPassword() {
		return password;
	}

	
	
	
	
}
