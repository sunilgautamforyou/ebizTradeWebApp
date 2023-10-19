package com.loanapp.ebizTradeWebApp.SqlMapper;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.loanapp.ebizTradeWebApp.entity.BarrowerDetails;
import com.loanapp.ebizTradeWebApp.entity.CustomerDto;
import com.loanapp.ebizTradeWebApp.entity.DashboardDto;
import com.loanapp.ebizTradeWebApp.entity.LoanNoGenrator;
import com.loanapp.ebizTradeWebApp.entity.LoanTypeDto;
import com.loanapp.ebizTradeWebApp.entity.LoginDto;
import com.loanapp.ebizTradeWebApp.entity.ObjLnSOA;
import com.loanapp.ebizTradeWebApp.entity.ObjLoanDtl;
import com.loanapp.ebizTradeWebApp.entity.ResponseWrapper;

@Mapper
public interface MapperDAO {

	@Select("SELECT  Login_Id,Login_Name,Login_Type From  Login_Master where Login_User_Id = #{username} and Login_User_Password=#{password}")
	@Results({
		@Result(property = "id", column = "Login_Id"),
		@Result(property = "loginName", column = "Login_Name"),
		@Result(property = "role", column = "Login_Type")
	})
	public LoginDto getLoginDetails(@Param("username") String username,@Param("password") String password);

	@Select("select * from fn_get_landing_pg_data(null,#{loanStatus})")
	@Results({
		@Result( column="loan_id", property="loanId" ),
		@Result( column="Customer_id", property="clientId" ),
		@Result( column="Client_Name" ,property="clientName"),
		@Result(column="Guarantor_Name", property="guarantorName"),
		@Result( column="Client_Area", property="clientArea" ),
		@Result( column="case_no", property="loanNmber"),
		@Result(column="Loan_Date", property="loanDate"),
		@Result( column="case_amount", property="loanAmount" ),
		@Result( column="emi_amount", property="emiAmount" ),
		@Result( column="dueDays", property="dueDays" ),
		@Result( column="pendingAsonDate", property="pendingAmount" ),
		@Result( column="rcvng_date", property="lastRcvngDate" ),
		@Result( column="loan_tenure", property="loanTenure" ),
		@Result( column="total_recvd", property="totalRcvdAmount" ),
		@Result( column="closure_date", property="loanClosureDate" ),
		@Result(column="Loan_Type_Id", property="loanTypeId"  )
	})
	public List<DashboardDto> getAllloanUserDashboardData(@Param("loanStatus") String loanStatus);
	@Select("Select * from dbo.fun_loan_soa(#{loanId})")
	@Results({
		@Result( column="srlNo", property="srlNo"),
		@Result( column="entrydate", property="receivedDate"),
		@Result( column="description", property="description"),
		@Result( column="loanAmount", property="loanAmount"),
		@Result( column="recvdAmount", property="receivedAmount"),
		@Result( column="Balance" ,property="balanceAmount")
	})
	public List<ObjLnSOA> getviewSOADetailsbyLoanId(@Param("loanId")Integer loanId);
	
	@Insert("INSERT INTO dbo.Loan_Received\r\n"
			+ "           (Loan_Id\r\n"
			+ "           ,Pymnt_receving_Id\r\n"
			+ "           ,Pymnt_receving_DateTime\r\n"
			+ "           ,Pymnt_Amount\r\n"
			+ "           ,Receving_By\r\n"
			+ "           ,rvcd_till_date\r\n"
			+ "           ,advanceEMIFlag,created_date)\r\n"
			+ "            VALUES\r\n"
			+ "           (\r\n"
			+ "           	  #{objLoanData.loanId},\r\n"
			+ "           	  (Select Isnull(max(Pymnt_receving_Id)+1,1) from Loan_Received where Loan_Id=#{objLoanData.loanId}),\r\n"
			+ "           	  FORMAT(CAST(#{objLoanData.loanDate} AS DATE),'dd-MMM-yyyy'),\r\n"
			+ "           	  #{objLoanData.rcvd_amt},\r\n"
			+ "           	  #{objLoanData.loanIssueBy},\r\n"
			+ "           	  FORMAT(CAST(#{objLoanData.rvcd_till_date} AS DATE),'dd-MMM-yyyy'),\r\n"
			+ "           	  #{objLoanData.advEmiFlag},SYSDATETIME())")

	public int savePaymentReceipts(@Param("objLoanData") ObjLoanDtl objLoanData);
	
	@Update("Update Loan_Payments set Loan_Status = 'C',closure_Date=SYSDATETIME() where Loan_Id = #{loanId}")
	public int updateLoanStatusCode(@Param("loanId") String loanId);
	
