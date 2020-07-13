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
      <li class="active"><a href="${pageContext.request.contextPath}/index.html">Home</a></li>
      <li><a href="${pageContext.request.contextPath}/addNewEmployee.html">Add New Employee</a> </li>
      <li><a href="${pageContext.request.contextPath}/deleteEmployee.html">Remove Employee From Database</a> </li>
      <li><a href="${pageContext.request.contextPath}/listEmployees.html">View All Employees</a> </li>
    </ul>
  </div>
</nav>
<c:if test="${existEmp == true}">
    <h1>${message}</h1>
</c:if>

<c:if test="${existEmp == null}">
    <h1>${employees.name}'s Details</h1>

<ul>

   <li>${employees}</li>

</ul>
</c:if>


<a href="${pageContext.request.contextPath}/index.html">Home</a> 
<br>
<a href="${pageContext.request.contextPath}/deleteEmployee.html">Delete</a> 
</body>
</html>