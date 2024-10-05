<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student List</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Optional Bootstrap theme -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.5.2/css/bootstrap-theme.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <h2 class="mt-4">Student List</h2>
    <table class="table table-bordered">
        <thead class="thead-light">
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Name</th>
            <th scope="col">Email</th>
            <th scope="col">Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${students}" var="student">
            <tr>
                <td>${student.id}</td> <!-- Corrected to display student ID -->
                <td>${student.name}</td>
                <td>${student.email}</td>
                <td>
                    <a class="btn btn-primary btn-sm" href="${pageContext.request.contextPath}/update/${student.id}">Edit</a>
                    <a class="btn btn-danger btn-sm" href="${pageContext.request.contextPath}/delete/${student.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a class="btn btn-success" href="insertform">Create New Student</a>
</div>

<!-- Bootstrap JS and dependencies (optional) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
