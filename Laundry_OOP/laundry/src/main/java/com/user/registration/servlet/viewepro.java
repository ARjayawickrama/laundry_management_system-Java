package com.user.registration.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.utility.DBconnection;

@WebServlet("/viewepro")
public class viewepro extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    int row;

    public void doGet(HttpServletRequest req, HttpServletResponse rsp) throws IOException, ServletException {
        
        rsp.setContentType("text/html");
        PrintWriter out = rsp.getWriter();
        
        try {
        	con = DBconnection.getConnection();//my detabase connecthione

            String sql;
            
            sql = "select * from user";
            Statement stmt = con.createStatement();
            rs = stmt.executeQuery(sql);
            
            out.println("<html>");
            out.println("<head>");
            out.println("<style>");
            out.println("body {");
            out.println("    background: url('images/singwall.jpg') no-repeat center center fixed;");
            out.println("    background-size: 100%;");
            out.println("    font-family: Arial, sans-serif;");
            out.println("    background-color: white;");
            out.println("}");
            out.println("table {");
            out.println("    border-collapse: collapse;");
            out.println("    width: 80%;");
            out.println("    margin: 50px auto;");
            out.println("}");
            out.println("th, td {");
            out.println("    color: white;");
            out.println("    border: 1px solid #ddd;");
            out.println("    padding: 8px;");
            out.println("}");
            out.println("th {");
            out.println("    background-color: #04AA6D;");
            out.println("    color: white;");
            out.println("}");
            out.println("tr:nth-child(even) {");
            out.println("    background-color: black;");
            out.println("}");
            out.println("a {");
            out.println("    text-decoration: none;");
            out.println("    background-color: #04AA6D;");
            out.println("    border: none;");
            out.println("    color: white;");
            out.println("    padding: 5px 10px;");
            out.println("}");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<a href=\"homepage.jsp\"> Back</a>");
            out.println("<table>");
            out.println("<tr>");
            out.println("<th>ID</th>");
            out.println("<th>User Name</th>");
            out.println("<th>Name</th>");
            out.println("<th>Email</th>");
            out.println("<th>Mobile</th>");
            out.println("<th>Password</th>");
            out.println("<th>Edit</th>");
            out.println("<th>Delete User</th>");
            out.println("</tr>");
            
            // JavaScript function for confirmation
            out.println("<script>");
            out.println("function DeleteConfirmation() {");
            out.println("    var confirmation = confirm('Are you sure delete user?');");
            out.println("    if (confirmation) {");
            out.println("        alert('User deleted!');");
            out.println("        return true;");
            out.println("    } else {");
            out.println("        alert('Deletion canceled.');");
            out.println("        return false;");
            out.println("    }");
            out.println("}");
            out.println("</script>");
            
            while(rs.next()) {
                out.println("<tr>");
                out.println("<td>" + rs.getString("id") + "</td>");
                out.println("<td>" + rs.getString("username") + "</td>");
                out.println("<td>" + rs.getString("name") + "</td>");
                out.println("<td>" + rs.getString("email") + "</td>");
                out.println("<td>" + rs.getString("mobile") + "</td>");
                out.println("<td>" + rs.getString("password") + "</td>");
                out.println("<td><a href='Editreturn?id=" + rs.getString("id") + "'>Edit</a></td>");
                out.println("<td><a href='Delete_User?id=" + rs.getString("id") + "'onclick='return DeleteConfirmation();'>Delete_User</a></td>");
                out.println("</tr>");
            }
            
            out.println("</table>");
            out.println("</body>");
            out.println("</html>");
            
        } catch (SQLException ex) {
            out.println("<font color='red'>Record Failed</font>");
        }
    }
}
