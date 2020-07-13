<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


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