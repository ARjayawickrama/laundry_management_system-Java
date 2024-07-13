
package com.user.registration.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.utility.DBconnection;

@WebServlet("/Adduser")
public class Adduser extends HttpServlet {

    private static final long serialVersionUID = 1L;
    Connection con;
    PreparedStatement pst;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String username = req.getParameter("username"); // Assuming username field is present
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String mobile = req.getParameter("mobile");
        String password = req.getParameter("password");

        try {
            con = DBconnection.getConnection();

            pst = con.prepareStatement("INSERT INTO user (username, name, email, mobile, password) VALUES (?, ?, ?, ?, ?)");

            pst.setString(1, username);
            pst.setString(2, name);
            pst.setString(3, email);
            pst.setString(4, mobile);
            pst.setString(5, password);

            int rowCount = pst.executeUpdate();
         
            RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");

            if (rowCount > 0) {
                req.setAttribute("status", "success");
            } else {
                req.setAttribute("status", "fail");
            }

            dispatcher.forward(req, resp);
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
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}

