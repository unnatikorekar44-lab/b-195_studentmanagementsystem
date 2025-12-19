<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="card shadow p-4">

        <h2 class="text-center mb-4">Welcome Admin</h2>

        <div class="d-grid gap-3 col-6 mx-auto">
            <a href="/admin/addStudent" class="btn btn-primary">Add Student</a>
            <a href="/admin/viewStudents" class="btn btn-success">View Students</a>
            <a href="/admin/logout" class="btn btn-danger">Logout</a>
        </div>

    </div>
</div>

</body>
</html>