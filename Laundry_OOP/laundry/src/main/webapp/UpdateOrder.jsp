<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Order</title>
   <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
              background: url('images/add3.jpg') no-repeat center center fixed;
            display: flex;
        }
        form {
        
        background-color: rgba(255, 255, 255, 5); 
              
            width: 900px;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
        }
        label {
            font-weight: bold;
        }
        input[type="number"],
        input[type="date"],
        input[type="text"],
        input[type="submit"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
              border: none; 
  color: black; 
  padding: 10px 10px; 
  text-align: center;
  text-decoration: none; 
  display: inline-block; 
  font-size: 16px; 
  margin: 4px 2px; 
  transition-duration: 0.4s; 
  cursor: pointer; 
            box-sizing: border-box;
        }
        select{
           width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: rgb(18, 19, 18);
            color: white;
            padding: 10px 0;
            border: none;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color:rgba(33, 34, 34, 0.725);
        }
        .closeMain {
            position: absolute;
            top: 2%;
            left: 0%;
        }
         table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }
        th, td {
         border: 1px solid #ddd; /* Add border to table cells */
      
            text-align: left;
        }
        
        th {
         
            background-color: #f2f2f2;
        }
        
       #CustomerID {
  background-color:rgb(62, 94, 66);
  border: none; 
  color: white; 
  padding: 15px 15px; 
  text-align: center;
  text-decoration: none; 
  display: inline-block; 
  font-size: 16px; 
  margin: 4px 2px; 
  transition-duration: 0.4s; 
  cursor: pointer; 
  }
  
         #CustomerID {
  background-color:rgba(0, 192, 102, 0.725);
  border: none; 
  color: white; 
  padding: 15px 15px; 
  text-align: center;
  text-decoration: none; 
  display: inline-block; 
  font-size: 16px; 
  margin: 4px 2px; 
  transition-duration: 0.4s; 
  cursor: pointer; 
  }
         #type1,  #type2,  #type3,  #type4,  #type5,  #type6{
  background-color: rgba(0, 108, 147, 0.725);
  border: none; 
  color: white; 
  padding: 11px 11px; 
  text-align: center;
  text-decoration: none; 
  display: inline-block; 
  font-size: 16px; 
  margin: 4px 2px; 
  transition-duration: 0.4s; 
  cursor: pointer; 
  }
  div{
   font-size: 20px;
    margin-top: 15px;
  
  
  }
      #clothType {
          width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
              border: none; 
  color: black; 
  padding: 10px 10px; 
  text-align: center;
  text-decoration: none; 
  display: inline-block; 
  font-size: 16px; 
  margin: 4px 2px; 
  transition-duration: 0.4s; 
  cursor: pointer; 
            box-sizing: border-box;
    }

   
    </style>
</head>
<body>

<div>

 <form action="UpdateOrder" method="post">
    <input type="hidden" name="id" value="<%= request.getParameter("id") %>">
    <div>ID:<%= request.getParameter("id") %></div>
    
    <table>
        <tr>
            <td><label for="CustomerID"> Customer_Name:</label></td>
            <td><input type="text" id="CustomerID" name="CustomerID" value="<%= request.getParameter("CustomerID") %>"></td>
        </tr>
        <tr>
            <td><label for="OrderDate"> Order Date:</label></td>
            <td><input type="text" id="OrderDate" name="OrderDate" value="<%= request.getParameter("OrderDate") %>"></td>
        </tr>
        <tr>
            <td><label for="clothType"> Enter Cloth Weight Type:</label></td>
            <td>
                <select id="clothType" name="clothType">
                    <option value="Kilograms" <%= (request.getParameter("clothType") != null && request.getParameter("clothType").equals("Kilograms")) ? "selected" : "" %>>Kilograms</option>
                    <option value="Grams" <%= (request.getParameter("clothType") != null && request.getParameter("clothType").equals("Grams")) ? "selected" : "" %>>Grams</option>
                </select>
            </td>
        </tr>
        
        
          <tr>
           <td>
