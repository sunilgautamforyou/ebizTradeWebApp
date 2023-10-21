/**
 * 
 */
package com.loanapp.ebizTradeWebApp.Controller;



import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.InputStreamResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.loanapp.ebizTradeWebApp.Service.LoanAppService;
import com.loanapp.ebizTradeWebApp.entity.BarrowerDetails;
import com.loanapp.ebizTradeWebApp.entity.CustomerDto;
import com.loanapp.ebizTradeWebApp.entity.DashboardDto;
import com.loanapp.ebizTradeWebApp.entity.LoanTypeDto;
import com.loanapp.ebizTradeWebApp.entity.LoginDto;
import com.loanapp.ebizTradeWebApp.entity.ObjLoanDtl;
import com.loanapp.ebizTradeWebApp.entity.ResponseWrapper;
import com.loanapp.ebizTradeWebApp.helper.ExcelGenerator;
import com.loanapp.ebizTradeWebApp.helper.UserExcelExporter;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;







@RestController
public class Controller {
	
	@Autowired
	LoanAppService iLoanAppService;

	@Autowired  
	HttpSession httpSession;
	
	@Autowired
	HttpServletResponse httpServletresponse;
	

	@PostMapping("/login")
	public Object loginIntoSystem(@RequestBody LoginDto loginDto)
	{
		System.err.println("loginDetails---------------"+loginDto.toString());
		LoginDto loginDetails=iLoanAppService.loginUsingCreds(loginDto);
		if(loginDetails.getId()!=null) {

			//session.setAttribute("Name", loginDetails.getLoginName());
		  // session.setAttribute("pkey", loginDetails.getId());

			httpSession.setAttribute("Name", loginDetails.getLoginName());
			httpSession.setAttribute("pkey", loginDetails.getId());

		}
		return loginDetails;
	}
	@PostMapping("/get-all-user-loan-data")
	public List<DashboardDto> getAllUserLoanDataFordashBoard(@RequestBody BarrowerDetails  barrowerDetails)
	{
		System.err.println("-------- Value :" + barrowerDetails.getSearchVarData());
		return iLoanAppService.getAllUserLoanData(barrowerDetails);
	}
	
	@PostMapping("/showFormVWSOADtl")
	public Object viewSOADetailsbyLoanId(@RequestBody BarrowerDetails  barrowerDetails) {
		return iLoanAppService.viewSOADetailsbyLoanId(barrowerDetails.getLoanID());
	}
	
	@PostMapping("/create-new-payment-receipt")
	public ResponseWrapper savePaymentReceipt(@RequestBody ObjLoanDtl objLoanData)
	{
		System.err.println("/save payment Receipts data--------------"+objLoanData.toString());
		ResponseWrapper response = new ResponseWrapper();
		response = iLoanAppService.savePaymentReceipts(objLoanData);
		return response;
	}
	
	@PostMapping("/validate-payment-receipt")
	public ResponseWrapper validateReceipt(@RequestBody ObjLoanDtl objLoanData) {
		ResponseWrapper response = new ResponseWrapper();
		objLoanData.setQueryType("vldRcvdAmt");
		response = iLoanAppService.validatePymntRecvd(objLoanData);
		return response;
	}
	
	@PostMapping("/validate-loan-close")
	public ResponseWrapper validateLoanClose(@RequestBody ObjLoanDtl objLoanData) {
		ResponseWrapper response = new ResponseWrapper();
		objLoanData.setQueryType("vldLnClose");
		response = iLoanAppService.validatePymntRecvd(objLoanData);
		return response;
	}	
	
	@PostMapping("/loan-close")
	public ResponseWrapper updateLoanClose(@RequestBody ObjLoanDtl objLoanData) {
		ResponseWrapper response = new ResponseWrapper();
		response = iLoanAppService.loanClose(objLoanData);
		return response;
	}		
	
	@PostMapping("/get-pymntRcvd-srch")
	public List<BarrowerDetails> getLn1PymntRvcdSrchData(@RequestBody BarrowerDetails searchDataVal) {
		List<BarrowerDetails> barrowerDeails= iLoanAppService.getPymnrRecvdSrchData(searchDataVal.getSearchVarData());
		System.out.println(barrowerDeails.toString());
		return barrowerDeails;
	}
	
	@GetMapping("/get-all-loan-type")
	public Object getAllLoanType()
	{
		List<LoanTypeDto> loanType=iLoanAppService.getAllLoanType();
		return loanType;
		
	}
	@PostMapping("/get-barrower-loan-user-list")
	public List<BarrowerDetails> getBarrowerDeatils(@RequestBody BarrowerDetails searchDataVal)
	{
	  System.out.println("get barrower details :::::::::"+searchDataVal.getSearchVarData());	
		List<BarrowerDetails> barrowerDeails=iLoanAppService.getBarrowerLoanUserData(searchDataVal.getSearchVarData());
		System.out.println(barrowerDeails.toString());
		return barrowerDeails;
		
	}
	@PostMapping("/get-barrower-loan-pymnt-list")
	public List<BarrowerDetails> getDataForPymntRecvd(@RequestBody BarrowerDetails searchDataVal)
	{
	  System.out.println("get barrower details :::::::::"+searchDataVal.getSearchVarData());	
		List<BarrowerDetails> barrowerDeails=iLoanAppService.getDataForPymntRecvd(searchDataVal.getSearchVarData());
		System.out.println(barrowerDeails.toString());
		return barrowerDeails;
		
	}	
	@PostMapping("/get-barrower-loan-user-data")
	public BarrowerDetails getBarrowerGrnntorDeatils(@RequestBody BarrowerDetails searchDataVal)
	{
	  System.out.println("get barrower details :::::::::"+searchDataVal.getSearchVarData());	
		BarrowerDetails barrowerDeails=iLoanAppService.getBarrowerGranntorDeatils(searchDataVal.getClientId());
		System.out.println(barrowerDeails.toString());
		return barrowerDeails;
		
	}
	@PostMapping("/create-new-loan")
	public Object saveLoanData(@RequestBody ObjLoanDtl objLoanData)
	{
		System.err.println("/save loan data--------------"+objLoanData.toString());
		String LoanNumber=iLoanAppService.saveNewLoanData(objLoanData);
		return LoanNumber;
		
	}
	

