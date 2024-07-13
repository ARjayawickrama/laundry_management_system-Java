<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Laundry Inventory Management</title>
  <style>
    /* CSS styling */
    body {
      font-family: Arial, sans-serif;
    }

    .container {
      max-width: 500px;
      margin: 0 auto;
      padding: 20px;
      border: 1px solid #ccc;
      border-radius: 5px;
      background-color: #f9f9f9;
    }

    table {
      width: 100%;
    }

    table tr td:first-child {
      width: 30%;
    }

    .form-group {
      margin-bottom: 20px;
    }

    label {
      display: block;
      font-weight: bold;
    }

    input[type="text"],
    input[type="number"],
    select {
      width: 100%;
      padding: 10px;
      border-radius: 5px;
      border: 1px solid #ccc;
      box-sizing: border-box;
    }

    input[type="submit"],
    input[type="button"] {
      width: 100%;
      margin-top: 10px;
      background-color: #4CAF50;
      color: white;
      padding: 10px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    input[type="submit"]:hover,
    input[type="button"]:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>

<div class="container">
 <img src="images/inventor.png" alt="Wash + Press" width="498" height="320">
  <form id="inventoryForm" action="Addinventory"  method="post" >
    <table>
      <tr>
        <td><label for="itemid">Item ID:</label></td>
        <td><input type="text" id="itemid" name="itemid" required></td>
      </tr>
      <tr>
        <td><label for="category">Item Name:</label></td>
        <td>
          <select id="category" name="category" required>
            <option value="">Select category</option>
            <option value="Clothes">Clothes</option>
            <option value="Detergent">Detergent</option>
            <option value="Fabric Softener">Fabric Softener</option>
            <!-- Add more options as needed -->
          </select>
        </td>
      </tr>
      <tr>
        <td><label for="status">Status:</label></td>
        <td>
          <select id="status" name="status" required>
            <option value="">Select Status</option>
            <option value="Available">Available</option>
            <option value="In Use">In Use</option>
            <option value="Out of Order">Out of Order</option>
            <!-- Add more options as needed -->
          </select>
        </td>
      </tr>
      <tr>
        <td><label for="quantity">Quantity:</label></td>
        <td><input type="number" id="quantity" name="quantity" required></td>
      </tr>
      <tr>
        <td colspan="2">
          <input type="submit" value="Add Item">
        </td>
      </tr>
    </table>
  </form>
</div>

</body>
</html>

