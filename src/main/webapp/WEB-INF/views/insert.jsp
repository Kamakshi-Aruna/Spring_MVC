<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Registration</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    body {
      background-color: #f8f9fa;
      height: 100vh;
    }
    .container {
      margin-top: 100px;
      max-width: 400px;
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
    }
    .alert {
      text-align: center;
    }
  </style>
</head>
<body>
<div class="container">
  <h2 class="text-center">Add Student Details</h2>

  <form action="insert" method="post">
    <div class="form-group">
      <label for="id">Id:</label>
      <input type="number" class="form-control" id="id" name="id" required />
    </div>
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="text" class="form-control" id="name" name="name" required />
    </div>
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" name="email" required />
    </div>
    <button type="submit" class="btn btn-primary btn-block">Register</button>
  </form>

  <!-- Display success message if it exists -->
  <c:if test="${not empty message}">
    <div class="alert">${message}</div>
  </c:if>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