	@PostMapping("/get-Guaranteer-srch")
	public List<CustomerDto> getLnPymntRvcdSrchData(@RequestBody BarrowerDetails searchDataVal) {
		List<CustomerDto> barrowerDeails= iLoanAppService.getDatafromObjLoanDtlDto(searchDataVal);
		return barrowerDeails;
	}	
	
	@PostMapping("/save-CustomerData")
	public ResponseWrapper saveCustomerData(@RequestBody CustomerDto customerDto) {
		System.err.println("/save payment Receipts data--------------"+customerDto.toString());
		return iLoanAppService.saveCustomerData(customerDto);
	}
	
	@GetMapping("/get-customer-details-homePG")
	public List<CustomerDto> getCustomerDetailsHomePG() {
		BarrowerDetails searchDataVal = new BarrowerDetails();
		searchDataVal.setSearchVarData("homePG");
		List<CustomerDto> barrowerDeails= iLoanAppService.getDatafromObjLoanDtlDto(searchDataVal);
		return barrowerDeails;
	}	
	
	//@PostMapping("/update-customer-details")
	//@RequestMapping(value = "/update-customer-details", method = { RequestMethod.GET, RequestMethod.POST })
	@GetMapping("/update-customer-details")
	public ModelAndView updatCustomerDetails(@RequestParam("searchVarData") String searchVarData,
			@RequestParam("clientId") Integer clientId) {
		System.err.println("-----Calling Data---");
		ModelAndView view = new ModelAndView();
		BarrowerDetails  barrowerDetails = new  BarrowerDetails();
		barrowerDetails.setSearchVarData(searchVarData);
		barrowerDetails.setClientId(clientId);		
		view.addObject("sMode", searchVarData);
		view.addObject("data", iLoanAppService.getViewCustomerDetails(barrowerDetails));
		view.setViewName("clientMasterNew");
		return view;		
	}	
	
	@PostMapping("/reports-Loan-Issued")
	public Object getReportsData(@RequestBody BarrowerDetails searchDataVal) {
		System.err.println("-----Calling Data:: getReportsData---");
		return iLoanAppService.getDailyPymntRegData(searchDataVal);
	}

	@GetMapping("/get-pymnt-receipt")
	public String getPymntReceiptData(@RequestParam("searchVarData") String searchVarData,
			@RequestParam("clientId") Integer clientId)
	{
		// @RequestBody BarrowerDetails  barrowerDetails
		BarrowerDetails  barrowerDetails = new  BarrowerDetails();
		barrowerDetails.setSearchVarData(searchVarData);
		barrowerDetails.setClientId(clientId);
		barrowerDetails.setLoanId(null);
		System.err.println("-------- Value :" + barrowerDetails.getSearchVarData());
		return iLoanAppService.getPaymentReceiptData(barrowerDetails);
	}
	
	@PostMapping("/InActive-CustWise-LoanPymntData")
	public List<DashboardDto> getCustWiseLoanData(@RequestBody BarrowerDetails searchDataVal) {
		//searchDataVal.setLoanID(null);
		return iLoanAppService.getLoanDataInActivePG(searchDataVal);
	}
	
	@PostMapping("/InActive-PymntRecvdData")
	public List<ObjLoanDtl> getPymntRevdInActiveDatPG(@RequestBody BarrowerDetails searchDataVal) {
		//searchDataVal.setLoanID(null);
		return iLoanAppService.getPymntRevdInActiveDatPG(searchDataVal);
	}	
	@PostMapping("/InActive-Del-pymntRecvd")
	public ResponseWrapper delPymntRecvd(@RequestBody ObjLoanDtl objLoanDtl) {
		return iLoanAppService.updatePaymentRecevdInactive(objLoanDtl);
	}	
	
	@SuppressWarnings("rawtypes")
	@GetMapping("/reports-pending-dues")
	public void generateDueReport() throws IOException {

//		ByteArrayOutputStream stream = new ByteArrayOutputStream();
//		XSSFWorkbook workbook = iLoanAppService.generatePendingDuesExcel(httpServletresponse); // creates the workbook
//		HttpHeaders header = new HttpHeaders();
//		header.setContentType(new MediaType("application", "force-download"));
//		header.set(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=ProductTemplate.xlsx");
//		workbook.write(stream);
//		return new ResponseEntity<>(new ByteArrayResource(stream.toByteArray()),
//                header, HttpStatus.CREATED);
		
		httpServletresponse.setContentType("application/octet-stream");
		DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss");
		String currentDateTime = dateFormatter.format(new Date());
		String headerKey = "Content-Disposition";
		String headerValue = "attachment; filename=users_" + currentDateTime + ".xlsx";
		httpServletresponse.setHeader(headerKey, headerValue);
		List<DashboardDto> dasboardDto = iLoanAppService.generatePendingDuesExcel(); // creates the workbook
		UserExcelExporter excelExporter = new UserExcelExporter(dasboardDto);
		excelExporter.export(httpServletresponse); 
	}
	

}
