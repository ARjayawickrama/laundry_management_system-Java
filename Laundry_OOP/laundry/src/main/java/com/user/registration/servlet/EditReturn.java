package com.user.registration.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.utility.DBconnection;

@WebServlet("/Editreturn")
public class EditReturn extends HttpServlet {
    private static final long serialVersionUID = 1L;
    Connection con;
    PreparedStatement pst;
    ResultSet rs;

    protected void doGet(HttpServletRequest req, HttpServletResponse rsp) throws ServletException, IOException {
        rsp.setContentType("text/html");
        PrintWriter out = rsp.getWriter();

        String eid = req.getParameter("id");

        try {
            con = DBconnection.getConnection();
            pst = con.prepareStatement("select * from user where id = ?");
            pst.setString(1, eid);
            rs = pst.executeQuery();

            while (rs.next()) {
                out.println("<html>");
                out.println("<head>");
                out.println("<style>");
                out.println("body {");
                out.println("    background: url('images/singwall.jpg') no-repeat center center fixed;");
                out.println("    background-size: 100%;");
                out.println("    font-family: Arial, sans-serif;");
                out.println("    background-color: #f4f4f4;");
                out.println("    margin: 0;");
                out.println("    padding: 0;");
                out.println("    margin-top: 300px;");
                out.println("}");
                out.println("h2 {");
                out.println("    color: #333;");
                out.println("}");
                out.println("form {");
                out.println("    background-color: #fff;");
                out.println("    width: 500px;");
                out.println("    margin: 20px auto;");
                out.println("    padding: 20px;");
                out.println("    border-radius: 5px;");
                out.println("    box-shadow: 0 0 10px rgba(0,0,0,0.1);");
                out.println("}");
                out.println("label {");
                out.println("    display: block;");
                out.println("    margin-bottom: 5px;");
                out.println("    color: #333;");
                out.println("}");
                out.println("input[type='text'], input[type='password'],input[type='date'] {");
                out.println("    width: 100%;");
                out.println("    padding: 10px;");
                out.println("    margin-bottom: 10px;");
                out.println("    border: 1px solid #ccc;");
                out.println("    border-radius: 3px;");
                out.println("    box-sizing: border-box;");
                out.println("}");
                out.println("input[type='submit'] {");
                out.println("    background-color: #039438;");
                out.println("    color: #fff;");
                out.println("    padding: 10px 20px;");
                out.println("    border: none;");
                out.println("    border-radius: 3px;");
                out.println("    cursor: pointer;");
                out.println("}");
                out.println("input[type='submit']:hover {");
                out.println("    background-color: #0056b3;");
                out.println("}");
                out.println("div {");
                out.println("    top: 10%;");
                out.println("    position: absolute;");
                out.println("    left: 50%;");
                out.println("    transform: translateX(-50%);");
                out.println("}");
                out.println("</style>");
                out.println("</head>");
                out.println("<body>");

                out.println("<div>");
                out.println("<form action='EditServlet' method='POST'>");
                out.println("<h2>Edit User Details</h2>");
                out.println("<label>Username:</label>");
                out.println("<input type='text' name='username' class='form_input' value='" + rs.getString("username") + "' autofocus required>");
                out.println("<label>Name:</label>");
                out.println("<input type='text' name='name' class='form_input' value='" + rs.getString("name") + "' required>");
                out.println("<label>Email:</label>");
                out.println("<input type='text' name='email' value='" + rs.getString("email") + "' required>");
                out.println("<label>Mobile:</label>");
                out.println("<input type='text' name='mobile' class='form_input' value='" + rs.getString("mobile") + "' pattern='[0-9]{10}' title='Please enter a 10-digit number' required>");
                out.println("<label>Password:</label>");
                out.println("<input type='password' name='password' class='form_input' value='" + rs.getString("password") + "' pattern='.{5,}' title='Must contain at least 5 or more characters' required>");
                out.println("<label>Confirm Password:</label>");
                out.println("<input type='password' name='confirm_password' class='form_input' required>");
                out.println("<input type='submit' value='Edit' class='form_submit'>");
                out.println("</form>");
                out.println("</div>");

                out.println("</body>");
                out.println("</html>");
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pst != null) pst.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