<select id="type1" name="type1">
    <option value="No" <%= "No".equals(request.getParameter("type1")) ? "selected" : "" %>>No</option>
    <option value="Towels" <%= "Towels".equals(request.getParameter("type1")) ? "selected" : "" %>>Towels</option>
    <option value="Bedsheets" <%= "Bedsheets".equals(request.getParameter("type1")) ? "selected" : "" %>>Bedsheets</option>
    <option value="Pillow cases" <%= "Pillow cases".equals(request.getParameter("type1")) ? "selected" : "" %>>Pillow cases</option>
    <option value="Curtains" <%= "Curtains".equals(request.getParameter("type1")) ? "selected" : "" %>>Curtains</option>
    <option value="Trouser" <%= "Trouser".equals(request.getParameter("type1")) ? "selected" : "" %>>Trouser</option>
    <option value="Blouse" <%= "Blouse".equals(request.getParameter("type1")) ? "selected" : "" %>>Blouse</option>
</select>


     
                </td>
           <td><input type="text" class="quantity-input" id="1-quantity" name="inquantity1"value="<%= request.getParameter("inquantity1") %>"></td>
        </tr>
         <tr>
                 <td>
        
   <select id="type2" name="type2">
    <option value="No" <%= "No".equals(request.getParameter("type2")) ? "selected" : "" %>>No</option>
    <option value="Towels" <%= "Towels".equals(request.getParameter("type2")) ? "selected" : "" %>>Towels</option>
    <option value="Bedsheets" <%= "Bedsheets".equals(request.getParameter("type2")) ? "selected" : "" %>>Bedsheets</option>
    <option value="Pillow cases" <%= "Pillow cases".equals(request.getParameter("type2")) ? "selected" : "" %>>Pillow cases</option>
    <option value="Curtains" <%= "Curtains".equals(request.getParameter("type2")) ? "selected" : "" %>>Curtains</option>
    <option value="Trouser" <%= "Trouser".equals(request.getParameter("type2")) ? "selected" : "" %>>Trouser</option>
    <option value="Blouse" <%= "Blouse".equals(request.getParameter("type2")) ? "selected" : "" %>>Blouse</option>
</select>

                </td>
                <td><input type="text" class="quantity-input" id="2-quantity" name="inquantity2" value="<%= request.getParameter("inquantity2") %>"></td>
              </tr>
              <tr>
                <td>
   <select id="type3" name="type3">
    <option value="No" <%= "No".equals(request.getParameter("type3")) ? "selected" : "" %>>No</option>
    <option value="Towels" <%= "Towels".equals(request.getParameter("type3")) ? "selected" : "" %>>Towels</option>
    <option value="Bedsheets" <%= "Bedsheets".equals(request.getParameter("type3")) ? "selected" : "" %>>Bedsheets</option>
    <option value="Pillow cases" <%= "Pillow cases".equals(request.getParameter("type3")) ? "selected" : "" %>>Pillow cases</option>
    <option value="Curtains" <%= "Curtains".equals(request.getParameter("type3")) ? "selected" : "" %>>Curtains</option>
    <option value="Trouser" <%= "Trouser".equals(request.getParameter("type3")) ? "selected" : "" %>>Trouser</option>
    <option value="Blouse" <%= "Blouse".equals(request.getParameter("type3")) ? "selected" : "" %>>Blouse</option>
</select>

     
                </td>
                <td><input type="text" class="quantity-input" id="3-quantity" name="inquantity3"value="<%= request.getParameter("inquantity3") %>"></td>
              </tr>
              <tr>
               <td>
        
   <select id="type4" name="type4">
    <option value="No" <%= "No".equals(request.getParameter("type4")) ? "selected" : "" %>>No</option>
    <option value="Towels" <%= "Towels".equals(request.getParameter("type4")) ? "selected" : "" %>>Towels</option>
    <option value="Bedsheets" <%= "Bedsheets".equals(request.getParameter("type4")) ? "selected" : "" %>>Bedsheets</option>
    <option value="Pillow cases" <%= "Pillow cases".equals(request.getParameter("type4")) ? "selected" : "" %>>Pillow cases</option>
    <option value="Curtains" <%= "Curtains".equals(request.getParameter("type4")) ? "selected" : "" %>>Curtains</option>
    <option value="Trouser" <%= "Trouser".equals(request.getParameter("type4")) ? "selected" : "" %>>Trouser</option>
    <option value="Blouse" <%= "Blouse".equals(request.getParameter("type4")) ? "selected" : "" %>>Blouse</option>
