package com.loanapp.ebizTradeWebApp.helper;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.DataFormat;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFColor;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.loanapp.ebizTradeWebApp.entity.DashboardDto;

import java.awt.Color;
import java.io.IOException;
import java.util.List;

import jakarta.servlet.http.HttpServletResponse;

public class UserExcelExporter {
	
    private XSSFWorkbook workbook;
    private XSSFSheet sheet;
    private List<DashboardDto> dashBoardDto;
    
    public UserExcelExporter(List<DashboardDto> dashBoardDto) {
        this.dashBoardDto = dashBoardDto;
        workbook = new XSSFWorkbook();
    }    
    
    private void writeHeaderLine() {
        sheet = workbook.createSheet("Users");
         
        Row row = sheet.createRow(0);
         
        XSSFCellStyle style = workbook.createCellStyle();
        XSSFFont font = workbook.createFont();
        font.setBold(true);
        font.setFontHeight(16);
        style.setFont(font);
        XSSFColor myColor = new XSSFColor(Color.RED);

        style.setFillForegroundColor(myColor);
        style.setFillBackgroundColor(myColor);
        style.setFillPattern(CellStyle.SOLID_FOREGROUND);

        style.setBorderBottom(CellStyle.BORDER_THIN);
        style.setBottomBorderColor(IndexedColors.BLACK.getIndex());
        style.setBorderLeft(CellStyle.BORDER_THIN);
        style.setLeftBorderColor(IndexedColors.BLACK.getIndex());
        style.setBorderRight(CellStyle.BORDER_THIN);
        style.setRightBorderColor(IndexedColors.BLACK.getIndex());
        style.setBorderTop(CellStyle.BORDER_THIN);
        style.setTopBorderColor(IndexedColors.BLACK.getIndex());        
        
         
        createCell(row, 0, "Customer Name", style);      
        createCell(row, 1, "Guaranteer Name", style);       
        createCell(row, 2, "Area", style);    
        createCell(row, 3, "Case No", style);
        createCell(row, 4, "Case Date", style);
        createCell(row, 5, "Case Amount", style);
        createCell(row, 6, "EMI Amount", style);
        createCell(row, 7, "Pending", style);
        createCell(row, 8, "Due Days", style);
        createCell(row, 9, "Received", style);
        createCell(row, 10, "Tenure", style);
        createCell(row, 11, "Last Received Date", style);
         
    }    
    
    private void createCell(Row row, int columnCount, Object value, XSSFCellStyle style) {
        sheet.autoSizeColumn(columnCount);
        Cell cell = row.createCell(columnCount);
        if (value instanceof Integer) {
            cell.setCellValue((Integer) value);
        } else if (value instanceof Boolean) {
            cell.setCellValue((Boolean) value);
        }else {
            cell.setCellValue((String) value);
        }
        cell.setCellStyle(style);
    }
    
    private void writeDataLines() {
    	int rowCount = 1;
    	XSSFCellStyle style = workbook.createCellStyle();
    	XSSFFont font = workbook.createFont();
    	DataFormat dataformat = workbook.createDataFormat();
    	font.setFontHeight(14);
    	style.setFont(font);
    	XSSFCellStyle styleNumber = workbook.createCellStyle();
    	XSSFCellStyle hindiCurrency = workbook.createCellStyle();
    	hindiCurrency.setDataFormat(dataformat.getFormat("₹#\\,##0"));
    	styleNumber.setFont(font);
    	setExcelBorder(style);
    	setExcelBorder(hindiCurrency);
    	for (DashboardDto dashBoadObjDto : dashBoardDto) {
    		Row row = sheet.createRow(rowCount++);
    		int columnCount = 0;
    		
    		createCell(row, columnCount++, dashBoadObjDto.getClientName().replace("<br>", ""), style);
    		createCell(row, columnCount++, dashBoadObjDto.getGuarantorName().replace("<br>", ""), style);
    		createCell(row, columnCount++, dashBoadObjDto.getClientArea(), style);
    		createCell(row, columnCount++, dashBoadObjDto.getLoanNmber(), style);
    		createCell(row, columnCount++, dashBoadObjDto.getLoanDate(), style);
    		createCell(row, columnCount++, Integer.valueOf(dashBoadObjDto.getLoanAmount()), hindiCurrency);
    		createCell(row, columnCount++, Integer.valueOf(dashBoadObjDto.getEmiAmount()), hindiCurrency);
    		createCell(row, columnCount++, Integer.valueOf(dashBoadObjDto.getPendingAmount()), hindiCurrency);
    		createCell(row, columnCount++, Integer.valueOf(dashBoadObjDto.getDueDays()), style);
    		createCell(row, columnCount++, Integer.valueOf(dashBoadObjDto.getTotalRcvdAmount()), hindiCurrency);
    		createCell(row, columnCount++, Integer.valueOf(dashBoadObjDto.getLoanTenure()), style);
    		createCell(row, columnCount++, dashBoadObjDto.getLastRcvngDate(), style);
    	}
    	
    }
    
    private void setExcelBorder(XSSFCellStyle style) {
        style.setBorderBottom(CellStyle.BORDER_THIN);
        style.setBottomBorderColor(IndexedColors.BLACK.getIndex());
        style.setBorderLeft(CellStyle.BORDER_THIN);
        style.setLeftBorderColor(IndexedColors.BLACK.getIndex());
        style.setBorderRight(CellStyle.BORDER_THIN);
        style.setRightBorderColor(IndexedColors.BLACK.getIndex());
        style.setBorderTop(CellStyle.BORDER_THIN);
        style.setTopBorderColor(IndexedColors.BLACK.getIndex());    	
    	
    }
    
    public void export(HttpServletResponse response) throws IOException {
        writeHeaderLine();
        writeDataLines();
         
        jakarta.servlet.ServletOutputStream outputStream = response.getOutputStream();
        workbook.write(outputStream);
        //workbook.close();
         
        outputStream.close();
         
    }    
}
