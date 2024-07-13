package com.inventory.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.utility.DBconnection;


@WebServlet("/Addinventory")
public class Addinventory extends HttpServlet {
	 private static final long serialVersionUID = 1L;
	    private Connection con;

	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        String itemid = request.getParameter("itemid");
	        String category = request.getParameter("category");
	        String status = request.getParameter("status");
	        String quantity = request.getParameter("quantity");

	        try {
	            con = DBconnection.getConnection();

	            PreparedStatement pst = con.prepareStatement(
	                    "INSERT INTO inventory (itemid, category, status, quantity) VALUES (?, ?, ?, ?)");

	            pst.setString(1, itemid);
	            pst.setString(2, category);
	            pst.setString(3, status);
	            pst.setString(4, quantity);

	            int rowsAffected = pst.executeUpdate();
	            pst.close();
	            con.close();

	            if (rowsAffected > 0) {
	                // Data successfully inserted
	                response.sendRedirect("feedback.jsp"); // Redirect to a success page
	            } else {
	                // Handle the case where no rows were affected (insertion failed)
	                response.sendRedirect("error.jsp"); // Redirect to an error page
	            }
	        } catch (SQLException e) {
	            e.printStackTrace(); // Handle this exception properly in a production environment
	            response.sendRedirect("error.jsp"); // Redirect to an error page
	        }
	    }
	}
