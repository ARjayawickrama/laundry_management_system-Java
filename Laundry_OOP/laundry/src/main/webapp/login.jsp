<!DOCTYPE html>
<html>

<head>
  <style>
    body {
      font-family: Arial, Helvetica, sans-serif;
         background: url('images/log2.jpg') no-repeat center center fixed;
             background-size: 100%; 
    }

    * {
      box-sizing: border-box;
    }

    input[type=text],
    input[type=password] {
      width: 100%;
      padding: 20px;
      margin: 5px 0 22px 0;
      display: inline-block;
      border: none;
      background: #f1f1f1;
    }

    input[type=text]:focus,
    input[type=password]:focus {
      background-color: #ddd;
      outline: none;
    }

    button {
      background-color:rgb(2, 137, 190);
      color: white;
      padding: 14px 20px;
      margin: 8px 0;
      border: none;
      cursor: pointer;
      width: 100%;
      opacity: 0.9;
    }

    button:hover {
      opacity: 1;
    }

    .cancelbtn {
      padding: 14px 20px;
      background-color: #f44336;
    }

    .cancelbtn,
    .signupbtn {
      float: left;
      width: 50%;
    }

    .container {
      width: 500px;
      padding: 10px;
      margin: 0;
    }

    .modal-content {
      background-color: #fefefe;
      width: 80%;
    }

    hr {
      border: 1px solid #f1f1f1;
      margin-bottom: 25px;
    }

    .close {
      position: absolute;
      right: 35px;
      top: 15px;
      font-size: 40px;
      font-weight: bold;
      color: #f1f1f1;
    }

    .close:hover,
    .close:focus {
      color: #f44336;
      cursor: pointer;
    }

    /* Clear floats */
    .clearfix::after {
      content: "";
      clear: both;
      display: table;
    }

    @media screen and (max-width: 300px) {
      .cancelbtn,
      .signupbtn {
        width: 100%;
      }
    }

    

    .modal {
        position: absolute;
         left: 50%;
          top: 25%;
         transform: translateX(-50%);
    }
         .form_link {
            display: inline-block;
            padding: 10px 20px;
            text-decoration: none;
            background-color: #3498db; /* Set your desired background color */
            color: #fff; /* Set your desired text color */
            border-radius: 5px; /* Optional: Rounded corners */
            transition: background-color 0.3s ease;
        }

        .form_link:hover {
            background-color: #2980b9; /* Set your desired hover background color */
        }
           /* Form container */
    .mymain {
      width: 100%;
      margin: 20px auto;
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      padding: 20px;
      transition: transform 0.3s ease-in-out;
     
    }
  </style>
  <meta charset="UTF-8">
  <title>Login page</title>
</head>

<body>
   

  <div id="id01" class="modal">
<div class="mymain">

    <form class="form_login" id="login" action="<%= request.getContextPath() %>/LoginS" method="post">

      <div class="container">

        <label for="text"><b>User Name</b></label>
        <input type="text" placeholder="Enter username" name="username" required >

        <label for="psw"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="password" required >

        <button class="form_button" id="submitlogin" type="submit">Login</button>

        <p class="form_text">
        Don't have an Account? <a class="form_link" href="registration.jsp" id="linksignup">Sign Up</a>
        
        </p>

        <div class="clearfix">
        
          
        </div>

      </div>
    </form>
</div>
  </div>
    <script>
        // Disable back button
        function disableBackButton() {
            history.pushState(null, null, location.href);
            window.onpopstate = function () {
                history.go(1);
            };
        }
    </script>

</body>


</html>

