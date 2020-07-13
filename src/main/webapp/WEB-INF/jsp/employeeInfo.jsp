<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<h1>${message}</h1>
<h1>${employees.name}'s Details</h1>

<ul>

   <li>${employees}</li>

</ul>

<a href="${pageContext.request.contextPath}/index.html">Home</a> 
<br>
<a href="${pageContext.request.contextPath}/deleteEmployee.html">Delete</a> 