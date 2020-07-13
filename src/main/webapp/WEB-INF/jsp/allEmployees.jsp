<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/webjars/bootstrap/css/bootstrap.min.css"/>
    <script type="text/javascript" src="/webjars/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/webjars/font-awesome/css/font-awesome.min.css"></link>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Employee Management System</a>
    </div>
    <ul class="nav navbar-nav">
      <li ><a href="${pageContext.request.contextPath}/index.html">Home</a></li>
      <li><a href="${pageContext.request.contextPath}/addNewEmployee.html">Add New Employee</a> </li>
      <li><a href="${pageContext.request.contextPath}/deleteEmployee.html">Remove Employee From Database</a> </li>
      <li class="active"><a href="${pageContext.request.contextPath}/listEmployees.html">View All Employees</a> </li>
    </ul>
  </div>
</nav>


<h1>Employees page</h1>

<ul>
<c:forEach items="${employees}" var="employee">
   <li>${employee.name}</li>
   <li>${employee.dept}</li>
   <li>${employee.id}</li>
</c:forEach>
</ul>

<a href="${pageContext.request.contextPath}/index.html">Home</a> 
<br>
<a href="${pageContext.request.contextPath}/deleteEmployee.html">Delete</a> 
</body>
</html>