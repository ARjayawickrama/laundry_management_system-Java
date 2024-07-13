package com.user.registration.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.utility.DBconnection;

@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    Connection con;
    PreparedStatement pst;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse rsp) throws ServletException, IOException {

        rsp.setContentType("text/html");
        PrintWriter out = rsp.getWriter();

        try {
        	con = DBconnection.getConnection();//my detabase connecthione

            String id = req.getParameter("id"); // Assuming the parameter name is "id"
            String name = req.getParameter("name");
            String email = req.getParameter("email");
            String mobile = req.getParameter("mobile");
            String password = req.getParameter("password");

            if (id != null && !id.isEmpty()) {
                pst = con.prepareStatement("update user set name = ?, email = ?, mobile = ?, password = ? where id = ?");
                pst.setString(1, name);
                pst.setString(2, email);
                pst.setString(3, mobile);
                pst.setString(4, password);
                pst.setInt(5, Integer.parseInt(id)); // Assuming 'id' is an integer

                int row = pst.executeUpdate();

                if (row > 0) {
                    out.println("<font color='green'>Record Updated</font>");
                } else {
                    out.println("<font color='red'>Record Not Updated</font>");
                }
            } else {
                out.println("<font color='red'>Invalid ID</font>");
            }

        } catch (SQLException ex) {
            Logger.getLogger(EditServlet.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace(); // Print the stack trace for detailed error information
            out.println("<font color='red'>Record Failed</font>");
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(EditServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}

