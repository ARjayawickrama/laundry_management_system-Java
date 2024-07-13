package com.feedback.servlet;

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

@WebServlet("/Addfeedback")
public class Addfeedback extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private Connection con;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String massage = request.getParameter("massage");

        try {
            con = DBconnection.getConnection();

            PreparedStatement pst = con.prepareStatement(
                    "INSERT INTO feedback (name, phone, email, massage) VALUES (?, ?, ?, ?)");

            pst.setString(1, name);
            pst.setString(2, phone);
            pst.setString(3, email);
            pst.setString(4, massage);

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
