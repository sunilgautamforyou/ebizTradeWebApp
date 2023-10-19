package com.loanapp.ebizTradeWebApp.dao;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.loanapp.ebizTradeWebApp.SqlMapper.MapperDAO;
import com.loanapp.ebizTradeWebApp.entity.BarrowerDetails;
import com.loanapp.ebizTradeWebApp.entity.CustomerDto;
import com.loanapp.ebizTradeWebApp.entity.DashboardDto;
import com.loanapp.ebizTradeWebApp.entity.LoanNoGenrator;
import com.loanapp.ebizTradeWebApp.entity.LoanTypeDto;
import com.loanapp.ebizTradeWebApp.entity.LoginDto;
import com.loanapp.ebizTradeWebApp.entity.ObjLnSOA;
import com.loanapp.ebizTradeWebApp.entity.ObjLoanDtl;
import com.loanapp.ebizTradeWebApp.entity.ResponseWrapper;
import com.loanapp.ebizTradeWebApp.exception.CustomSqlExection;

@Repository
public class LoanAppDAOImpl implements LoanAppDAO {

	@Autowired
	private MapperDAO sqlDAOMapper;
	
	CustomSqlExection customSqlExection = new CustomSqlExection();
	
	@Override
	public LoginDto verifyUserLogin(LoginDto loginDto) {
		// TODO Auto-generated method stub
		return sqlDAOMapper.getLoginDetails(loginDto.getUsername(), loginDto.getPassword());
	}

	@Override
	public List<DashboardDto> getAllloanUserDashboardData(BarrowerDetails searchDataVal) {
		List<DashboardDto> dasboardData =null;
		try {
		 dasboardData= sqlDAOMapper.getAllloanUserDashboardData(searchDataVal.getSearchVarData());
		} catch (Exception e) {
			e.printStackTrace();		
			}
		return dasboardData;
		
	}

