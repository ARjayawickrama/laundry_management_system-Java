package com.model.order.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.utility.DBconnection;

@WebServlet("/Delete_Order")
public class Delete_Order extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection con = null;
        PreparedStatement pst = null;
        
        try {
           
            con = DBconnection.getConnection();

           
            pst = con.prepareStatement("DELETE FROM order_table WHERE id= ?");
            pst.setInt(1, Integer.parseInt(request.getParameter("order_id")));

            int rowCount = pst.executeUpdate();

            RequestDispatcher dispatcher = request.getRequestDispatcher("View");

            if (rowCount > 0) {
                request.setAttribute("status", "correct");
            } else {
                request.setAttribute("status", "error");
            }

            dispatcher.forward(request, response);
        } catch (NumberFormatException | SQLException e) {
            e.printStackTrace(); 
            request.setAttribute("status", "error");
            RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
            dispatcher.forward(request, response);
        } finally {
            // Close resources
            try {
                if (pst != null) {
                    pst.close();
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