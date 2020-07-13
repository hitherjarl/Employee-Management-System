<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<body>
    <h1>Remove employee in the database</h1>
        
    <form:form modelAttribute="form">
        <form:errors path="" element="div" />
        <div>
            <form:label path="name">Name</form:label>
            <form:input path="name" />
            <form:errors path="name" />
            <form:label path="id">ID</form:label>
            <form:input path="id" />
            <form:errors path="id" />
        </div>
        <div>
            <input type="submit" />
        </div>
    </form:form>
</body>
</html>