/**
 * 
 */
package com.loanapp.ebizTradeWebApp.entity;

/**
 * Sudhir 
 */
public class BarrowerDetails {
	private String name;
	private String area;
	private String granterName;
	private String searchVarData;
	private Integer clientId;
	private String  createdDate;
	private String mobileNo;
	private String  guarantorMobNo;
	private String sMode;
	private String loanId;
	private Integer loanID;
	private String periodFrm;
	private String periodTo;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getGranterName() {
		return granterName;
	}
	public void setGranterName(String granterName) {
		this.granterName = granterName;
	}
	public String getSearchVarData() {
		return searchVarData;
	}
	public void setSearchVarData(String searchVarData) {
		this.searchVarData = searchVarData;
	}
	@Override
	public String toString() {
		return "BarrowerDetails [name=" + name + ", area=" + area + ", granterName=" + granterName + ", searchVarData="
				+ searchVarData + "]";
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
	public String getGuarantorMobNo() {
		return guarantorMobNo;
	}
	public void setGuarantorMobNo(String guarantorMobNo) {
		this.guarantorMobNo = guarantorMobNo;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getsMode() {
		return sMode;
	}
	public void setsMode(String sMode) {
		this.sMode = sMode;
	}
	public String getLoanId() {
		return loanId;
	}
	public void setLoanId(String loanId) {
		this.loanId = loanId;
	}
	public Integer getLoanID() {
		return loanID;
	}
	public void setLoanID(Integer loanID) {
		this.loanID = loanID;
	}
	public String getPeriodFrm() {
		return periodFrm;
	}
	public void setPeriodFrm(String periodFrm) {
		this.periodFrm = periodFrm;
	}
	public String getPeriodTo() {
		return periodTo;
	}
	public void setPeriodTo(String periodTo) {
		this.periodTo = periodTo;
	}
	
	

}
