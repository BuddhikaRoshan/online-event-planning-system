<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <%@page import="java.sql.Connection" %>
        <%@page import="java.sql.DriverManager" %>
            <%@page import="java.sql.ResultSet" %>
                <%@page import="java.sql.Statement" %>
                    <!DOCTYPE html>

                    <html>

                    <head>

                        <meta charset="ISO-8859-1">
                        <title>Insert title here</title>

                    </head>

                    <body>
                        <% String ID=request.getParameter("id"); 
                        
                        try{ Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/event_plan_db", "root"
                            , "Rushan@123" ); 
                            
                            Statement stmt=connection.createStatement(); stmt.executeUpdate("delete from Payment where id='"+ID+"'");
                        response.sendRedirect(" PaymentView.jsp"); }
                        
                        catch(Exception e){ System.out.println(e); } %>

                    </body>

                    </html>