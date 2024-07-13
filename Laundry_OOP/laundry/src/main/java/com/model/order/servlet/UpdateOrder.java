package com.model.order.servlet;

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

@WebServlet("/UpdateOrder")
public class UpdateOrder extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        Connection con = null;
        PreparedStatement pstmt = null;

        try {
            con = DBconnection.getConnection();

            String id = request.getParameter("id");
            if (id == null || id.isEmpty()) {
                throw new IllegalArgumentException("Order ID cannot be null or empty");
            }

            String sql = "UPDATE order_table SET CustomerID=?, OrderDate=?, type1=?, inquantity1=?, type2=?, inquantity2=?, type3=?, inquantity3=?, type4=?, inquantity4=?, type5=?, inquantity5=?, type6=?, inquantity6=?, clothType=?, weight=?, price=? WHERE id=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, request.getParameter("CustomerID"));
            pstmt.setString(2, request.getParameter("OrderDate"));
            pstmt.setString(3, request.getParameter("type1"));
            pstmt.setString(4, request.getParameter("inquantity1"));
            pstmt.setString(5, request.getParameter("type2"));
            pstmt.setString(6, request.getParameter("inquantity2"));
            pstmt.setString(7, request.getParameter("type3"));
            pstmt.setString(8, request.getParameter("inquantity3"));
            pstmt.setString(9, request.getParameter("type4"));
            pstmt.setString(10, request.getParameter("inquantity4"));
            pstmt.setString(11, request.getParameter("type5"));
            pstmt.setString(12, request.getParameter("inquantity5"));
            pstmt.setString(13, request.getParameter("type6"));
            pstmt.setString(14, request.getParameter("inquantity6"));
            pstmt.setString(15, request.getParameter("clothType"));
            pstmt.setString(16, request.getParameter("weight"));
            pstmt.setString(17, request.getParameter("price"));
            pstmt.setString(18, id);
            pstmt.executeUpdate();


            response.sendRedirect("View");

        } catch (SQLException | IllegalArgumentException ex) {
            ex.printStackTrace();
            // Handle exception
            request.setAttribute("error", "Error: " + ex.getMessage());
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
