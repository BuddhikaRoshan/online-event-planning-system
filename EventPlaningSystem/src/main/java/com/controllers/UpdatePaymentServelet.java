package com.controllers;

import jakarta.servlet.RequestDispatcher; 
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Payment; // Import the Payment model

import java.io.IOException;

/**
 * Servlet implementation class UpdatePaymentServelet
 */
public class UpdatePaymentServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Retrieve data from the form
		String id = request.getParameter("id"); // Get the ID of the payment record to update
		String fname = request.getParameter("cardname"); // Get cardholder's first name
		String lname = request.getParameter("cardnumber"); // Get card number
		String Cnum = request.getParameter("expmonth"); // Get expiration month
		String exdate = request.getParameter("expyear"); // Get expiration year
		String cvc = request.getParameter("cvv"); // Get card verification code (CVC)
		
        boolean isSuccess;
		
		// Update card details in the Payment model
		isSuccess = Payment.updateCardDetails(id, fname, lname, Cnum, exdate, cvc);
		
		if(isSuccess == true) {
			// If the update is successful, forward to PaymentView.jsp
			RequestDispatcher dis1 = request.getRequestDispatcher("PaymentView.jsp");
			dis1.forward(request, response);
			
		}else {
			// If the update fails, forward to error.jsp
			RequestDispatcher dis2 = request.getRequestDispatcher("error.jsp");
			dis2.forward(request, response);
		}
	}
}
