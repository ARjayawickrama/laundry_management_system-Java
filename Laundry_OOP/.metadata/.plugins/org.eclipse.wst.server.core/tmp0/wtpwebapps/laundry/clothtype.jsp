<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
/* The popup form - hidden by default */
.form-popup {

  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

/* Add styles to the form container */
.form-container {
  width: 100vw; /* Set width to 100% of viewport width */
   height: 100vh;
  background-color: white;
}
  




/* Set a style for the submit/login button */
.form-container .btn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}
.checkbox-container {
            display: inline-block;
            margin-bottom: 12px;
            cursor: pointer;
            font-size: 16px;
            user-select: none;
        }
         table {
    border-collapse: collapse;
    width: 100%;
  }
  th, td {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
  }
  th {
    background-color: #f2f2f2;
    height: ;
    width: ;
  }
  .price-input {
    width: 60px; /* Adjust width as needed */
  }
</style>
</head>
<body>

<div class="form-popup" id="myForm" >
  <form  method="post" action="Addorder" class="form-container" >


<table>
  <thead>
    <tr>
      <th>Cloth Type</th>
      <th>Quantity</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><select id="clothType" name="type1">
            <option value="Kilograms">Kilograms</option>
            <option value="Grams">Grams</option>
        </select> <label for="anju">Anju</label></td>
      <td><input type="number" class="price-input" id="anju-price"></td>
  
    <!-- Add more rows as needed -->
  </tbody>
</table>
     
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
  </form>
</div>




    <script>
    
    
    function openForm() {
    	  document.getElementById("myForm").style.display = "block";
    	}

    	function closeForm() {
    	  document.getElementById("myForm").style.display = "none";
    	  document.getElementById("myForm").reset(); // Reset the form fields
    	  window.location.href = "AddOrder.jsp"; // Redirect to new.jsp
    	}

    </script>
</body>
</html>
