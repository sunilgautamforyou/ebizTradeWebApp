package com.loanapp.ebizTradeWebApp.Service;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.apache.commons.lang.StringUtils;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.mybatis.spring.MyBatisSystemException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.loanapp.ebizTradeWebApp.dao.LoanAppDAO;
import com.loanapp.ebizTradeWebApp.entity.BarrowerDetails;
import com.loanapp.ebizTradeWebApp.entity.CustomerDto;
import com.loanapp.ebizTradeWebApp.entity.DashboardDto;
import com.loanapp.ebizTradeWebApp.entity.LoanTypeDto;
import com.loanapp.ebizTradeWebApp.entity.LoginDto;
import com.loanapp.ebizTradeWebApp.entity.ObjLnSOA;
import com.loanapp.ebizTradeWebApp.entity.ObjLoanDtl;
import com.loanapp.ebizTradeWebApp.entity.ResponseWrapper;
import com.loanapp.ebizTradeWebApp.exception.CustomSqlExection;
import com.loanapp.ebizTradeWebApp.helper.ExcelGenerator;
import com.loanapp.ebizTradeWebApp.wrapper.PaymentReceiptWrapper;
import com.loanapp.ebizTradeWebApp.wrapper.Utility;

import jakarta.servlet.http.HttpServletResponse;



@Service
public class LoanAppServiceImpl implements LoanAppService {
	
	@Autowired
	LoanAppDAO loanAppDao;
	
	CustomSqlExection sqlException = new CustomSqlExection();

	@Override
	public LoginDto loginUsingCreds(LoginDto loginDto) {
		return loanAppDao.verifyUserLogin(loginDto);
	}

	@Override
	public List<DashboardDto> getAllUserLoanData(BarrowerDetails searchDataVal) {
		return loanAppDao.getAllloanUserDashboardData(searchDataVal);
	}

	@Override
	public List<ObjLnSOA> viewSOADetailsbyLoanId(Integer loanID) {
		return loanAppDao.viewSOADetailsbyLoanId(loanID);
	}

	@Override
	public ResponseWrapper savePaymentReceipts(ObjLoanDtl objLoanDtl) {
		ResponseWrapper response = new ResponseWrapper();
		try {
			if (objLoanDtl.getLoanTypeId().equalsIgnoreCase("6") && 
					objLoanDtl.isAdvEmiFlag().equalsIgnoreCase("3") && 
					Integer.parseInt(StringUtils.isBlank(objLoanDtl.getNewMeterAmount())?"0":objLoanDtl.getNewMeterAmount()) > 0) {
						
				objLoanDtl.setLoanAmount(objLoanDtl.getNewMeterAmount());
				objLoanDtl.setEmiAmount(objLoanDtl.getNewMeterEmi());
				objLoanDtl.setNewMeterCase(true);
				objLoanDtl.setSecurityFlag("0");
				loanAppDao.saveCreateNewLoanData(objLoanDtl);
			} 
			loanAppDao.savePaymentReceipts(objLoanDtl);
			response.setErrorFlag(false);
			response.setStrMessage("Payment Received Successfully");
		} catch (Exception ex) {
			response.setStrMessage(sqlException.customSqlExection(ex));
			response.setErrorFlag(true);
		}
		return response;
	}

	@Override
	public List<BarrowerDetails> getPymnrRecvdSrchData(String searchVarData) {
		// TODO Auto-generated method stub
		return loanAppDao.getEMISearchData(searchVarData);
	}

	@Override
	public List<LoanTypeDto> getAllLoanType() {
		// TODO Auto-generated method stub
		return loanAppDao.getAllLoanType();
	}

	@Override
	public List<BarrowerDetails> getBarrowerLoanUserData(String searchVarData) {
		// TODO Auto-generated method stub
		return loanAppDao.getBarrowerDetails(searchVarData);
	}

	@Override
	public BarrowerDetails getBarrowerGranntorDeatils(Integer clientId) {
		// TODO Auto-generated method stub
		return loanAppDao.getBarrowerGranterDetails(clientId);
	}

	@Override
	public String saveNewLoanData(ObjLoanDtl objLoanData) {
		//create new loan----
		return loanAppDao.saveNewLoanUserCreation(objLoanData);
	}

	@Override
	public List<CustomerDto> getDatafromObjLoanDtlDto(BarrowerDetails searchDataVal) {
		// TODO Auto-generated method stub

		return loanAppDao.getDatafromObjLoanDtlDto(searchDataVal);
	}

