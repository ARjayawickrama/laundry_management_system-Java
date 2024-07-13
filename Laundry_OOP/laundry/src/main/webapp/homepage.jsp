<%
    // Get the username parameter from the request
    String username = request.getParameter("username");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            background: #1A1E23 url('images/hom20.jpg') no-repeat center center fixed;
       
            background-size: cover; /* Adjust background size here */
            font-family: 'Lato', sans-serif;
            -webkit-font-smoothing: antialiased;
            padding-top: 20px; /* Add padding to push down the content */
        }

        .logout {
            position: absolute;
            top: 10px;
            left: 10px;
            color: white;
            text-decoration: none;
            font-weight: bold;
            padding: 5px 10px;
            background-color: rgba(0, 0, 0, 0.5);
            border-radius: 5px;
        }

        nav {
            position: relative;
            padding-bottom: 12px;
        }

        nav .line {
            height: 2px;
            position: absolute;
            bottom: 0;
            margin: 10px 0 0 0;
            background: #FF1847;
            transition: width 0.3s ease, left 0.3s ease;
        }

        nav ul {
            padding: 0;
            margin: 0;
            list-style: none;
            display: flex;
            color: #ffffff;
        }

        nav ul li {
            margin: 0 40px 0 0;
     
        }

   
     

        nav ul li:last-child {
            margin-right: 0;
            
        }

        nav ul li a {
            text-decoration: none;
            color: white;
           
            display: block;
            font-weight: 600;
            letter-spacing: 0.1em;
            font-size: 30px;
        }

        /* Center */
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        div {
            width: 20px;
            height: 100px;
            position: relative;
            animation: mymove 10s infinite;
            color: #F9F9F9;
        }

        @keyframes mymove {
            from {left: 0px;}
            to {left: 920px;}
        }

        nav ul li a:hover {
            opacity: 0.9;
              color: aqua;
  box-shadow: rgb(251, 207, 250) 0px 100px 200px -1px;
  
        }
            h2 {
         
           text-decoration-color: red;
  
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
            color: #F9F9F9;
            top:50px;
       
        }
 
  .button {
            position: absolute;
            top: 5%;
            left: 85%; /* Adjust as needed */
        }
   .butone{
 position: absolute;
    left: 97%;
    transform: translateX(-50%);
    top: 4%;
    background-color: white;
    padding: 5px 5px;
    border: 2px solid #333;
    color: #333;
    text-decoration: none;
    font-family: Arial, sans-serif;
    font-size: 16px;
    cursor: pointer;
}
  

@keyframes fadeIn {
    from {
        opacity: 0;
    }
    to {
        opacity: 40;
    }
}


h2{
    animation: fadeIn 1s ease-in-out;
}

    </style>
</head>
<body>

      

       
<h2>Welcome: <%= request.getParameter("username") %></h2>

    <a href="LogoutServlet" class="butone">Logout</a>
<nav>
    <ul>
        <li class="active"><a href="AddOrder.jsp">ORDER</a></li>
        <li><a href="payment.jsp">PAYMENT</a></li>
        <li><a href="inventory.jsp">INVENTORY</a></li>
        <li><a href="feedback.jsp">FEEDBACK</a></li>
        <% if(session.getAttribute("username") == null){ %>
        
        <% } %>
        <li><a href="viewepro">USER</a></li>
    </ul>
    <div class="line"></div>
</nav>




</body>
</html>