   @Select("Select dbo.fn_get_new_loanNo(#{loanNoGenrator.loanTypeId},#{loanNoGenrator.createdDate},#{loanNoGenrator.clientId})")
	public String genrateLoanNo(@Param("loanNoGenrator") LoanNoGenrator loanNoGenrator);
	
	
   @Insert("INSERT INTO Loan_Payments\r\n"
   		+ "		           (Loan_Id\r\n"
   		+ "		           ,Loan_No\r\n"
   		+ "		           ,Customer_Id\r\n"
   		+ "		           ,Loan_Date \r\n"
   		+ "		           ,Loan_Type_Id\r\n"
   		+ "		           ,Security_Flag\r\n"
   		+ "		           ,Loan_Amount\r\n"
   		+ "		           ,Loan_Tenure\r\n"
   		+ "		           ,Advance_EMI_Flag\r\n"
   		+ "		           ,Advance_Amont_Deduction\r\n"
   		+ "		           ,EMI_Amount\r\n"
   		+ "		           ,Loan_Issue_By\r\n"
   		+ "		           ,closure_Date \r\n"
   		+ "		           ,Loan_Status\r\n"
   		+ "		           ,Previous_Loan_id\r\n"
   		+ "		           ,Previous_Loan_Balance\r\n"
   		+ "		           )\r\n"
   		+ "		     VALUES\r\n"
   		+ "		           ((select isNull(max(loan_id)+1,1) from loan_payments),\r\n"
   		+ "		            #{objLoanDtl.loanNmber},\r\n"
   		+ "		            #{objLoanDtl.customerId},\r\n"
   		+ "		            #{objLoanDtl.loanDate}, \r\n"
   		+ "		            #{objLoanDtl.loanTypeId},\r\n"
   		+ "		            #{objLoanDtl.securityFlag},\r\n"
   		+ "		            Cast(#{objLoanDtl.loanAmount} as Money),\r\n"
   		+ "		            #{objLoanDtl.loanTenure},\r\n"
   		+ "		            #{objLoanDtl.advEmiFlag},\r\n"
   		+ "		            #{objLoanDtl.advEmiAmount},\r\n"
   		+ "		            #{objLoanDtl.emiAmount},\r\n"
   		+ "		            #{objLoanDtl.loanIssueBy},\r\n"
   		+ "		             #{objLoanDtl.nextPaymentDate}, \r\n"
   		+ "		            'A',\r\n"
   		+ "		            #{objLoanDtl.loanId},\r\n"
   		+ "		            #{objLoanDtl.prevMeterBalInt}\r\n"
   		+ "		            )")
   
