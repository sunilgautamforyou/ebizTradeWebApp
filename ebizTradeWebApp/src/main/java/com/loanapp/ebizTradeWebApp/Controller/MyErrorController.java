/**
 * 
 */
package com.loanapp.ebizTradeWebApp.Controller;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * Sudhir Custome Error Handling controller
 */
@RestController
public class MyErrorController implements ErrorController{
	
	@RequestMapping("/error")
    public ModelAndView handleError() {
        //do something like logging
		System.out.println("Erorr Page load ");
		ModelAndView view = new ModelAndView();
		view.setViewName("login");
		return view;
    }

}
