package com.loanapp.ebizTradeWebApp.entity;

/**
 * @author sugautam
 *
 */
public class ResponseWrapper {
	private String strMessage;
	
	private boolean errorFlag;

	public String getStrMessage() {
		return strMessage;
	}

	public void setStrMessage(String strMessage) {
		this.strMessage = strMessage;
	}

	public boolean isErrorFlag() {
		return errorFlag;
	}

	public void setErrorFlag(boolean errorFlag) {
		this.errorFlag = errorFlag;
	}
	
	
	
}
