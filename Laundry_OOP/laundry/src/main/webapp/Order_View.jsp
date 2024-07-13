<%@ page import="java.sql.ResultSet" %>

<html>
<head>

    <meta charset="UTF-8">
    <title>View Orders</title>
    <style>
   /* Your CSS styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f8f8;
            background: url('images/add3.jpg') no-repeat center center fixed;
            background-size: 100%; 
        }

        table {
         margin-top: 100px;
            border-collapse: collapse;
            width: 100%;
            background-color: #fff;
            border-radius: 5px;
            overflow: hidden;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
           
            
        }
        
        table{
    border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #00bbff;
 
        
        }

        th, td {
             text-align: center;
               border: 1px solid #ddd;

        }

        th {
           padding-top: 20px;
  padding-bottom: 20px;
  text-align: left;
 background-color: #028abc;
  color: white;
            
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        a {
            text-decoration: none;
            color: #007bff;
            transition: color 0.3s ease;
        }

        .buttona:hover {
            background-color: #c82333;
        }

        button {
            padding: 6px 10px;
            background-color: #dc3545;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #c82333;
        }
      .Edit1{
          padding: 6px 10px;
            background-color: #dc3545;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            transition: background-color 0.3s ease;
      
      }
      .bac{
        padding: 6px 10px;
      
            background-color: #dc3545;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            transition: background-color 0.3s ease;
      }
        .closeMain {
            position: absolute;
            top: 2%;
            left: 0%;
        }
         body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f8f8f8;
    }

    /* New CSS styles */
    .buttona {
        /* Your button styles */
        /* Example: */
        background-color: #007bff;
        color: #fff;
        padding: 6px 10px;
        border: none;
        border-radius: 3px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
           .table-container {
          
            overflow: auto; /* Enable scrolling */
        }
           
           th:first-child, td:first-child {
  text-align: left;
}

tr:nth-child(even) {
  background-color: #f2f2f2
}

.fa-check {
  color: green;
}

.fa-remove {
  color: red;
}
    </style>
</head>
<body>
<div>
    <table>
        <tr>
          
            <th>Customer_Name</th>
            <th>OrderDate</th>
            <th>Cloth Type</th>
            <th>Quantity</th>
            <th>Cloth Type</th>
            <th>Quantity</th>
            <th>Cloth Type</th>
            <th>Quantity</th>
            <th>Cloth Type</th>
            <th>Quantity</th>
            <th>Cloth Type</th>
            <th>Quantity</th>
            <th>Cloth Type</th>
            <th>Quantity</th>
            <th>Weight Type</th>
            <th>Weight</th>
            <th>Price</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <%
        ResultSet rs3 = (ResultSet) request.getAttribute("resultSet");
        if (rs3 != null) {
            while (rs3.next()) {
        %>
        <tr>
            
            <td><%= rs3.getString("CustomerID") %></td>
            <td><%= rs3.getString("OrderDate") %></td>
            <td><%= rs3.getString("type1") %></td>
            <td><%= rs3.getString("inquantity1") %></td>
            <td><%= rs3.getString("type2") %></td>
            <td><%= rs3.getString("inquantity2") %></td>
            <td><%= rs3.getString("type3") %></td>
            <td><%= rs3.getString("inquantity3") %></td>
            <td><%= rs3.getString("type4") %></td>
            <td><%= rs3.getString("inquantity4") %></td>
            <td><%= rs3.getString("type5") %></td>
            <td><%= rs3.getString("inquantity5") %></td>
            <td><%= rs3.getString("type6") %></td>
            <td><%= rs3.getString("inquantity6") %></td> 
            <td><%= rs3.getString("clothType") %></td>
            <td><%= rs3.getString("weight") %></td>
            <td><%= rs3.getString("price") %></td>
            <td>
            <form action="UpdateOrder" method="post">
              <a class="buttona" href="UpdateOrder.jsp?id=<%= rs3.getString("id") %>
&CustomerID=<%= rs3.getString("CustomerID") %>
&OrderDate=<%= rs3.getString("OrderDate") %>
&type1=<%= rs3.getString("type1") %>
&inquantity1=<%= rs3.getString("inquantity1") %>
&type2=<%= rs3.getString("type2") %>
&inquantity2=<%= rs3.getString("inquantity2") %>
&type3=<%= rs3.getString("type3") %>
&inquantity3=<%= rs3.getString("inquantity3") %>
&type4=<%= rs3.getString("type4") %>
&inquantity4=<%= rs3.getString("inquantity4") %>
&type5=<%= rs3.getString("type5") %>
&inquantity5=<%= rs3.getString("inquantity5") %>
&type6=<%= rs3.getString("type6") %>
&inquantity6=<%= rs3.getString("inquantity6") %>
&clothType=<%= rs3.getString("clothType") %>
&weight=<%= rs3.getString("weight") %>
&price=<%= rs3.getString("price") %>">Edit</a>
              
               
                </form>
            </td>
            <td>
                <form action="Delete_Order" method="get" onsubmit="return DeleteConfirmation()">
                    <input type="hidden" name="order_id" value="<%= rs3.getInt("id") %>">
                    <button class="buttona" type="submit" >Delete</button>
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
</div>
<script>
       function DeleteConfirmation() {
            
            var confirmation = confirm("Are you sure you  Delete the order?");
            if (confirmation) {
              
                alert("Order Delete!");
             
            } else {
               
                alert("Order Delete canceled.");
                return false;
            }
        }
    </script>
</body>
</html>

