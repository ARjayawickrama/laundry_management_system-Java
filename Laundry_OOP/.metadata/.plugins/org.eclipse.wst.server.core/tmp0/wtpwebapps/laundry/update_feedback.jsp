<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Feedback</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        margin-top: 150px;
         background: url('images/f1.jpg') no-repeat center center fixed;
             background-size: 100%; 
             
           
    }
    h2 {
        color: #333;
        text-align: center;
    }
    form {
   
        max-width: 700px;
        margin: 20px auto;
        padding: 30px;
        background: #fff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    label {
        display: block;
        margin-bottom: 5px;
    }
    input[type="text"],
    input[type="email"],
    textarea {
        width: 100%;
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 10px 15px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
    div{
        top: 25%;
          position: absolute;
         left: 50%;
         
         transform: translateX(-50%);
         }
</style>
</head>
<body>
  <form action="UpdateFeed" method="post">
      
    <div>ID:<%= request.getParameter("id") %></div>
        <input type="hidden" name="id" value="${param.id}" >
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name" value="${param.name}" required><br>
        <label for="phone">Phone:</label><br>
        <input type="text" id="phone" name="phone" value="${param.phone}" required><br>
        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" value="${param.email}" required><br>
        <label for="message">Message:</label><br>
        <textarea id="message" name="massage" required>${param.massage}</textarea><br><br>
        <input type="submit" value="Update Feedback">
    </form>
    <br>
    <br>
    
    
</body>
</html>