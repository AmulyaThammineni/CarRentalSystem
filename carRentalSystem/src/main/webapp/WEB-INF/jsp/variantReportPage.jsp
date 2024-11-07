<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Car Variant Report</title>
    <style>
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>
<div align="center">
    <h1><u>Car Variant Report</u></h1>
    <br/>
    <h2>
        <table border="2">
            <tr>
                <th scope="col">Variant Id</th>
                <th scope="col">Variant Name</th>
                <th scope="col">Number of Seats</th>
                <th scope="col">Fuel Usage</th>
                <th scope="col">Actions</th>
            </tr>
            <c:forEach items="${variantList}" var="variant">
                <tr>
                    <td>${variant.variantId}</td>
                    <td>${variant.variantName}</td>
                    <td>${variant.numberOfSeat}</td>
                    <td>${variant.fuel}</td>
                    <td>
                        <a href="/variantDeletion/${variant.variantId}" 
                           onclick="return confirm('Are you sure you want to delete this variant?');">Variant Deletion</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </h2>
    <br/>
    <h3><a href="/index">Return</a></h3>
</div>
</body>
</html>
