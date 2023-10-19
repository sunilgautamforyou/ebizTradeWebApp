/**
 * 
 */
package com.loanapp.ebizTradeWebApp.entity;

/**
 * Sudhir
 * DTO for dashboard 
 */
/**
 * @author sugautam
 *
 */
public class DashboardDto {
	private String loanId;
	private String loanNmber;
	private String clientName;
	private String loanType;
	private String guarantorName;
	private String guarantorMobNo;
	private String clientmobileNo;
	private String clientArea;
	private String loanAmount;
	private String clientId;
	private String loanDate;
	private String loanTypeId;
	private String securityFlag;
	private String emiAmount;
	private String pendingAmount;
	private String loanClosureDate;
	private String lastRcvngDate;
	private String loanTenure;
	private String loanIssueBy;
	private String totalRcvdAmount;
	private String dueDays;

	
	public String getLoanId() {
		return loanId;
	}

	public void setLoanId(String loanId) {
		this.loanId = loanId;
	}

	public String getLoanNmber() {
		return loanNmber;
	}

	public void setLoanNmber(String loanNmber) {
		this.loanNmber = loanNmber;
	}

	public String getClientName() {
		return clientName;
	}

	public void setClientName(String clientName) {
		this.clientName = clientName;
	}

	public String getLoanType() {
		return loanType;
	}

	public void setLoanType(String loanType) {
		this.loanType = loanType;
	}

	public String getGuarantorName() {
		return guarantorName;
	}

	public void setGuarantorName(String guarantorName) {
		this.guarantorName = guarantorName;
	}

	public String getGuarantorMobNo() {
		return guarantorMobNo;
	}

	public void setGuarantorMobNo(String guarantorMobNo) {
		this.guarantorMobNo = guarantorMobNo;
	}

	public String getClientmobileNo() {
		return clientmobileNo;
	}

	public void setClientmobileNo(String clientmobileNo) {
		this.clientmobileNo = clientmobileNo;
	}

	public String getClientArea() {
		return clientArea;
	}

	public void setClientArea(String clientArea) {
		this.clientArea = clientArea;
	}

	public String getLoanAmount() {
		return loanAmount;
	}

	public void setLoanAmount(String loanAmount) {
		this.loanAmount = loanAmount;
	}

	public String getClientId() {
		return clientId;
	}

	public void setClientId(String clientId) {
		this.clientId = clientId;
	}

	public String getLoanDate() {
		return loanDate;
	}

	public void setLoanDate(String loanDate) {
		this.loanDate = loanDate;
	}

	public String getLoanTypeId() {
		return loanTypeId;
	}

	public void setLoanTypeId(String loanTypeId) {
		this.loanTypeId = loanTypeId;
	}

	public String getSecurityFlag() {
		return securityFlag;
	}

	public void setSecurityFlag(String securityFlag) {
		this.securityFlag = securityFlag;
	}

	public String getEmiAmount() {
		return emiAmount;
	}

	public void setEmiAmount(String emiAmount) {
		this.emiAmount = emiAmount;
	}

	public String getPendingAmount() {
		return pendingAmount;
	}

	public void setPendingAmount(String pendingAmount) {
		this.pendingAmount = pendingAmount;
	}



	

	public String getLoanClosureDate() {
		return loanClosureDate;
	}

	public void setLoanClosureDate(String loanClosureDate) {
		this.loanClosureDate = loanClosureDate;
	}

	public String getLoanIssueBy() {
		return loanIssueBy;
	}

	public void setLoanIssueBy(String loanIssueBy) {
		this.loanIssueBy = loanIssueBy;
	}

	
	public String getTotalRcvdAmount() {
		return totalRcvdAmount;
	}

	public void setTotalRcvdAmount(String totalRcvdAmount) {
		this.totalRcvdAmount = totalRcvdAmount;
	}

	public String getDueDays() {
		return dueDays;
	}

	public void setDueDays(String dueDays) {
		this.dueDays = dueDays;
	}

	
	public String getLastRcvngDate() {
		return lastRcvngDate;
	}

	public void setLastRcvngDate(String lastRcvngDate) {
		this.lastRcvngDate = lastRcvngDate;
	}

	public String getLoanTenure() {
		return loanTenure;
	}

	public void setLoanTenure(String loanTenure) {
		this.loanTenure = loanTenure;
	}
	
	



	@Override
	public String toString() {
		return "DashboardDto [loanId=" + loanId + ", loanNmber=" + loanNmber + ", clientName=" + clientName
				+ ", loanType=" + loanType + ", guarantorName=" + guarantorName + ", guarantorMobNo=" + guarantorMobNo
				+ ", clientmobileNo=" + clientmobileNo + ", clientArea=" + clientArea + ", loanAmount=" + loanAmount
				+ ", clientId=" + clientId + ", loanDate=" + loanDate + ", loanTypeId=" + loanTypeId + ", securityFlag="
				+ securityFlag + ", emiAmount=" + emiAmount + ", pendingAmount=" + pendingAmount + ", nextPaymentDate="
				+ loanClosureDate + ", lastRcvngDate=" + lastRcvngDate + ", loanTenure=" + loanTenure + ", loanIssueBy="
				+ loanIssueBy + ", totalRcvdAmount=" + totalRcvdAmount + ", dueDays=" + dueDays + "]";
	}
	

}