	@Override
	public ResponseWrapper saveCustomerData(CustomerDto customerDto) {
		customerDto.setDob(new Date());
		if (customerDto.getsMode().toUpperCase().equalsIgnoreCase("EDIT")) {
			return loanAppDao.iUpdateCustomerData(customerDto);
		} else {
			return loanAppDao.iSaveCustomerData(customerDto);
		}
		
	}

	@Override
	public ResponseWrapper validatePymntRecvd(ObjLoanDtl objLoanData) {
		ResponseWrapper response = new ResponseWrapper();
		response.setStrMessage(loanAppDao.validateLoanCloser(objLoanData.getQueryType(), objLoanData));
		if (!response.getStrMessage().equalsIgnoreCase("OK")) {
			response.setErrorFlag(true);
		}
		return response;
	}	
	
	public ResponseWrapper loanClose(ObjLoanDtl objLoanDtl) {
		return loanAppDao.closeLoan(objLoanDtl.getLoanId());
	}

	@Override
	public CustomerDto getViewCustomerDetails(BarrowerDetails barrowerDetail) {
		return loanAppDao.getViewCustomerDetails(barrowerDetail);
	}

	@Override
	public Object getDailyPymntRegData(BarrowerDetails barrowerDetails) {
//		StringBuilder sbReportData = new StringBuilder();
		List<LinkedHashMap<String,Object>> reportData = loanAppDao.getDailyPymntRegData(barrowerDetails);
//		if (!reportData.isEmpty()) {
//			Stream<LinkedHashMap<String, Object>> dataListMapStream = reportData.stream();
//			dataListMapStream = dataListMapStream.filter(e -> e.get("sys_pType").toString().equalsIgnoreCase("pymnt"));
//			List<LinkedHashMap<String, Object>> filteredData = dataListMapStream.collect(Collectors.toList());
//			if (!filteredData.isEmpty()) {
//				sbReportData.append("<table id=\"example\" class=\"table table-striped table-bordered nowrap\" style=\"width:100%\">");
//				sbReportData.append("<thead id='tHead'>");
//				String strSumRow = "<tr>";
//				for (Entry<String, Object> thisEntry : filteredData.get(0).entrySet()) {
//					if (!thisEntry.getKey().startsWith("sys_")) {
//						sbReportData.append("<th><strong>"+ thisEntry.getKey().toString().replace("_", " ").replace("ttl", "") +"</strong></th>");
//						if (thisEntry.getKey().toString().contains("ttl")) {
//							strSumRow = strSumRow.concat("<td><strong>SumRow</strong></td>");
//						} else {
//							strSumRow = strSumRow.concat("<td></td>");
//						}
//					}
//				}
//				strSumRow = strSumRow.concat("</tr>");
//				sbReportData.append("</thead>");
//				sbReportData.append("<tbody id='tbodyLoan'>");
//				int total = 0;
//				for (LinkedHashMap<String,Object> rptDat : filteredData) {
//					sbReportData.append("<tr>");
//					for (Entry<String, Object> thisEntry : rptDat.entrySet()) {
//						if (!thisEntry.getKey().startsWith("sys_")) {
//							if (thisEntry.getKey().toString().contains("ttl")) {
//								total = total + Integer.valueOf(thisEntry.getValue().toString());
//								sbReportData.append("<td>"+ formatStr(Integer.valueOf(thisEntry.getValue().toString()))  +"</td>");
//							} else {
//								sbReportData.append("<td>"+ thisEntry.getValue() +"</td>");
//							}						
//						}
//					}
//					sbReportData.append("</tr>");
//				}
//				strSumRow = strSumRow.replace("SumRow", formatStr(total));
//				sbReportData.append(strSumRow);
//				sbReportData.append("</tbody>");
//				sbReportData.append("</table>");				
//			}
//		}
//		
//		if (!reportData.isEmpty()) {
//			Stream<LinkedHashMap<String, Object>> dataListMapStream = reportData.stream();
//			dataListMapStream = dataListMapStream.filter(e -> e.get("sys_pType").toString().equalsIgnoreCase("recvd"));
//			List<LinkedHashMap<String, Object>> filteredData = dataListMapStream.collect(Collectors.toList());
//			if (!filteredData.isEmpty()) {
//				sbReportData.append("<table id=\"tblRecvd\" class=\"table table-striped table-bordered nowrap\" style=\"width:100%\">");
//				sbReportData.append("<thead id='tHead'>");
//				String strSumRow = "<tr>";
//				for (Entry<String, Object> thisEntry : filteredData.get(0).entrySet()) {
//					if (!thisEntry.getKey().startsWith("sys_")) {
//						String colHeaderName = thisEntry.getKey();
//						colHeaderName = colHeaderName.replace("Case_Date", "Received_Date");
//						colHeaderName = colHeaderName.replace("Case_Amount", "Received_Amount");
//						colHeaderName = colHeaderName.replace("Case_Issued_By", "Payment_Received_By");
//						sbReportData.append("<th><strong>"+ colHeaderName.toString().replace("_", " ").replace("ttl", "") +"</strong></th>");
//						if (thisEntry.getKey().toString().contains("ttl")) {
//							strSumRow = strSumRow.concat("<td><strong>SumRow</strong></td>");
//						} else {
//							strSumRow = strSumRow.concat("<td></td>");
//						}
//					}
//				}
//				strSumRow = strSumRow.concat("</tr>");
//				sbReportData.append("</thead>");
//				sbReportData.append("<tbody id='tbodyRecvd'>");
//				int total = 0;
//				for (LinkedHashMap<String,Object> rptDat : filteredData) {
//					sbReportData.append("<tr>");
//					for (Entry<String, Object> thisEntry : rptDat.entrySet()) {
//						if (!thisEntry.getKey().startsWith("sys_")) {
//							if (thisEntry.getKey().toString().contains("ttl")) {
//								total = total + Integer.valueOf(thisEntry.getValue().toString());
//								sbReportData.append("<td>"+ formatStr(Integer.valueOf(thisEntry.getValue().toString()))  +"</td>");
//							} else {
//								sbReportData.append("<td>"+ thisEntry.getValue() +"</td>");
//							}						
//						}
//					}
//					sbReportData.append("</tr>");
//				}
//				strSumRow = strSumRow.replace("SumRow", formatStr(total));
//				sbReportData.append(strSumRow);
//				sbReportData.append("</tbody>");
//				sbReportData.append("</table>");				
//			}
//		}

		return reportData;
	}
	
