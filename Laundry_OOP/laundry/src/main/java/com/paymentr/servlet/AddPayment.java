package com.paymentr.servlet;

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

@WebServlet("/AddPayment")
public class AddPayment extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String cardNumber = request.getParameter("Card_number");
        String exDate = request.getParameter("ExDate");
        String cvv = request.getParameter("Cvv");
        String cardholderName = request.getParameter("Cardholder_Name");
        String amount = request.getParameter("Amount");

        Connection con = null;
        PreparedStatement pst = null;
        
        try {
            con = DBconnection.getConnection();
            if (con != null) {
                pst = con.prepareStatement(
                        "INSERT INTO payment (Card_number, ExDate, Cvv, Cardholder_Name, Amount) VALUES (?, ?, ?, ?, ?)");
                pst.setString(1, cardNumber);
                pst.setString(2, exDate);
                pst.setString(3, cvv);
                pst.setString(4, cardholderName);
                pst.setString(5, amount);

                int rowsAffected = pst.executeUpdate();

                if (rowsAffected > 0) {
                    response.sendRedirect("success.jsp"); // Redirect to a success page
                } else {
                    response.sendRedirect("error.jsp?msg=Insertion+failed"); // Redirect to an error page with a message
                }
            } else {
                throw new SQLException("Failed to establish database connection.");
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Log the exception for debugging purposes
            response.sendRedirect("error.jsp?msg=Database+error"); // Redirect to an error page with a database error message
        } finally {
            // Close resources in a finally block to ensure they are always closed
            try {
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace(); // Log the exception for debugging purposes
            }
        }
    }
}
