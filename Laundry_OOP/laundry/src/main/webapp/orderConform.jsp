<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script >
 function openNewJSP() {
    window.location.href = 'View'; 
}

 </script>
    <style>
       body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            background: url('images/14.jpg') no-repeat center center fixed;
            background-size: 100%; 
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            margin: 300px auto;
        }

        p {
            font-size: 20px;
            margin: 0 0 20px;
            text-align: center; 
        }

        input[type="submit"], 
        .homeBT7 { 
            background-color: #007bff;
            
            color: #fff;
            border: none;
            padding: 10px 10px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            display: block; 
            margin: 0 auto; 
            text-align: center; 
            text-decoration: none; 
            margin-top: 20px;
        }

        input[type="submit"]:hover,
        .homeBT7:hover { 
            background-color:rgb(40, 60, 69);
        }
          .homeBT7 { 
            background-color: rgb(35, 104, 131);
        }
       
    </style>
</head>
<body>
  
   <form id="myForm">
       <p>Order is successful !</p>
       <input type="submit" value="ADD The Payment">
       <a class="homeBT7" href="View" target="_blank" id="navigateUpdate"  onclick="openNewJSP()">View Order Details</a> 
  
       
   </form> 

   <script>
       document.getElementById("myForm").addEventListener("submit", function(event) {
           event.preventDefault(); 
           window.location.href = "payment.jsp"; 
       });
       
       
   </script>
</body>
</html>
