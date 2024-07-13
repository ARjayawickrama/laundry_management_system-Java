<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Payment</title>
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
        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
            input[type="date"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            width: 100%;
             background-color: rgb(7, 139, 97);
    color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        
         select#Cardholder_Name {
    width: 100%;
    background-color:rgb(0, 35, 78);
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
        div{
        top: 15%;
          position: absolute;
         left: 40%;
         transform: translateX(-50%);
         
        
        }
        
        .closeMain {
            position: absolute;
            top: 2%;
            left: 2%;
            
        }
        .main-imd img{
        margin-left: 100%;
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
      background-color: rgb(90, 116, 139);
    color: white;
    border: none;
    padding: 10px 10px;
}

.a1:hover {
    background-color: #066a4a; 
}

    </style>
</head>
<body >
  


      <img alt="" src="images/pay.png"width="400px" height="400px">
  <div class="main-imd">
    <form action="AddPayment" method="post" onsubmit="return validateForm()">
    <label for="Card_number">Card Number:</label>
    <input type="text" id="Card_number" name="Card_number" maxlength="16"required  placeholder="0123 0123 0123 0123" pattern="\d{16}">
    
    <label for="ExDate">Expiration Date:</label>
    <input type="date" id="ExDate" name="ExDate" required >
    
    <label for="Cvv">CVV:</label>
    <input type="text" id="Cvv" name="Cvv" maxlength="3" required placeholder="475">
    
    <label for="Cardholder_Name">Cardholder Name:</label>
     <select id="Cardholder_Name" name="Cardholder_Name" required >
            <option value="">Cardholder Name add</option>
            <option value="BOC">BOC</option>
            <option value="HNB">HNB</option>
             <option value="NDB">NDB</option>
              <option value="SAMPATH">SAMPATH</option>
                  <option value="DFCC">DFCC</option>
                      <option value="COMMERCIAL">COMMERCIAL</option>
           
          
          </select>
    <label for="Amount">Amount:</label>
    <input type="text" id="Amount" name="Amount" required>
    
    <input type="submit" value="Add Card">
   
   <a class="a1" href="PaymentView" target="_blank"onclick="openNewJSP()">Show</a>
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
        
     
        
        return true;
    }
    function openNewJSP() {
        window.location.href = 'PaymentView'; 
    }
    
    
   
</script>

    
</body>
</html>
