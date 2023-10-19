/**
 * 
 */
package com.loanapp.ebizTradeWebApp.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.loanapp.ebizTradeWebApp.entity.BarrowerDetails;

/**
 * Sudhir Controller for JSP view update git repo Updated on git - sunil ok
 */
@RestController
public class ViewController {
	@GetMapping("/")
	public ModelAndView getLoginPage() {
		System.err.println("Login Page Load");
		ModelAndView view = new ModelAndView();
		view.setViewName("login");
		return view;

	}

	@GetMapping("/clientMasterNew")
	public ModelAndView clientMasterNew() {
		System.err.println("clientMasterNew Load");
		ModelAndView view = new ModelAndView();
		// view.setViewName("login");
		view.setViewName("clientMasterNew");
		return view;

	}

	@GetMapping("/dashBoard")
	public ModelAndView getDashboardPage() {
		System.err.println("-----dasboard---");
		ModelAndView view = new ModelAndView();
		view.setViewName("dashBoard");
		return view;
	}

	@GetMapping("/mobLoanEntry")
	public ModelAndView mobLoanEntryPage() {
		ModelAndView mv = new ModelAndView("mobLoanEntry");
		return mv;
	}

	@RequestMapping("/emi-site-page")
	public ModelAndView getEmisitepage() {
		ModelAndView mv = new ModelAndView("EmiReceivedST");
		return mv;
	}

	@RequestMapping("/showFormforAddNewLoan")
	public ModelAndView addNewLoanEntry() {
		ModelAndView mv = new ModelAndView("loanEntrypage");
		mv.addObject("LoanEntryType", 1);
		return mv;
	}

	@RequestMapping("/showPymntRecvd")
	public ModelAndView getSrchData() {
		ModelAndView mv = new ModelAndView("EmiReceived");
		return mv;
	}

	@GetMapping("/Customer")
	public ModelAndView getCustomer() {
		System.err.println("-----Customer---");
		ModelAndView view = new ModelAndView();
		view.setViewName("customerHomePage");
		return view;

	}

	@GetMapping("/CustomerNew")
	public ModelAndView addnewCustomer() {
		System.err.println("-----Customer---");
		ModelAndView view = new ModelAndView();
		view.setViewName("clientMasterNew");
		return view;

	}
	@GetMapping("/CallingData")
	public ModelAndView loanDataForCalling() {
		System.err.println("-----Calling Data---");
		ModelAndView view = new ModelAndView();
		view.setViewName("CallingData");
		return view;

	}	
	@GetMapping("/Reports")
	public ModelAndView viewReportPG() {
		System.err.println("-----Calling viewReportPG---");
		ModelAndView view = new ModelAndView();
		view.setViewName("StatementOfAccount");
		return view;

	}		
	@GetMapping("/pymntReceipt")
	public ModelAndView viewPaymentReceipt() {
		System.err.println("-----Calling viewPaymentReceipt---");
		ModelAndView view = new ModelAndView();
		view.setViewName("PymntReceipt");
		//view.setViewName("testHtml");
		return view;

	}	
	
	@GetMapping("/testPage")
	public ModelAndView viewTestpage() {
		System.err.println("-----Calling viewPaymentReceipt---");
		ModelAndView view = new ModelAndView();
		//view.setViewName("PymntReceipt");
		view.setViewName("testHtml");
		return view;

	}		
	@GetMapping("/createUser")
	public ModelAndView createNewUser() {
		System.err.println("-----Calling createNewUser---");
		ModelAndView view = new ModelAndView();
		view.setViewName("userCreation");
		return view;

	}	
	@GetMapping("/InActiveLoan")
	public ModelAndView inActiveLoan() {
		System.err.println("-----Calling inActiveLoan---");
		ModelAndView view = new ModelAndView();
		view.setViewName("RemoveLoanData");
		return view;

	}		
}