</select>

     
                </td>
                <td><input type="text" class="quantity-input" id="4-quantity" name="inquantity4"value="<%= request.getParameter("inquantity4") %>"></td>
            </tr>
            <tr>
                   <td>
        
   <select id="type5" name="type5">
    <option value="No" <%= "No".equals(request.getParameter("type5")) ? "selected" : "" %>>No</option>
    <option value="Towels" <%= "Towels".equals(request.getParameter("type5")) ? "selected" : "" %>>Towels</option>
    <option value="Bedsheets" <%= "Bedsheets".equals(request.getParameter("type5")) ? "selected" : "" %>>Bedsheets</option>
    <option value="Pillow cases" <%= "Pillow cases".equals(request.getParameter("type5")) ? "selected" : "" %>>Pillow cases</option>
    <option value="Curtains" <%= "Curtains".equals(request.getParameter("type5")) ? "selected" : "" %>>Curtains</option>
    <option value="Trouser" <%= "Trouser".equals(request.getParameter("type5")) ? "selected" : "" %>>Trouser</option>
    <option value="Blouse" <%= "Blouse".equals(request.getParameter("type5")) ? "selected" : "" %>>Blouse</option>
</select>

     
                </td>
                <td><input type="text" class="quantity-input" id="5-quantity" name="inquantity5"value="<%= request.getParameter("inquantity5") %>"></td>
            </tr>
            <tr>
               <td>
        
  <select id="type6" name="type6">
    <option value="No" <%= "No".equals(request.getParameter("type6")) ? "selected" : "" %>>No</option>
    <option value="Towels" <%= "Towels".equals(request.getParameter("type6")) ? "selected" : "" %>>Towels</option>
    <option value="Bedsheets" <%= "Bedsheets".equals(request.getParameter("type6")) ? "selected" : "" %>>Bedsheets</option>
    <option value="Pillow cases" <%= "Pillow cases".equals(request.getParameter("type6")) ? "selected" : "" %>>Pillow cases</option>
    <option value="Curtains" <%= "Curtains".equals(request.getParameter("type6")) ? "selected" : "" %>>Curtains</option>
    <option value="Trouser" <%= "Trouser".equals(request.getParameter("type6")) ? "selected" : "" %>>Trouser</option>
    <option value="Blouse" <%= "Blouse".equals(request.getParameter("type6")) ? "selected" : "" %>>Blouse</option>
</select>

     
                </td>
                <td><input type="text" class="quantity-input" id="6-quantity" name="inquantity6" value="<%= request.getParameter("inquantity6") %>"></td>
            </tr>
        
        <tr>
            <td><label for="weight">Enter Weight:</label></td>
            <td><input type="text" id="weight" name="weight" value="<%= request.getParameter("weight") %>"></td>
        </tr>
      
       <tr>
            <td><label for="weight">Price:</label></td>
            <td><input type="text" id="price" name="price" value="<%= request.getParameter("price") %>"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Update Order"onclick="confirmUpdate()"></td>
              
        </tr>
    </table>
</form>
 
</div>
  <script>
        function confirmUpdate() {
           
            var confirmation = confirm("Are you sure you  update the order?");
            if (confirmation) {
              
                alert("Order updated!");
             
            } else {
               
                alert("Update canceled.");
                return false;
            }
        }
        
        function confirmUpdate() {
            
            var confirmation = confirm("Are you sure you  update the order?");
            if (confirmation) {
              
                alert("Order updated!");
             
            } else {
               
                alert("Update canceled.");
                return false;
            }
        }
    </script>
    
</body>
</html>

