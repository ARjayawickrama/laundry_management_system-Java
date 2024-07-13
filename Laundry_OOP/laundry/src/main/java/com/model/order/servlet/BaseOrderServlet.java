package com.model.order.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;

import com.utility.DBconnection;

public abstract class BaseOrderServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected Connection getConnection() throws SQLException {
        return DBconnection.getConnection();
    }

    protected void closeResources(Connection con, PreparedStatement pst) {
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

    protected void redirectWithError(HttpServletResponse response, String errorMessage) throws IOException {
        response.sendRedirect("error.jsp?message=" + errorMessage);
    }
}
