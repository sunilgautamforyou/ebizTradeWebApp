package com.loanapp.ebizTradeWebApp.Service;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.loanapp.ebizTradeWebApp.entity.BarrowerDetails;
import com.loanapp.ebizTradeWebApp.entity.CustomerDto;
import com.loanapp.ebizTradeWebApp.entity.DashboardDto;
import com.loanapp.ebizTradeWebApp.entity.LoanTypeDto;
import com.loanapp.ebizTradeWebApp.entity.LoginDto;
import com.loanapp.ebizTradeWebApp.entity.ObjLoanDtl;
import com.loanapp.ebizTradeWebApp.entity.ResponseWrapper;
import com.loanapp.ebizTradeWebApp.wrapper.PaymentReceiptWrapper;

import org.springframework.core.io.Resource;
import org.springframework.http.ResponseEntity;
import jakarta.servlet.http.HttpServletResponse;

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
	public List<DashboardDto> generatePendingDuesExcel() throws IOException;
}
