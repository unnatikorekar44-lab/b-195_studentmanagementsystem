<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>studentCollageName</th>
    <th>studentAge</th>
    <th>studentCourse</th>
    <th>batchNumber</th>
    <th>batchMode</th>
    <th>feesPaid</th>
    <th>Action</th>
</tr>

<c:forEach var="s" items="${students}">
<tr>
    <td>${s.studentId}</td>
    <td>${s.studentName}</td>
    <td>${s.studentEmail}</td>
    <td>${s.studentCollageName}</td>
    <td>${s.studentAge}</td>
    <td>${s.studentCourse}</td>
    <td>${s.batchNumber}</td>
    <td>${s.batchMode}</td>
     <td>${s.feesPaid}</td>
    
        <a href="/admin/updateStudent/${s.studentId}">Edit</a>
        <a href="/admin/deleteStudent/${s.studentId}">Delete</a>
        <a href="/admin/deleteStudent/${s.studentId}">ShiftBatch</a>
        <a href="/admin/deleteStudent/${s.studentId}">PayFees</a>
</tr>
</c:forEach>
</table>
</body>
</html>