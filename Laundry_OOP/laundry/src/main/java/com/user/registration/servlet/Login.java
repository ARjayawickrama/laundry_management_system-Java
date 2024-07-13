package com.user.registration.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginS")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
       

        if (isValidUser(username, password)) {
         
        	response.sendRedirect("homepage.jsp?username=" + username );

//mekan thami jsp file walta print karana thiyene meka
  
        } 
        
        else {
            // my Display alert box in JavaScript
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Invalid username or password');");
            out.println("window.location.href='login.jsp';");
          
            out.println("</script>");
        }
        
    }
    
    private boolean isValidUser(String username, String password) {
        String sql = "SELECT * FROM user WHERE username = ? AND password = ?";
        String jdbcUrl = "jdbc:mysql://localhost:3307/laundry";
        String dbUser = "root";
        String dbPassword = "1815";

        try (Connection connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, username);
            statement.setString(2, password);
            try (ResultSet resultSet = statement.executeQuery()) {
                return resultSet.next();
            }
        } catch (SQLException e) {
            e.printStackTrace(); 
        }
        return false;
    }
}