	@Override
	public List<ObjLnSOA> viewSOADetailsbyLoanId(Integer loanID) {
		List<ObjLnSOA> objectLoanSOA=null;
		try {
			objectLoanSOA=sqlDAOMapper.getviewSOADetailsbyLoanId(loanID);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return objectLoanSOA;
	}

	/*
	 * @Override public int savePaymentReceipts(ObjLoanDtl objLoanData) { int i=0;
	 * try { i=sqlDAOMapper.savePaymentReceipts(objLoanData); } catch (Exception e)
	 * { // TODO: handle exception } return i; }
	 */
	
	// change by sunil
	public int savePaymentReceipts(ObjLoanDtl objLoanData) {
		int i = 0;
		if (objLoanData.isNewMeterCase() == true) {
			LoanNoGenrator loanNoGenrator = new LoanNoGenrator();
			loanNoGenrator.setLoanTypeId(Integer.valueOf(objLoanData.getLoanTypeId()));
			loanNoGenrator.setCreatedDate(new SimpleDateFormat("dd/MMMM/yyyy").format(new Date()));
			loanNoGenrator.setClientId(Integer.valueOf(objLoanData.getCustomerId()));
			objLoanData.setLoanNmber(getLoanNumberByLoanType(loanNoGenrator));
			objLoanData.setLoanDate(loanNoGenrator.getCreatedDate());
			objLoanData.setLoanTenure("0");
			objLoanData.setNextPaymentDate("");
			i = sqlDAOMapper.updateLoanStatusCode(objLoanData.getLoanId());
		}
		System.err.println(objLoanData.toString());
		 i=sqlDAOMapper.savePaymentReceipts(objLoanData);
		return i;
	}
	
	public String getLoanNumberByLoanType(LoanNoGenrator loanNoGenrator) {
		// TODO Auto-generated method stub
		return sqlDAOMapper.genrateLoanNo(loanNoGenrator);
	}

	@Override
	public ResponseWrapper saveCreateNewLoanData(ObjLoanDtl objLoanDtl) {
		ResponseWrapper wrapper = new ResponseWrapper();
		try {
			if (objLoanDtl.isNewMeterCase() == true) {
				LoanNoGenrator loanNoGenrator = new LoanNoGenrator();
				loanNoGenrator.setLoanTypeId(Integer.valueOf(objLoanDtl.getLoanTypeId()));
				loanNoGenrator.setCreatedDate(new SimpleDateFormat("dd/MMMM/yyyy").format(new Date()));
				loanNoGenrator.setClientId(Integer.valueOf(objLoanDtl.getCustomerId()));
				objLoanDtl.setLoanNmber(getLoanNumberByLoanType(loanNoGenrator));
				objLoanDtl.setLoanDate(loanNoGenrator.getCreatedDate());
				objLoanDtl.setLoanTenure("0");
				objLoanDtl.setNextPaymentDate("");
				sqlDAOMapper.updateLoanStatusCode(objLoanDtl.getLoanId());
			}
			  sqlDAOMapper.loanPayments(objLoanDtl);
		} catch (Exception ex) {
			wrapper.setStrMessage(customSqlExection.customSqlExection(ex));
			wrapper.setErrorFlag(true);			
		}
		return wrapper;		
		
	}

	@Override
	public List<LoanTypeDto> getAllLoanType() {
		// TODO Auto-generated method stub
		return sqlDAOMapper.getAllLoanType();
	}

	@Override
	public List<BarrowerDetails> getBarrowerDetails(String searchVarData) {
		// TODO Auto-generated method stub
		return sqlDAOMapper.getBarrowerDetails(searchVarData);
	}

	@Override
	public BarrowerDetails getBarrowerGranterDetails(Integer clientId) {
		// TODO Auto-generated method stub
		return sqlDAOMapper.getBarrowerGranterDetails(clientId);
	}

	@Override
	public String saveNewLoanUserCreation(ObjLoanDtl objLoanData) {
		LoanNoGenrator loanNoGenrator = new LoanNoGenrator();
		loanNoGenrator.setLoanTypeId(Integer.valueOf(objLoanData.getLoanTypeId()));
		loanNoGenrator.setCreatedDate(new SimpleDateFormat("dd/MMMM/yyyy").format(new Date()));
		loanNoGenrator.setClientId(Integer.valueOf(objLoanData.getCustomerId()));
		String loanId=getLoanNumberByLoanType(loanNoGenrator);
		objLoanData.setLoanNmber(loanId);
		
		//objLoanData.setLoanDate(loanNoGenrator.getCreatedDate());
		objLoanData.setNextPaymentDate("");
		int  i=sqlDAOMapper.loanPayments(objLoanData);
		return loanId;
	}

	@Override
	public List<BarrowerDetails> getEMISearchData(String searchVarData) {
		// TODO Auto-generated method stub
		System.err.println("searchVarData--------"+searchVarData);
		return sqlDAOMapper.getEMISearchData(searchVarData);
	}

	@Override
	public List<CustomerDto> getDatafromObjLoanDtlDto(BarrowerDetails searchDataVal) {
		// TODO Auto-generated method stub
		if (searchDataVal.getSearchVarData().equalsIgnoreCase("homePG")) {
			return sqlDAOMapper.getAllCustomerDetails();
		} else {
			return sqlDAOMapper.getGuaranteerData(searchDataVal.getSearchVarData());
		}
	}

	
	@Override
	public ResponseWrapper iSaveCustomerData(CustomerDto customerDto) {
		ResponseWrapper reponse = new ResponseWrapper();
		
		try {
			if (StringUtils.isBlank(customerDto.getGuarantor_master_id())) {
				if (!StringUtils.isBlank(customerDto.getGuarantor_Mobile_No())) {
				reponse.setStrMessage(sqlDAOMapper.checkGuaranteerExists(customerDto.getGuarantor_Mobile_No()));
				if (reponse != null) {
					if (StringUtils.isNotBlank(reponse.getStrMessage())) {
						return reponse;
					}
				}					
			}
   		    customerDto.setGuarantor_master_id(sqlDAOMapper.sequence_guaranteerId());
		    sqlDAOMapper.iInsertGuaranteerMaster(customerDto);
		}
			sqlDAOMapper.iInsertCustomerData(customerDto);
			reponse.setStrMessage("Success");
		} catch (Exception ex) {
			System.err.println(ex.getMessage());
			reponse.setStrMessage(customSqlExection.customSqlExection(ex));
		}
		return reponse;
	}
	
	@Override
	public ResponseWrapper iUpdateCustomerData(CustomerDto customerDto) {
		ResponseWrapper reponse = new ResponseWrapper();
		try {
			sqlDAOMapper.iUpdateCustomerData(customerDto);
			sqlDAOMapper.iUpdateGuaranteerData(customerDto);
			reponse.setStrMessage("Success");
		} catch (Exception ex) {
			System.err.println(ex.getMessage());
			reponse.setStrMessage(customSqlExection.customSqlExection(ex));
		}
		return reponse;
	}	

	@Override
	public String validateLoanCloser(String queryType,ObjLoanDtl pbjLoanDtl) {
		return sqlDAOMapper.validateLoanClose(queryType, pbjLoanDtl);
	}

	@Override
	public ResponseWrapper closeLoan(String loanId) {
		ResponseWrapper response = new ResponseWrapper();
		try {
			sqlDAOMapper.updateLoanStatusCode(loanId);
			response.setStrMessage("Loan Closed Successfully");
			response.setErrorFlag(false);
		} catch (Exception ex) {
			response.setStrMessage(customSqlExection.customSqlExection(ex));
			response.setErrorFlag(true);
		}
		return response;
	}

	@Override
	public CustomerDto getViewCustomerDetails(BarrowerDetails barrowerDetail) {
		return sqlDAOMapper.getViewCustomerDetails(String.valueOf(barrowerDetail.getClientId()));
	}

	@Override
	public List<LinkedHashMap<String, Object>> getDailyPymntRegData(BarrowerDetails barrowerDetails) {
		return sqlDAOMapper.getDailyPaymentRegData(barrowerDetails);
	}

	@Override
	public List<DashboardDto> getDataForPymntRcptPG(BarrowerDetails searchDataVal) {
		return sqlDAOMapper.getDataForPymntRcptPG(searchDataVal);
	}

	@Override
	public List<BarrowerDetails> getDataForPymntRecvd(String searchVarData) {
		return sqlDAOMapper.getDataForPymntRecvd(searchVarData);
	}

	@Override
	public List<ObjLoanDtl> getPymntRevdInActiveDatPG(BarrowerDetails barrowerDetail) {
		return sqlDAOMapper.getPymntRevdInActiveDatPG(barrowerDetail);
	}

	@Override
	public void deleteLoanData(ObjLoanDtl objLoanDtl) {
		if (objLoanDtl.getQueryType().equalsIgnoreCase("recvd")) {
			sqlDAOMapper.DeletePymntRecvd(objLoanDtl);
		} else if (objLoanDtl.getQueryType().equalsIgnoreCase("pymnt")) {
			sqlDAOMapper.deleteLoanIssued(objLoanDtl);
		}
	}



}
