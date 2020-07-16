<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
      <li><a href="${pageContext.request.contextPath}/index.html">Home</a></li>
      <li class="active"><a href="${pageContext.request.contextPath}/addNewEmployee.html">Add New Employee</a> </li>
      <li><a href="${pageContext.request.contextPath}/deleteEmployee.html">Remove Employee From Database</a> </li>
      <li><a href="${pageContext.request.contextPath}/listEmployees.html">View All Employees</a> </li>
    </ul>
  </div>
</nav>
    <h1>Add new employee</h1>
        
    <form:form modelAttribute="form" class="form-row">
        <form:errors path="" element="div" />
        <div class="form-group col-md-4">
            <form:label path="name">Name: </form:label>
            <form:input path="name" type="email" class="form-control" id="exampleInputEmail1" />
            <form:errors path="name" />
            <form:label path="dept">Department: </form:label>
            <form:input path="dept" type="email" class="form-control" id="exampleInputEmail1"/>
            <form:errors path="dept" />
            <form:label path="id">ID Number: </form:label>
            <form:input path="id" type="email" class="form-control" id="exampleInputEmail1"/>
            <form:errors path="id" />
        
        	<br>
            <input type="submit" class="btn btn-primary"/>
        </div>
    </form:form>
    


</body>
</html>
