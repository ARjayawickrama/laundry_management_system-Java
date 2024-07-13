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

@WebServlet("/UpdatePayment")
public class UpdatePayment extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        Connection con = null;
        PreparedStatement pstmt = null;

        try {
            con = DBconnection.getConnection();

            String sql = "UPDATE payment SET Card_number=?, ExDate=?, Cvv=?, Cardholder_Name=?, Amount=? WHERE id=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, request.getParameter("Card_number"));
            pstmt.setString(2, request.getParameter("ExDate"));
            pstmt.setString(3, request.getParameter("Cvv"));
            pstmt.setString(4, request.getParameter("Cardholder_Name"));
            pstmt.setString(5, request.getParameter("Amount"));
            pstmt.setString(6, request.getParameter("id")); // Corrected parameter index

            pstmt.executeUpdate();

            response.sendRedirect("payment.jsp");

        } catch (SQLException ex) {
            ex.printStackTrace();
            // Handle SQL exception
            request.setAttribute("error", "Error: Failed to update payment");
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        } finally {
            try {
                if (pstmt != null) {
                    pstmt.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}


