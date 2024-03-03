package com.controllers;

import jakarta.servlet.RequestDispatcher; // Import for RequestDispatcher
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Payment; // Import the Payment model

import java.io.IOException;

/**
 * Servlet implementation class PaymentServelet
 */
public class PaymentServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Retrieve data from the form
		String fname = request.getParameter("cardname"); // Get cardholder's first name
		String lname = request.getParameter("cardnumber"); // Get card number
		String Cnum = request.getParameter("expmonth"); // Get expiration month
		String exdate = request.getParameter("expyear"); // Get expiration year
		String cvc = request.getParameter("cvv"); // Get card verification code (CVC)
		
        boolean isSuccess;
		
		// Insert card details into the Payment model
		isSuccess = Payment.insertCardDetails(fname, lname, Cnum, exdate, cvc);
		
		if(isSuccess == true) {
			// If insertion is successful, forward to PaymentView.jsp
			RequestDispatcher dis1 = request.getRequestDispatcher("PaymentView.jsp");
			dis1.forward(request, response);
			
		}else {
			// If insertion fails, forward to error.jsp
			RequestDispatcher dis2 = request.getRequestDispatcher("error.jsp");
			dis2.forward(request, response);
		}
	}
}
