package com.loanapp.ebizTradeWebApp.entity;

import java.util.Date;

public class CustomerDto {
	
	private String client_id;
	private String name;
	private Date dob;
	private String age;
	private String current_address;
	private String permant_address;
	private String mobile_number;
	private String company_name;
	private String nature_of_work;
	private String office_address;
	private String office_phone_no;
	private String email_address;
	private String guarantor_name;
	private String guarantor_Mobile_No;
	private String guarantor_area;
	private String guarantor_gender;
	private String guarantor_master_id;
	private String guarantor_Address;
	private String identity_Proof_type;
	private String id_Proof_No;
	private String client_Area;
	private String strMessage;
	private String sMode;
	
	public String getClient_id() {
		return client_id;
	}
	public void setClient_id(String client_id) {
		this.client_id = client_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}


	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getCurrent_address() {
		return current_address;
	}
	public void setCurrent_address(String current_address) {
		this.current_address = current_address;
	}
	public String getPermant_address() {
		return permant_address;
	}
	public void setPermant_address(String permant_address) {
		this.permant_address = permant_address;
	}
	public String getMobile_number() {
		return mobile_number;
	}
	public void setMobile_number(String mobile_number) {
		this.mobile_number = mobile_number;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getNature_of_work() {
		return nature_of_work;
	}
	public void setNature_of_work(String nature_of_work) {
		this.nature_of_work = nature_of_work;
	}
	public String getOffice_address() {
		return office_address;
	}
	public void setOffice_address(String office_address) {
		this.office_address = office_address;
	}
	public String getOffice_phone_no() {
		return office_phone_no;
	}
	public void setOffice_phone_no(String office_phone_no) {
		this.office_phone_no = office_phone_no;
	}
	public String getEmail_address() {
		return email_address;
	}
	public void setEmail_address(String email_address) {
		this.email_address = email_address;
	}
	public String getGuarantor_name() {
		return guarantor_name;
	}
	public void setGuarantor_name(String guarantor_name) {
		this.guarantor_name = guarantor_name;
	}
	public String getGuarantor_Mobile_No() {
		return guarantor_Mobile_No;
	}
	public void setGuarantor_Mobile_No(String guarantor_Mobile_No) {
		this.guarantor_Mobile_No = guarantor_Mobile_No;
	}
	public String getGuarantor_master_id() {
		return guarantor_master_id;
	}
	public void setGuarantor_master_id(String guarantor_master_id) {
		this.guarantor_master_id = guarantor_master_id;
	}
	public String getIdentity_Proof_type() {
		return identity_Proof_type;
	}
	public void setIdentity_Proof_type(String identity_Proof_type) {
		this.identity_Proof_type = identity_Proof_type;
	}
	public String getId_Proof_No() {
		return id_Proof_No;
	}
	public void setId_Proof_No(String id_Proof_No) {
		this.id_Proof_No = id_Proof_No;
	}
	public String getClient_Area() {
		return client_Area;
	}
	public void setClient_Area(String client_Area) {
		this.client_Area = client_Area;
	}
	public String getGuarantor_area() {
		return guarantor_area;
	}
	public void setGuarantor_area(String guarantor_area) {
		this.guarantor_area = guarantor_area;
	}
	public String getGuarantor_Address() {
		return guarantor_Address;
	}
	public void setGuarantor_Address(String guarantor_Address) {
		this.guarantor_Address = guarantor_Address;
	}
	public String getGuarantor_gender() {
		return guarantor_gender;
	}
	public void setGuarantor_gender(String guarantor_gender) {
		this.guarantor_gender = guarantor_gender;
	}
	
	
	
	public String getStrMessage() {
		return strMessage;
	}
	public void setStrMessage(String strMessage) {
		this.strMessage = strMessage;
	}
	
	
	
	
	public String getsMode() {
		return sMode;
	}
	public void setsMode(String sMode) {
		this.sMode = sMode;
	}
	@Override
	public String toString() {
		return "CustomerDto [client_id=" + client_id + ", name=" + name + ", dob=" + dob + ", age=" + age
				+ ", current_address=" + current_address + ", permant_address=" + permant_address + ", mobile_number="
				+ mobile_number + ", company_name=" + company_name + ", nature_of_work=" + nature_of_work
				+ ", office_address=" + office_address + ", office_phone_no=" + office_phone_no + ", email_address="
				+ email_address + ", guarantor_name=" + guarantor_name + ", guarantor_Mobile_No=" + guarantor_Mobile_No
				+ ", guarantor_area=" + guarantor_area + ", guarantor_gender=" + guarantor_gender
				+ ", guarantor_master_id=" + guarantor_master_id + ", guarantor_Address=" + guarantor_Address
				+ ", identity_Proof_type=" + identity_Proof_type + ", id_Proof_No=" + id_Proof_No + ", client_Area="
				+ client_Area + "]";
	}
	
	
}
