package com.alliedwmsportal.controller;


public class PortalAdmin {
	

	private String username;
	private String password;
	private String accountnumber;
	private String zipcode;
	
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
	
	public String getAN() {
		return accountnumber;
	}
	public void setAN ( String accountno) {
		this.accountnumber= accountno;
	}	
	
	public String getZipCode() {
		return zipcode;
	}
	public void setZipCode(String zip) {
		this.zipcode = zip;
	}	
	
	
}
