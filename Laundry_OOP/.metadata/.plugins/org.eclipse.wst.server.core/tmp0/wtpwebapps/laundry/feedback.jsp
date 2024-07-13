<!DOCTYPE html>
<html>
  <head>
    <title>Contact us</title>
  
    <style>
     * {
  box-sizing: border-box;
}

html, body {
  min-height: 100vh;
  padding: 0;
  margin: 0;
  font-family: Roboto, Arial, sans-serif;
  font-size: 16px; 
  color: #333; 
}

body {
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 20px;
  background: #5a7233;
    background: url('images/f1.jpg') no-repeat center center fixed;
             background-size: 100%; 
             
}

h1 {
  margin-top: 0;
  font-weight: 500;
  color: black; 
}

form {
  position: relative;
  width: 80%;
  max-width: 600px; 
  border-radius: 30px;
  background: #fff;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.1); 
}




.form-inner {
  padding: 40px;
}

.form-inner input,
.form-inner textarea {
  display: block;
  width: 100%;
  padding: 15px;
  margin-bottom: 20px; 
  border: none;
  border-radius: 20px;
  background: #d0dfe8;
}

.form-inner textarea {
  resize: none;
}

button {
  width: 100%;
  padding: 15px; 
  border-radius: 20px;
  border: none;
  background: #5a7233;
  font-size: 18px; 
  font-weight: 500; 
  color: #fff;
  cursor: pointer;
  transition: background 0.3s; 
}

button:hover {
  background: #3e4f24;
}

        .closeMain {
            position: absolute;
            top: 2%;
            left: 0%;
        }
     
    </style>
  </head>
  <body>


    <form action="Addfeedback" class="decor" method="post" onsubmit="return validateForm()">
  
  <div class="form-left-decoration"></div>
  <div class="form-right-decoration"></div>
  <div class="circle"></div>
  <div class="form-inner">
    <h1>Feedback</h1>
    <input type="text" placeholder="Username" name="name" required>
    <input type="tel" placeholder="Phone Number" name="phone" required pattern="[0-9]{10}" title="Please enter a 10-digit phone number starting with 0">
    <input type="email" placeholder="Email" name="email" required>
    <textarea placeholder="Message..." rows="5" name="massage" required></textarea>
    <button type="submit">Submit</button>
    <a class="homeBT7" target="_blank" id="navigateUpdate" onclick="openNewJSP()">Show</a>
  </div>
</form>

<script>
  function validateForm() {
    var phoneInput = document.getElementsByName('phone')[0];
    var phoneNum = phoneInput.value;
    if (phoneNum.length !== 10 || !/^[0][0-9]+$/.test(phoneNum)) {
      alert("Please enter a valid 10-digit phone number starting with 0");
      return false;
    }
    return true;
  }
</script>


  <script >
 function openNewJSP() {
    window.location.href = 'FeedView'; // Redirect to newww.jsp
}
 </script>
  </body>
</html>