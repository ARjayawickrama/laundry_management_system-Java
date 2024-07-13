package com.user.registration.servlet;

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

@WebServlet("/Delete_User")
public class Delete_User extends HttpServlet {

    private static final long serialVersionUID = 1L;
    Connection con;
    PreparedStatement pst;

    protected void doGet(HttpServletRequest req, HttpServletResponse rsp) throws ServletException, IOException {

        rsp.setContentType("text/html");
        String userId = req.getParameter("id");

        try {
            con = DBconnection.getConnection();

            pst = con.prepareStatement("DELETE FROM user WHERE id = ?");
            pst.setInt(1, Integer.parseInt(userId));

            int rowCount = pst.executeUpdate();

            RequestDispatcher dispatcher = req.getRequestDispatcher("viewepro");

            if (rowCount > 0) {
                req.setAttribute("status", "correct");
            } else {
                req.setAttribute("status", "error");
            }

            dispatcher.forward(req, rsp);
        } catch (Exception e) {
            e.printStackTrace(); 
        } finally {
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