	public String formatStr(int val) {
		 return String.format(Locale.UK, "%,d", val);
		}

	@Override
	public String getPaymentReceiptData(BarrowerDetails searchDataVal) {
		PaymentReceiptWrapper wrapper = new PaymentReceiptWrapper();
		List<HashMap<String,Object>> arrJsonFldDatObj = new ArrayList<>();
		String out = "";
		try {
			List<DashboardDto> lstdashBoard = loanAppDao.getDataForPymntRcptPG(searchDataVal);
			for (DashboardDto dashBoard : lstdashBoard) {
				LinkedHashMap<String, Object> mapDataDashBoard = Utility.ConvertObjectToMap(dashBoard);
				arrJsonFldDatObj.add(mapDataDashBoard);
			}
			wrapper.setArrJsonFldDatObj(arrJsonFldDatObj);
			out = new ObjectMapper().writerWithDefaultPrettyPrinter().writeValueAsString(wrapper);
		} catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException | JsonProcessingException e) {
			e.printStackTrace();
		} 
		
		
		return out;
	}

	@Override
	public List<BarrowerDetails> getDataForPymntRecvd(String searchVarData) {
		return loanAppDao.getDataForPymntRecvd(searchVarData);
	}

	@Override
	public List<DashboardDto> getLoanDataInActivePG(BarrowerDetails barrowerDetails) {
		return loanAppDao.getDataForPymntRcptPG(barrowerDetails);
	}

	@Override
	public List<ObjLoanDtl> getPymntRevdInActiveDatPG(BarrowerDetails barrowerDetail) {
		return loanAppDao.getPymntRevdInActiveDatPG(barrowerDetail);
	}

	@Override
	public ResponseWrapper updatePaymentRecevdInactive(ObjLoanDtl objLoanDtl) {
		ResponseWrapper wrapper = new ResponseWrapper();
		try {
			loanAppDao.deleteLoanData(objLoanDtl);
			wrapper.setErrorFlag(Boolean.FALSE);
			if (objLoanDtl.getQueryType().equalsIgnoreCase("recvd")) {
				wrapper.setStrMessage("Payment Receipt Deleted Successfully");
			} else if (objLoanDtl.getQueryType().equalsIgnoreCase("pymnt")) {
				wrapper.setStrMessage("Loan Deleted Successfully");
			}
			
		} catch (Exception ex) {
			wrapper.setErrorFlag(Boolean.TRUE);
			if (ex instanceof  MyBatisSystemException) {
				wrapper.setStrMessage(ex.toString());
			} else {
				wrapper.setStrMessage(sqlException.customSqlExection(ex));
			}
			
		}
		return wrapper;
	}

	@Override
	public List<DashboardDto> generatePendingDuesExcel() throws IOException {
		BarrowerDetails searchDataVal = new BarrowerDetails();
		searchDataVal.setSearchVarData("A");
		return loanAppDao.getAllloanUserDashboardData(searchDataVal);
	}	

}