   public int loanPayments( @Param("objLoanDtl") ObjLoanDtl objLoanDtl);
   
   
@Select("Select Loan_Type_Id,Loan_Type_Name,Short_Name from Loan_Type_Master")
@Results({
	@Result( column="Loan_Type_Id", property="loanTypeId"),
	@Result( column="Loan_Type_Name", property="loanTypeName"),
	@Result( column="Short_Name", property="loanShortName"),
})
public List<LoanTypeDto> getAllLoanType();



@Select("SELECT * FROM fun_lnEntry_SearchData(#{searchVarData})")
@Results({
	@Result(   column="clientName", property="name"),
	@Result(   column="GauranterName", property="granterName"),
	@Result(   column="Area" ,property="area"),
	@Result( column="client_id", property="clientId" ),
})
public List<BarrowerDetails> getBarrowerDetails(@Param("searchVarData") String searchVarData);

@Select("Select srch_Data.* from fun_lnEntry_SearchData(#{searchVarData})srch_Data Inner Join (Select Distinct Customer_Id from fn_get_landing_pg_data(null,'A'))LoanData on srch_Data.client_id = LoanData.Customer_Id")
@Results({
	@Result(   column="clientName", property="name"),
	@Result(   column="GauranterName", property="granterName"),
	@Result(   column="Area" ,property="area"),
	@Result( column="client_id", property="clientId" ),
})
public List<BarrowerDetails> getDataForPymntRecvd(@Param("searchVarData") String searchVarData);


@Select("SELECT * FROM client_master where client_id=(#{clientId})")
@Results({
	@Result(  column="name", property="name"),
	@Result(   column="Guarantor_name", property="granterName"),
	@Result(   column="Client_Area" ,property="area"),
	@Result(  column="client_id" ,property="clientId" ),
	@Result( column="Guarantor_Mobile_No", property="guarantorMobNo"),
	@Result(column="mobile_number", property="mobileNo" ),
	
})
public BarrowerDetails getBarrowerGranterDetails(Integer clientId);


@Select("Select distinct cust_data.* from dbo.fun_lnEntry_SearchData(#{searchVarData}) cust_data,Loan_Payments lp\r\n"
		+ "		where lp.Customer_Id = cust_data.client_id and lp.Loan_Status = 'A'")
@Results({
	@Result(  column="clientName", property="name"),
	@Result(  column="Area", property="area"),
	@Result(  column="GauranterName", property="granterName"),
	@Result(  column="client_id", property="clientId"),

})
public List<BarrowerDetails> getEMISearchData(@Param("searchVarData") String searchVarData);
	

//23 AUG Merge



@Select ("Select * from fun_Guaranteer_SearchData(#{searchParam})")
@Results({
	@Result(property = "guarantor_name", column = "GauranterName"),
	@Result(property = "guarantor_Mobile_No", column = "GauranterMobile"),
	@Result(property = "guarantor_area", column = "Area"),
	@Result(property = "guarantor_Address", column = "Address"),
	@Result(property = "guarantor_master_id",column = "Gauranter_id")
})
public List<CustomerDto> getGuaranteerData(@Param("searchParam") String searchParam);

@Insert("Insert Into [dbo].[client_master] (\r\n"
		+ "client_id,name,dob,age,current_address,permant_address,mobile_number,company_name,nature_of_work,office_address,office_phone_no,email_address,\r\n"
		+ "Guarantor_name,Guarantor_Mobile_No,Guarantor_master_id,Identity_Proof_type,Id_Proof_No,Client_Area)\r\n"
		+ "Values ((Select isnull(max(client_id),0)+1 from [dbo].[client_master]),#{customerDto.name},"
		+ "#{customerDto.dob},#{customerDto.age},#{customerDto.current_address},#{customerDto.permant_address},"
		+ "#{customerDto.mobile_number},#{customerDto.company_name},#{customerDto.nature_of_work},"
		+ "#{customerDto.office_address},#{customerDto.office_phone_no},#{customerDto.email_address},"
		+ "#{customerDto.guarantor_name},#{customerDto.guarantor_Mobile_No},#{customerDto.guarantor_master_id},"
		+ "#{customerDto.identity_Proof_type},#{customerDto.id_Proof_No},#{customerDto.client_Area})")
public int iInsertCustomerData(@Param("customerDto") CustomerDto customerDto);

@Update("Update dbo.client_master set mobile_number=#{customerDto.mobile_number},Client_Area=#{customerDto.client_Area},"
		+ "current_address=#{customerDto.current_address},Guarantor_Mobile_No=#{customerDto.guarantor_Mobile_No}\r\n"
		+ "Where client_id = #{customerDto.client_id}")
public int iUpdateCustomerData(@Param("customerDto") CustomerDto customerDto);

@Update("Update dbo.Guaranteer_master Set address=#{customerDto.guarantor_Address},mobileNo=#{customerDto.guarantor_Mobile_No},area=#{customerDto.guarantor_area}\r\n"
		+ " where Guaranteer_Id = #{customerDto.guarantor_master_id}")
public int iUpdateGuaranteerData(@Param("customerDto") CustomerDto customerDto);
 
@Insert("Insert Into [dbo].[Guaranteer_master] (name,address,mobileNo,area,gender,Guaranteer_Id)\r\n"
		+ "Values (#{customerDto.guarantor_name},#{customerDto.guarantor_Address},#{customerDto.guarantor_Mobile_No}"
		+ ",#{customerDto.guarantor_area},#{customerDto.guarantor_gender},#{customerDto.guarantor_master_id})")
public int iInsertGuaranteerMaster(@Param("customerDto") CustomerDto customerDto);

@Select("Select NEXT VALUE FOR seq_guaranteerId")
public String sequence_guaranteerId();

@Select("Select a.client_id,a.name,a.mobile_number,a.Client_Area,b.name Guaranteer_Name,b.mobileNo Guaranteer_MobileNO,b.area Guaranteer_Area\r\n"
		+ "from [dbo].[client_master] a Inner Join [dbo].[Guaranteer_master] b on a.Guarantor_master_id = b.Guaranteer_Id")
@Results({ @Result(property = "client_id", column = "client_id"), @Result(property = "name", column = "name"),
		@Result(property = "mobile_number", column = "mobile_number"),
		@Result(property = "client_Area", column = "Client_Area"),
		@Result(property = "guarantor_name", column = "Guaranteer_Name"),
		@Result(property = "guarantor_Mobile_No", column = "Guaranteer_MobileNO"),
		@Result(property = "guarantor_area", column = "Guaranteer_Area") })
public List<CustomerDto> getAllCustomerDetails();


@Select("Select 'Guaranteer:-' + name + ' With Mobile: [' + mobileNo + '] In Area:[' + area + '] is Already Registered' message \r\n"
		+ "from [dbo].[Guaranteer_master] where mobileNo = #{mobileNo}")
public String checkGuaranteerExists(@Param("mobileNo") String mobileNo);

@Select("Select dbo.fn_validate_loanClose(#{queryString},#{objLoanDtl.loanId},#{objLoanDtl.loanTypeId},#{objLoanDtl.advEmiFlag},#{objLoanDtl.rcvd_amt})")
public String validateLoanClose(@Param("queryString") String queryString,@Param("objLoanDtl") ObjLoanDtl objLoanDtl);

@Select("Select * from dbo.showCustomerDetails where client_id=#{clientId}")
@Results({
		@Result(property = "client_id",column = "client_Id"),
		@Result(property = "name",column = "customerName"),
		@Result(property = "mobile_number",column = "customerMobileNo"),
		@Result(property = "current_address",column = "customerAddress"),
		@Result(property = "client_Area",column = "Client_Area"),
		@Result(property = "guarantor_master_id",column = "Guaranteer_Id"),
		@Result(property = "guarantor_Mobile_No",column = "MobileNo"),
		@Result(property = "guarantor_name",column = "GuaranteerName"),
		@Result(property = "guarantor_area",column = "GuaranteerArea"),
		@Result(property = "guarantor_Address",column = "Guaranteeraddress"),
})
public CustomerDto getViewCustomerDetails(@Param("clientId") String clientId);

@Select("Select * From dbo.get_data_loan_register(#{barrowerDetails.searchVarData},#{barrowerDetails.periodFrm},#{barrowerDetails.periodTo})")
public List<LinkedHashMap<String,Object>> getDailyPaymentRegData(@Param("barrowerDetails") BarrowerDetails barrowerDetails);


@Select("select * from fn_get_landing_pg_data(#{barrowerDetails.loanId},#{barrowerDetails.searchVarData}) where Customer_id=#{barrowerDetails.clientId}")
@Results({
	@Result( column="loan_id", property="loanId" ),
	@Result( column="Customer_id", property="clientId" ),
	@Result( column="Client_Name" ,property="clientName"),
	@Result(column="Guarantor_Name", property="guarantorName"),
	@Result( column="Client_Area", property="clientArea" ),
	@Result( column="case_no", property="loanNmber"),
	@Result(column="Loan_Date", property="loanDate"),
	@Result( column="case_amount", property="loanAmount" ),
	@Result( column="emi_amount", property="emiAmount" ),
	@Result( column="dueDays", property="dueDays" ),
	@Result( column="pendingAsonDate", property="pendingAmount" ),
	@Result( column="rcvng_date", property="lastRcvngDate" ),
	@Result( column="loan_tenure", property="loanTenure" ),
	@Result( column="total_recvd", property="totalRcvdAmount" ),
	@Result( column="closure_date", property="loanClosureDate" ),
	@Result(column="Loan_Type_Id", property="loanTypeId"  )
})
public List<DashboardDto> getDataForPymntRcptPG(@Param("barrowerDetails") BarrowerDetails barrowerDetails);


@Select("Select Loan_id,Pymnt_receving_Id,FORMAT(Pymnt_receving_DateTime,'dd-MMMM-yyyy')Pymnt_receving_DateTime,\r\n"
		+ " Pymnt_Amount,lm.Login_Name,(case when advanceEMIFlag = '1' then 'Advance-EMI' when advanceEMIFlag = '2' \r\n"
		+ " then 'Interest' when advanceEMIFlag = '3' then 'Principle' end)pymntType\r\n"
		+ "from loan_Received lr,Login_Master lm where \r\n"
		+ "lr.Receving_By = lm.Login_Id and\r\n"
		+ "loan_id= #{barrowerDetails.loanId} order by Pymnt_receving_Id")
@Results({
	@Result( column="loan_id", property="loanId" ),
	@Result( column="Pymnt_receving_Id", property="pymntRecevingId" ),
	@Result( column="Pymnt_receving_DateTime", property="pymntRecevingDateTime" ),
	@Result( column="Pymnt_Amount", property="rcvd_amt" ),
	@Result( column="Login_Name", property="loanIssueBy" ),
	@Result( column="pymntType", property="loanType" )
})
public List<ObjLoanDtl> getPymntRevdInActiveDatPG(@Param("barrowerDetails") BarrowerDetails barrowerDetails);

@Update("Delete From loan_Received where loan_id=#{objLoanDtl.loanId} and Pymnt_receving_Id=#{objLoanDtl.pymntRecevingId}")
public void DeletePymntRecvd(@Param("objLoanDtl") ObjLoanDtl objLoanDtl);

@Update("Delete From loan_payments where loan_id=#{objLoanDtl.loanId} and customer_id=#{objLoanDtl.customerId}")
public void deleteLoanIssued(@Param("objLoanDtl") ObjLoanDtl objLoanDtl);

}


