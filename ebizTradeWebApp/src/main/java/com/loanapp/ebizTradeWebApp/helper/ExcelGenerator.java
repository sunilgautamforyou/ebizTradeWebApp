package com.loanapp.ebizTradeWebApp.helper;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.poifs.crypt.EncryptionInfo;
import org.apache.poi.poifs.crypt.EncryptionMode;
import org.apache.poi.poifs.crypt.Encryptor;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.loanapp.ebizTradeWebApp.entity.DashboardDto;
import com.loanapp.ebizTradeWebApp.entity.ResponseWrapper;
import com.loanapp.ebizTradeWebApp.exception.CustomSqlExection;
import com.loanapp.ebizTradeWebApp.wrapper.Utility;

import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.http.HttpServletResponse;


public class ExcelGenerator {
	public static Logger logger = org.slf4j.LoggerFactory.getLogger(ExcelGenerator.class);

	public XSSFWorkbook generateExcel(List<DashboardDto> lstdasBoardDto) throws IOException {
		logger.info("Start Creating Execl File for Due Report");
		ResponseWrapper wrapper = new ResponseWrapper();
		List<LinkedHashMap<String, Object>> valueList = new ArrayList<>();
		final XSSFWorkbook workbook = new XSSFWorkbook();
		logger.info("Start Creating Excel HeaderMap Data");
		try {
			if (lstdasBoardDto.size() > 0) {
				for (DashboardDto dasBoardDto : lstdasBoardDto) {
					try {
						valueList.add(Utility.ConvertObjectToMap(dasBoardDto));
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				HashMap<String, Object> map = new HashMap<>();
				map.put("values", valueList);
				exportExcel(workbook, map);
				
			} else {
				wrapper.setStrMessage("No Data Found to Show Details");
				logger.info("No Data Found");
			}
		} catch (Exception ex) {
			logger.error(ex.toString());
			wrapper.setStrMessage(ex.toString());
			wrapper.setErrorFlag(true);
		}
		FileOutputStream out = new FileOutputStream("D:\\PRJ\\OfficeManagement\\Design&DB\\test.xlsx");
		 workbook.write(out);
         out.close();		
		return workbook;
	}
	
	private XSSFWorkbook exportExcel(XSSFWorkbook workbook, HashMap<String, Object> map) throws IOException {
		XSSFSheet sheet = workbook.createSheet("Due Report");
		XSSFRow rowHead = sheet.createRow((short) 0);
		LinkedHashMap<String,String> headers = genHeaderCols();
		Set<Map.Entry<String, String>> entrySet = headers.entrySet();
		@SuppressWarnings("unchecked")
		List<LinkedHashMap<String, String>> valueList = (List<LinkedHashMap<String, String>>) map.get("values");
		int iColCounter = 0;
		for (Entry<String, String> entry : entrySet) {
			rowHead.createCell((short) iColCounter).setCellValue(entry.getKey());
			iColCounter++;
		}
		int rownum = 0;
		for (int j = 0; j < valueList.size(); j++) {
			rownum = j + 1;
			XSSFRow row = sheet.createRow(rownum);
			LinkedHashMap<String, String> valueMap = valueList.get(j);
			iColCounter = 0;
			for (Entry<String, String> entry : entrySet) {
                Cell cellFName = row.createCell(iColCounter, Cell.CELL_TYPE_STRING);
                cellFName.setCellValue(valueMap.get(entry.getValue()));
                iColCounter++;				
			}
		}
		return workbook;
	}
	
	private LinkedHashMap<String,String> genHeaderCols() {
		LinkedHashMap<String,String> headers = new LinkedHashMap<>();
		headers.put("Customer Name", "ClientName");
		headers.put("Guaranteer Name", "GuarantorName");
		headers.put("Area", "ClientArea");
		headers.put("Case No.", "LoanNmber");
		headers.put("Case Date", "LoanDate");
		headers.put("Case Amount", "LoanAmount");
		headers.put("EMI Amount", "EmiAmount");
		headers.put("Pending", "PendingAmount");
		headers.put("Due Days", "DueDays");
		headers.put("Received", "TotalRcvdAmount");
		headers.put("Tenure", "LoanTenure");
		headers.put("Last Received Date", "LastRcvngDate");
		return headers;
	}
	
	public void downloadFile(File file, HttpServletResponse response){

        try {         
            response.setContentType("application/vnd.ms-excel");
            response.addHeader("content-disposition", "attachment; filename=Segmentdetail.xlsx");
            response.setHeader("Pragma", "public");
            response.setHeader("Cache-Control", "no-store");
            response.addHeader("Cache-Control", "max-age=0");
            FileInputStream fin = null;
            try {
                fin = new FileInputStream(file);
            } catch (final FileNotFoundException e) {
                e.printStackTrace();
            }
            final int size = 1024;
            try {
                response.setContentLength(fin.available());
                final byte[] buffer = new byte[size];
                ServletOutputStream outputStream = null;

                outputStream = response.getOutputStream();
                int length = 0;
                while ((length = fin.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, length);
                }
                fin.close();
                outputStream.flush();
                outputStream.close();
            } catch (final IOException e) {
                e.printStackTrace();
            }
        }catch (final Exception ex){
            ex.printStackTrace();
    }

}
	

}
