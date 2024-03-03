<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@page import="java.sql.Connection" %>
        <%@page import="java.sql.DriverManager" %>
            <%@page import="java.sql.ResultSet" %>
                <%@page import="java.sql.Statement" %>

                    <!DOCTYPE html>


                    <html>

                    <head>

                        <meta charset="ISO-8859-1">
                        <meta name="viewport" content="width=device-width, initial-scale=1.0">
                        <link rel="stylesheet"
                            href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
                        <title>Payment View</title>

                        <style>
                            body,
                            h1,
                            table {
                                margin: 0;
                                padding: 0;
                                color: white;
                            }


                            table {
                                margin: 0 auto;
                                width: 80%;
                                border-collapse: collapse;
                                border: 2px solid;
                            }

                            th,
                            td {
                                border-collapse: collapse;
                                border: 2px solid;
                            }

                            body {
                                background-image: url('image/5079835.jpg');
                                background-size: cover;
                                background-repeat: no-repeat;
                                background-color: rgba(255, 255, 255, 0.5);
                            }

                            h2 {
                                color: white;
                            }


                            .button {
                                background-color: ##008CBA;
                                ;
                                /* Green */
                                border: none;
                                color: white;
                                padding: 15px 32px;
                                text-align: center;
                                text-decoration: none;
                                display: inline-block;
                                font-size: 12px border-radius: 12px;
                                ;
                            }


                            button:hover {
                                background-color: #333;
                            }
                        </style>



                    </head>

                    <body>

                        <div class="filter">

                            <h1>Payment Details</h1>
                            <br>
                            <table>

                                <tr>

                                    <th scope="col">ID</th>
                                    <th scope="col">card name</th>
                                    <th scope="col">card number</th>
                                    <th scope="col">expire month</th>
                                    <th scope="col">expire year</th>
                                    <th scope="col">cvv</th>

                                </tr>

                                <% String ID=request.getParameter("id"); try{ Class.forName("com.mysql.cj.jdbc.Driver");
                                    Connection
                                    connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/event_plan_db", "root"
                                    , "Rushan@123" ); Statement stmt=connection.createStatement(); ResultSet
                                    rs=stmt.executeQuery("select * from Payment ");
	 
	                while(rs.next()){

 
                %>


                            <tr>

                                <th scope=" row">
                                    <%= rs.getString(1) %>
                                        </th>
                                        <td>
                                            <%= rs.getString(2) %>
                                        </td>
                                        <td>
                                            <%= rs.getString(3) %>
                                        </td>
                                        <td>
                                            <%= rs.getString(4) %>
                                        </td>
                                        <td>
                                            <%= rs.getString(5) %>
                                        </td>
                                        <td>
                                            <%= rs.getString(6) %>
                                        </td>
                                        <td><button><a
                                                    href="UpdatePayment.jsp?id=<%= rs.getString(1) %>">Update</a></button>
                                            <button><a
                                                    href="PaymentDelete.jsp?id=<%= rs.getString(1) %>">Delete</a></button>
                                        </td>

                                        </tr>

                                        <% } }catch(Exception e){ System.out.println(e); } %>


                            </table>

                        </div>

                    </body>


                    </html>