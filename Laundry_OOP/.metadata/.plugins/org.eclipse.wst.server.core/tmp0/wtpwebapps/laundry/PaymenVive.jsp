<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment View</title>
<style>
body{
   margin-top:200px;
     background: url('images/777.jpg') no-repeat center center fixed;
      background-size: 100%; 
     
}

.closeMain {
    position: absolute;
    top: 2%;
    left: 2%;
}
table {
    width: 700px;
    border-collapse: collapse;
}
th, td {
 color: black;
    padding: 8px;
    text-align: left;
      background-color: #f6f6f6;
    border-bottom: 1px solid #ddd;
}
th {
    background-color: #f2f2f2;
}

.edit-button, .delete-button {
    text-decoration: none;
    padding: 5px 10px;
    border: none;
    background-color: #4CAF50;
    color: white;
    border-radius: 3px;
}
.edit-button:hover, .delete-button:hover {
    background-color: #45a049;
}
.Edit1 {
    text-decoration: none;
    padding: 5px 10px;
    border: none;
    background-color: #4CAF50;
    color: white;
    border-radius: 3px;
}
     div{
        top: 30%;
          position: absolute;
  left: 50%;
  transform: translateX(-50%);
        
        }
        table tr th{
        background-color: #f6f6f6;
        }
        
</style>
</head>
<body>


<div>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Card Number</th>
        <th>Expiry Date</th>
        <th>CVV</th>
        <th>Card Holder</th>
        <th>Amount</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <% 
    ResultSet rs = (ResultSet) request.getAttribute("resultSet");
    if (rs != null) {
        while (rs.next()) {
    %>
    <tr>
        <td><%= rs.getString("id") %></td>
        <td><%= rs.getString("Card_number") %></td>
        <td><%= rs.getString("ExDate") %></td>
        <td><%= rs.getString("Cvv") %></td>
        <td><%= rs.getString("Cardholder_Name") %></td>
        <td><%= rs.getString("Amount") %></td>
        <td>
            <form action="PaymentUpdate.jsp" method="post">
                <input type="hidden" name="id" value="<%= rs.getString("id") %>">
                <input type="hidden" name="Card_number" value="<%= rs.getString("Card_number") %>">
                <input type="hidden" name="ExDate" value="<%= rs.getString("ExDate") %>">
                <input type="hidden" name="Cvv" value="<%= rs.getString("Cvv") %>">
                <input type="hidden" name="Cardholder_Name" value="<%= rs.getString("Cardholder_Name") %>">
                <input type="hidden" name="Amount" value="<%= rs.getString("Amount") %>">
                <button type="submit" class="edit-button">Edit</button>
            </form>
        </td>
        <td>
            <form action="Delete_Payment" method="get" onsubmit="return DeleteConfirmation()">
                <input type="hidden" name="id" value="<%= rs.getString("id") %>">
                
                <button type="submit" class="delete-button">Delete</button>
            </form>
        </td>
    </tr>
    <%
        }
    } else {
    %>
    <tr>
        <td colspan="6">No records found</td>
    </tr>
    <%
    }
    %>
</table>
</div>
<script>
       function DeleteConfirmation() {
            
            var confirmation = confirm(" Delete the Payment?");
            if (confirmation) {
              
                alert("Payment Delete!");
             
            } else {
               
                alert("Payment Delete canceled.");
                return false;
            }
        }
    </script>
</body>
</html>
