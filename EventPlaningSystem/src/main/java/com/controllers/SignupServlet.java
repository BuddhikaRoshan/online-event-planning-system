package com.controllers;

import java.io.IOException;

import jakarta.servlet.http.*;
import services.UserService;
import models.UserModel;

public class SignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
           {
        // Get user input from the signup form
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        // Create a user model with the input data
        UserModel user = new UserModel();
        user.setName(name);
        user.setEmail(email);
        user.setPassword(password);
        
        // Call the UserService to handle the signup logic
        UserService userService = new UserService();
        boolean signupSuccess = userService.createUser(user);

        if (signupSuccess) {
            // Redirect to login page on successful signup
            try {
				response.sendRedirect("LoginView.jsp");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        } else {
            // Display an error message or handle the error as needed
            try {
				response.getWriter().println("Signup failed. Please try again.");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
    }
}
