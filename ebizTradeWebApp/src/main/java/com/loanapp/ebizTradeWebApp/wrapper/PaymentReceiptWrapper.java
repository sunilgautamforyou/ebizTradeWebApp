package com.loanapp.ebizTradeWebApp.wrapper;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import com.fasterxml.jackson.annotation.JsonProperty;

public class PaymentReceiptWrapper implements Serializable {

	private static final long serialVersionUID = -5814363472352901515L;
	
	@JsonProperty("data")
	private List<HashMap<String,Object>> arrJsonFldDatObj = new ArrayList<>();

	public List<HashMap<String, Object>> getArrJsonFldDatObj() {
		return arrJsonFldDatObj;
	}

	public void setArrJsonFldDatObj(List<HashMap<String, Object>> arrJsonFldDatObj) {
		this.arrJsonFldDatObj = arrJsonFldDatObj;
	}
	
	

}
