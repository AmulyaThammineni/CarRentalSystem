<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h1><u>Car Variant Entry Page</u></h1>
<h2>
<form:form action="/variantAdd" method="post" modelAttribute="variantRecord">
<form:hidden path="variantId"/>
Variant Id:<form:input path="variantId" disabled="true"/>
<br/><br/>
Enter Variant Name: <form:input path="variantName"/>
<br/><br/>
Enter Number of seats:<form:input path="numberOfSeat"/>
<br/><br/>
Enter Type of Fuel:<form:input path="fuel"/>
<br/><br/>
<button type="submit">Submit</button>
<button type="reset">Reset</button>
</form:form>
</h2>
</div>
</body>
</html>