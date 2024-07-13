<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Automatic Popup Form</title>
<style>
  /* Style for the overlay */
  .overlay {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent black */
  }
  
  /* Style for the popup form */
  .popup-form {
    display: none;
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background-color: #ffffff;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
  }
</style>
</head>
<body>





 <table class="popup-form">
        <tr>
            <th>id</th>
            <th>CustomerID</th>
            <th>OrderDate</th>
            <th>clothType</th>
            <th>weight</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <%
        ResultSet rs3 = (ResultSet) request.getAttribute("resultSet");
        if (rs3 != null) {
            while (rs3.next()) {
        %>
        <tr>
            <td><%= rs3.getString("id") %></td>
            <td><%= rs3.getString("CustomerID") %></td>
            <td><%= rs3.getString("OrderDate") %></td>
            <td><%= rs3.getString("clothType") %></td>
            <td><%= rs3.getString("weight") %></td>
            <td>
            <form action="UpdateOrder" method="post">
                <a class="buttona" href="UpdateOrder.jsp?id=<%= rs3.getString("id") %>&CustomerID=<%= rs3.getString("CustomerID") %>&OrderDate=<%= rs3.getString("OrderDate") %>&clothType=<%= rs3.getString("clothType") %>&weight=<%= rs3.getString("weight") %>">Edit</a>
                </form>
            </td>
            <td>
                <form action="Delete_Order" method="get">
                    <input type="hidden" name="order_id" value="<%= rs3.getInt("id") %>">
                    <button class="buttona" type="submit">Delete</button>
                </form>
            </td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="7">No records found</td>
        </tr>
        <%
        }
        %>
    </table>





<script>
  // Function to show the overlay and popup form
  function showPopup() {
    var overlay = document.getElementById('overlay');
    var popupForm = document.getElementById('popup-form');
    
    overlay.style.display = 'block';
    popupForm.style.display = 'block';
  }

  // Trigger the showPopup function after page load
  window.onload = function() {
    showPopup();
  };
</script>
</body>
</html>
