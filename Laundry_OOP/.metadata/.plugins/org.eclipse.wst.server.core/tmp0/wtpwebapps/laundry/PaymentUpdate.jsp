<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.ResultSet" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import ="com.utility.DBconnection" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Payment</title>
    <style>
      
       body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background: url('images/777.jpg') no-repeat center center fixed;
    background-size: 100%; 
}

.closeMain {
    text-align: right;
    margin: 10px;
}

.closeMain img {
    width: 40px;
    height: 40px;
}

form {
    width: 500px;
    margin: 0 auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
}

input[type="text"], input[type="date"] {
    width: 100%;
    padding: 8px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type="submit"] {
    width: 100%;
       background-color: rgb(90, 116, 139);
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
}

select#Cardholder_Name {
    width: 100%;
    background-color: rgb(0, 35, 78);
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
}

input[type="submit"]:hover {
    background-color: #45a049;
}

.a1 {
    display: block;
    margin-top: 10px;
    text-align: center;
    text-decoration: none;
    color: #333;
}

div {
    top: 15%;
    position: absolute;
    left: 40%;
    transform: translateX(-50%);
}

#pay {
    background-color:  rgb(48, 75, 66);
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

.a1 {
    text-decoration: none;
    background-color: #04AA6D;
    border: none;
    color: white;
    padding: 10px 10px;
}

.a1:hover {
    background-color: #066a4a; 
}

           div{
        top: 10%;
          position: absolute;
  left: 50%;
  transform: translateX(-50%);
        
        }
    </style>
</head>
<body>
    
    <div>
    <form action="UpdatePayment" method="post"  onsubmit="return validateForm()">
    
    <div>Payment ID:<%= request.getParameter("id") %></div>
    <br>
  <br><br>
    
    <label for="cardNumber">Card Number:</label>
    <input type="text" id="Card_number" name="Card_number" required value="<%= request.getParameter("Card_number") %>"maxlength="16"required  placeholder="0123 0123 0123 0123" pattern="\d{16}"><br><br>
    
    <label for="expiryDate">Expiry Date:</label>
    <input type="date" id="expiryDate" name="ExDate" required value="<%= request.getParameter("ExDate") %>"><br><br>
    
    <label for="cvv">CVV:</label>
    <input type="text" id="Cvv" name="Cvv" required value="<%= request.getParameter("Cvv") %>" maxlength="3"><br><br>
    
    <label for="cardHolder">Cardholder Name:</label>
    
    <input type="text" id="cardHolder" name="Cardholder_Name" required value="<%= request.getParameter("Cardholder_Name") %>"><br><br>
    
    <label for="amount">Amount:</label>
    <input type="text" id="amount" name="Amount" required value="<%= request.getParameter("Amount") %>"><br><br>
    
    <input type="submit" value="Update Payment">
</form>
    
    </div>
    <script>
    function validateForm() {
        var cvv = document.getElementById("Cvv").value;
        if (cvv.length > 3) {
            alert("CVV should be a maximum of three characters.");
            return false;
        }
        
        var number = document.getElementById("Card_number").value;
        if (number.length > 16) {
            alert("Card number should be a maximum of 16 characters.");
            return false;
        }
        
        // You can add more validation logic here if needed
        
        return true;
    }
    function openNewJSP() {
        window.location.href = 'PaymentView'; // Redirect to newww.jsp
    }
   
</script>
</body>
</html>
