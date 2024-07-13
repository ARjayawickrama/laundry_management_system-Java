<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Feedback View</title>
<style>
      body {
      background: url('images/f1.jpg') no-repeat center center fixed;
             background-size: 100%; 
        margin-top: 200px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    th, td {
        border: 1px solid black;
        padding: 8px;
        text-align: left;
        background-color: #f6f6f6;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color: #f2f2f2;
    }
    .buttona {
        background-color: #4CAF50;
        border: none;
        color: white;
        padding: 8px 16px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        margin: 4px 2px;
        cursor: pointer;
        border-radius: 3px;
    }
    .buttona:hover {
        background-color: #45a049;
    }
    .buttona:focus {
        outline: none;
    }
    .buttona:active {
        background-color: #36723a;
    }
</style>
</head>
<body>

<div>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Phone</th>
            <th>Email</th>
            <th>Message</th>
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
            <td><%= rs3.getString("name") %></td>
            <td><%= rs3.getString("phone") %></td>
            <td><%= rs3.getString("email") %></td>
            <td><%= rs3.getString("massage") %></td>
            <td>
                <a class="buttona" href="update_feedback.jsp?id=<%= rs3.getString("id") %>&name=<%= rs3.getString("name") %>&phone=<%= rs3.getString("phone") %>&email=<%= rs3.getString("email") %>&message=<%= rs3.getString("massage") %>">Edit</a>
            </td>
            <td>
                <form action="delete" method="get">
                    <input type="hidden" name="id" value="<%= rs3.getInt("id") %>">
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
</div>

</body>
</html>
