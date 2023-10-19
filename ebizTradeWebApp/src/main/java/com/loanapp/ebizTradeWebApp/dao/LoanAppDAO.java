package com.loanapp.ebizTradeWebApp.dao;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.loanapp.ebizTradeWebApp.entity.BarrowerDetails;
import com.loanapp.ebizTradeWebApp.entity.CustomerDto;
import com.loanapp.ebizTradeWebApp.entity.DashboardDto;
import com.loanapp.ebizTradeWebApp.entity.LoanTypeDto;
import com.loanapp.ebizTradeWebApp.entity.LoginDto;
import com.loanapp.ebizTradeWebApp.entity.ObjLnSOA;
import com.loanapp.ebizTradeWebApp.entity.ObjLoanDtl;
import com.loanapp.ebizTradeWebApp.entity.ResponseWrapper;

public interface LoanAppDAO {
	
	public LoginDto verifyUserLogin(LoginDto loginDto);
	public List<DashboardDto> getAllloanUserDashboardData(BarrowerDetails searchDataVal);
	public List<ObjLnSOA> viewSOADetailsbyLoanId(Integer loanID);
	public int savePaymentReceipts(ObjLoanDtl objLoanData);
	public ResponseWrapper saveCreateNewLoanData(ObjLoanDtl objLoanDtl);
	public List<LoanTypeDto> getAllLoanType();
	public  List<BarrowerDetails> getBarrowerDetails(String searchVarData);
	public BarrowerDetails getBarrowerGranterDetails(Integer clientId);
	public String saveNewLoanUserCreation(ObjLoanDtl objLoanData);
	public List<BarrowerDetails> getEMISearchData(String searchVarData);
	public List<CustomerDto> getDatafromObjLoanDtlDto(BarrowerDetails searchDataVal);
	public ResponseWrapper iSaveCustomerData(CustomerDto customerDto);
	public String validateLoanCloser(String queryType,ObjLoanDtl pbjLoanDtl);
	public ResponseWrapper closeLoan(String loanId);
	public CustomerDto getViewCustomerDetails(BarrowerDetails barrowerDetail);
	public List<LinkedHashMap<String,Object>> getDailyPymntRegData(BarrowerDetails barrowerDetails);
	public List<DashboardDto> getDataForPymntRcptPG(BarrowerDetails searchDataVal);
	public List<BarrowerDetails> getDataForPymntRecvd(String searchVarData);
	public ResponseWrapper iUpdateCustomerData(CustomerDto customerDto);
	public List<ObjLoanDtl> getPymntRevdInActiveDatPG(BarrowerDetails barrowerDetail);
	public void deleteLoanData(ObjLoanDtl objLoanDtl);
}
