<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Management System</title>
</head>
<body>
<h1>Welcome to the EMS application!</h1>

<h2>Below are the directories:</h2>

<a href="${pageContext.request.contextPath}/addNewEmployee.html">Add New Employee</a> 
<br>
<a href="${pageContext.request.contextPath}/deleteEmployee.html">Remove Employee From Database</a> 
<br>
<a href="${pageContext.request.contextPath}/listEmployees.html">View All Employees</a> 

</body>
</html>