package com.loanapp.ebizTradeWebApp.Service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.loanapp.ebizTradeWebApp.entity.BarrowerDetails;
import com.loanapp.ebizTradeWebApp.entity.CustomerDto;
import com.loanapp.ebizTradeWebApp.entity.DashboardDto;
import com.loanapp.ebizTradeWebApp.entity.LoanTypeDto;
import com.loanapp.ebizTradeWebApp.entity.LoginDto;
import com.loanapp.ebizTradeWebApp.entity.ObjLoanDtl;
import com.loanapp.ebizTradeWebApp.entity.ResponseWrapper;
import com.loanapp.ebizTradeWebApp.wrapper.PaymentReceiptWrapper;

public interface LoanAppService {
	public LoginDto loginUsingCreds(LoginDto loginDto);
	public List<DashboardDto> getAllUserLoanData(BarrowerDetails searchDataVal);
	public Object viewSOADetailsbyLoanId(Integer loanID);
	public ResponseWrapper savePaymentReceipts(ObjLoanDtl objLoanData);
	public List<BarrowerDetails> getPymnrRecvdSrchData(String searchVarData);
	public List<LoanTypeDto> getAllLoanType();
	public List<BarrowerDetails> getBarrowerLoanUserData(String searchVarData);
	public BarrowerDetails getBarrowerGranntorDeatils(Integer clientId);
	public String saveNewLoanData(ObjLoanDtl objLoanData);
	public List<CustomerDto> getDatafromObjLoanDtlDto(BarrowerDetails searchDataVal);
	public ResponseWrapper saveCustomerData(CustomerDto customerDto);
	public ResponseWrapper validatePymntRecvd(ObjLoanDtl objLoanData);
	public ResponseWrapper loanClose(ObjLoanDtl objLoanDtl);
	public CustomerDto getViewCustomerDetails(BarrowerDetails barrowerDetail);
	public Object getDailyPymntRegData(BarrowerDetails barrowerDetails);
	public String getPaymentReceiptData(BarrowerDetails barrowerDetails);
	public List<BarrowerDetails> getDataForPymntRecvd(String searchVarData);
	public List<DashboardDto> getLoanDataInActivePG(BarrowerDetails barrowerDetails);
	public List<ObjLoanDtl> getPymntRevdInActiveDatPG(BarrowerDetails barrowerDetail);
	public ResponseWrapper updatePaymentRecevdInactive(ObjLoanDtl objLoanDtl);
}
