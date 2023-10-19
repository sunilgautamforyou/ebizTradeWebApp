/**
 * 
 */
package com.loanapp.ebizTradeWebApp.entity;

/**
 * Sudhir
 */
public class LoginDto {
	private Integer id;
	private String username;
	private String password;
	private String loginName;
	private String role;
	
	
	
	
	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "LoginDto [id=" + id + ", username=" + username + ", password=" + password + ", loginName=" + loginName
				+ "]";
	}
	

}
