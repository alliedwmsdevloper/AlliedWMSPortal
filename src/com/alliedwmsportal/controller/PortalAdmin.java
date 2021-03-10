package com.alliedwmsportal.controller;


public class PortalAdmin {
	

	private String username;
	private String password;
	private int accountnumber;
	private int zipcode;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}	
	
	public int getAN() {
		return accountnumber;
	}
	public void setAN(int accountnumber) {
		this.accountnumber= accountnumber;
	}	
	
	public int getZipCode() {
		return zipcode;
	}
	public void setZipCode(int zip) {
		this.zipcode = zip;
	}	
	
	
}
