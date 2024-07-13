package com.feedback.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.utility.DBconnection;

/**
 * Servlet implementation class FeedView
 */
@WebServlet("/FeedView")
public class FeedView extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        Connection con = null;
        Statement stmt = null;
        ResultSet rs3 = null;

        try {
            con = DBconnection.getConnection();
            stmt = con.createStatement();

            String sql = "SELECT * FROM feedback";
            rs3 = stmt.executeQuery(sql);

            request.setAttribute("resultSet", rs3); // Set ResultSet as request attribute
           
            RequestDispatcher dispatcher = request.getRequestDispatcher("/FeedView.jsp");
            dispatcher.forward(request, response);

        } catch (SQLException ex) {
            ex.printStackTrace();
            // Handle SQL exception
            request.setAttribute("error", "Error: Failed to retrieve records");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/error.jsp");
            dispatcher.forward(request, response);
        } finally {
            try {
                if (rs3 != null) {
                    rs3.close();
                }
                if (stmt != null) {
                    stmt.close();
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
