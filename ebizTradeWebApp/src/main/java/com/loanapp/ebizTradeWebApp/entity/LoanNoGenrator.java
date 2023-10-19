/**
 * 
 */
package com.loanapp.ebizTradeWebApp.entity;

/**
 * sudhir 
 */
public class LoanNoGenrator {
	private Integer loanTypeId;
	private Integer clientId;
	private String  createdDate;
	public int getLoanTypeId() {
		return loanTypeId;
	}
	public void setLoanTypeId(Integer loanTypeId) {
		this.loanTypeId = loanTypeId;
	}
	public Integer getClientId() {
		return clientId;
	}
	public void setClientId(Integer clientId) {
		this.clientId = clientId;
	}
	public String getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	@Override
	public String toString() {
		return "LoanGenrator [loanTypeId=" + loanTypeId + ", clientId=" + clientId + ", createdDate=" + createdDate
				+ "]";
	}

}
