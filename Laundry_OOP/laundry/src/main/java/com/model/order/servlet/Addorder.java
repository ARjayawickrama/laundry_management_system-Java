
package com.model.order.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Addorder")
public class Addorder extends BaseOrderServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	  String customerID = request.getParameter("CustomerID");
          String orderDate = request.getParameter("OrderDate");
          String type1 = request.getParameter("type1");
          String inquantity1 = request.getParameter("inquantity1");
          String type2 = request.getParameter("type2");
          String inquantity2 = request.getParameter("inquantity2");
          String type3 = request.getParameter("type3");
          String inquantity3 = request.getParameter("inquantity3");
          String type4 = request.getParameter("type4");
          String inquantity4 = request.getParameter("inquantity4");
          String type5 = request.getParameter("type5");
          String inquantity5 = request.getParameter("inquantity5");
          String type6 = request.getParameter("type6");
          String inquantity6 = request.getParameter("6inquantity6");
          String clothType = request.getParameter("clothType");
          String weight = request.getParameter("weight");
         
        
        Connection con = null;
        PreparedStatement pst = null;
        
        try {
            if (weight != null && !weight.isEmpty()) {
                float price = Float.parseFloat(weight)*100;
            
                con = getConnection();

                pst = con.prepareStatement(
                        "INSERT INTO order_table (CustomerID, OrderDate,type1,inquantity1,type2,inquantity2,type3,inquantity3,type4,inquantity4,type5,inquantity5,type6,inquantity6, clothType, weight, price) VALUES (?, ?, ?, ? ,?,?,?,?,?,?,?,?,?,?,?,?,?)");

                pst.setString(1, customerID);
                pst.setString(2, orderDate);
                pst.setString(3, type1);
                pst.setString(4, inquantity1);
                pst.setString(5, type2);
                pst.setString(6, inquantity2);
                pst.setString(7, type3);
                pst.setString(8, inquantity3);
                pst.setString(9, type4);
                pst.setString(10, inquantity4);
                pst.setString(11, type5);
                pst.setString(12, inquantity5);
                pst.setString(13, type6);
                pst.setString(14, inquantity6);
                pst.setString(15, clothType);
                pst.setString(16, weight);
                pst.setFloat(17, price); 
          

                int rowsAffected = pst.executeUpdate();
              
                if (rowsAffected > 0) {
                  
                    response.sendRedirect("orderConform.jsp"); 
                } else {
                    
                    response.sendRedirect("error.jsp"); 
                }
            } else {
          
                response.sendRedirect("error.jsp"); 
            }
        } catch (NumberFormatException | SQLException e) {
            e.printStackTrace(); 
            response.sendRedirect("error.jsp"); 
            closeResources(con, pst);
        }
    }
}
