<!DOCTYPE html>
<html>

<head>
  <style>

    body {
      font-family: Arial, sans-serif;
      background-color: #f0f0f0;
      margin: 0;
      padding: 0;
        width: 70%;
         background: url('images/singwall.jpg') no-repeat center center fixed;
      background-size: 100%; 
         margin-bottom: 10px;
    }

    
    .mymain {
      width: 50%;
      margin: 20px auto;
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      padding: 20px;
      transition: transform 0.3s ease-in-out;
     
    }

    .mymain:hover {
      transform: scale(1.01);
    }

  
    h1 {
      text-align: center;
      color: #333;
    }

    .container {
      margin-top: 20px;
    }

    label {
      display: block;
      margin-bottom: 8px;
      color: #555;
    }

    input[type="text"],
    input[type="password"] {
      width: 95%;
      padding: 12px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 5px;
      transition: border-color 0.3s ease;
    }
    
       input[type="email"]
   {
      width: 95%;
      padding: 12px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 5px;
      transition: border-color 0.3s ease;
    }

    input[type="text"]:focus,
    input[type="password"]:focus {
      border-color: #4CAF50;
    }

 
    button {
      width: 100%;
      padding: 12px;
      background-color: rgb(76, 140, 165);
      color: #fff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    button:hover {
      background-color:rgb(62, 77, 82);
    }

    .cancelbtn {
      background-color: #f44336;
    }

    .cancelbtn:hover {
      background-color: #da190b;
    }


    .clearfix::after {
      content: "";
      display: table;
      clear: both;
    }

    .homeBT4 {
      float: right;
      color: #333;
      text-decoration: none;
      font-size: 14px;
    }

    .homeBT4:hover {
      text-decoration: underline;
    }
  </style>
</head>

<body>
  <a href="user_interface.jsp">
    <img alt="" src="images/close.png" width="40px" height="40px">
  </a>
  <div class="mymain">
    <form onsubmit="return checkPassword(this)" action="Adduser" class="modal-content" id="signup" method="POST">
      <div class="container">
        <h1>Sign Up</h1>
        <hr>
        <label for="username"><b>Username</b></label>
        <input type="text" class="form_input" name="username" id="userName" autofocus placeholder="Username" required>

        <label for="psw"><b>Name</b></label>
        <input type="text" class="form_input" name="name" id="name" autofocus placeholder="Name" required>

        <label for="email"><b>Email</b></label>
 <input type="email" placeholder="Enter Email" name="email"  id="emailInput" required pattern="^[a-zA-Z0-9._%+-]+@gmail$">

      

        <label for="psw-repeat"><b>Mobile</b></label>
        <input type="text" class="form_input" name="mobile" title="Please enter a 10-digit number" id="mobile"
          pattern="[0-9]{10}" autofocus placeholder="Mobile number" required>

        <label for="psw-repeat"><b>Password</b></label>
        <input type="password" name="password" class="form_input" id="pwd" pattern=".{5,}"
          title="Must contain at least 5 or more characters" autofocus placeholder="Password" required>

        <label for="psw-repeat"><b>Confirm Password</b></label>
        <input type="password" class="form_input" id="re-pwd" name="confirm_password" autofocus
          placeholder="Re-Enter Password" title="Must be the same as the password above" required>

        <button class="form_button" type="submit" name="submit_sign" id="submitsignup">Submit</button>
       
       
        

        
      </div>
    </form>
  </div>

  <script>
    function checkPassword(form) {
      var password = form.password.value;
      var confirmPassword = form.confirm_password.value;

      if (password.length < 5) {
        alert("Password must be at least 5 characters long");
        return false;
      }

      if (password !== confirmPassword) {
        alert("Passwords do not match");
        return false;
      }

      // Additional validation if needed

      return true;
    }
    function validateEmail() {
    	  var email = document.getElementById("emailInput").value;
    	  var pattern = /^[a-zA-Z0-9._%+-]+@gmail$/;
    	  if (pattern.test(email)) {
    	    alert("Email format is correct!");
    	  } else {
    	    alert("Please enter a valid email containing '@gmail'.");
    	  }
    	}
  
  </script>
</body>

</html>

