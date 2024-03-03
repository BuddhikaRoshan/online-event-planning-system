package com.controllers;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jakarta.servlet.http.*;
import models.Package;
import services.PackagesService;

public class PackageServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private List<Package> packages;
    private PackagesService packageService = new PackagesService();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String action = request.getParameter("action");

        try {
            if (action == null) {

                packages = packageService.getAllPackages();
                System.out.println("packages length " + packages.size());
                request.setAttribute("packages", packages);
                try {
                    request.getRequestDispatcher("PackagesView.jsp").forward(request, response);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else if (action.equals("create")) {
                // Show form to create a new package
                request.getRequestDispatcher("createPackage.jsp").forward(request, response);
            } else if (action.equals("edit")) {
                int packageId = Integer.parseInt(request.getParameter("id"));

                Package packageObj = packageService.getPackageById(packageId);

                Map<String, Object> packageData = new HashMap<>();
                packageData.put("name", packageObj.getName());
                packageData.put("price", packageObj.getPrice());

                // Convert Map to JSON using simple string concatenation (you may want to use a library for this in production)
                String json = "{";
                for (Map.Entry<String, Object> entry : packageData.entrySet()) {
                    json += "\"" + entry.getKey() + "\":\"" + entry.getValue() + "\",";
                }
                json = json.substring(0, json.length() - 1) + "}"; // Remove the trailing comma and add the closing brace

                // Write JSON response
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(json);
            } else if (action.equals("delete")) {
                // Delete an existing package
                int packageId = Integer.parseInt(request.getParameter("id"));
                boolean success = packageService.deletePackage(packageId);

                if (success) {
                    response.sendRedirect(request.getContextPath() + "/package");
                } else {
                    response.getWriter().println("Failed to delete package. Please try again.");
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
            response.getWriter().println("An error occurred. Please try again.");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String action = request.getParameter("action");

        try {
            if (action.equals("create")) {
                // Create a new package
                Package packageObj = createPackageFromRequest(request);

                boolean success = packageService.addPackage(packageObj);

                if (success) {
                    response.sendRedirect(request.getContextPath() + "/package");
                } else {
                    response.getWriter().println("Failed to create package. Please try again.");
                }
            } else if (action.equals("update")) {
                // Update an existing package
                Package packageObj = createPackageFromRequest(request);

                boolean success = packageService.updatePackage(packageObj);

                if (success) {
                    response.sendRedirect(request.getContextPath() + "/package");
                } else {
                    response.getWriter().println("Failed to update package. Please try again.");
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
            response.getWriter().println("An error occurred. Please try again.");
        }
    }

    // Helper method to create a Package object from the request parameters
    private Package createPackageFromRequest(HttpServletRequest request) {
        Package packageObj = new Package();
        if(request.getParameter("id")!=null) {
            packageObj.setId(Integer.parseInt(request.getParameter("id")));
        }
        // Assuming your Package class has setters for all these fields
        packageObj.setName(request.getParameter("name"));
        packageObj.setPrice(Double.parseDouble(request.getParameter("price")));

        return packageObj;
    }
}
