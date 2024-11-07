<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Car Rental Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body {
            font-family: Cambria, Helvetica, sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 0;
        }

        h1 {
            color: #4267B2; 
            font-family: ALGERIAN, sans-serif;
            margin-top: 30px;
        }

        .navbar {
            overflow: hidden;
            background-color: #4267B2; 
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            margin: 20px auto;
            width: 80%;
        }

        .navbar a, .dropdown .dropbtn {
            float: left;
            font-size: 16px;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .dropdown {
            float: left;
            overflow: hidden;
        }

        .dropdown .dropbtn {
            border: none;
            outline: none;
            background-color: inherit;
            font-family: inherit;
            margin: 0;
            cursor: pointer;
        }

        .navbar a:hover, .dropdown:hover .dropbtn {
            background-color: #365899; 
            border-radius: 4px;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f7f8fa; 
            min-width: 160px;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
            z-index: 1;
            border-radius: 8px;
        }

        .dropdown-content a {
            float: none;
            color: #333;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        .dropdown-content a:hover {
            background-color: #dfe3ee; 
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .logout {
            float: right;
            font-size: 16px;
            padding: 14px 20px;
            color: white;
            text-decoration: none;
            background-color: #4267B2;
        }

        .logout:hover {
            background-color: #365899;
            border-radius: 4px;
        }
    </style>
</head>

<body>
    <div align="center">
        <h1>Welcome To Car Rental Page</h1>
        <div class="navbar">
            <div class="dropdown">
                <button class="dropbtn">Customer</button>
                <div class="dropdown-content">
                    <a href="/customer/add">Customer Addition</a>
                    <a href="/customer/update">Customer Update</a>
                    <a href="/customer/delete">Customer Deletion</a>
                    <a href="/customer/reports">Customer Reports</a>
                </div>
            </div>
            <div class="dropdown">
                <button class="dropbtn">Variant</button>
                <div class="dropdown-content">
                    <a href="/variantAdd">Variant Addition</a>
                    <a href="/variantDeletion">Variant Deletion</a>
                    <a href="/variantReport">Variant Reports</a>
                </div>
            </div>
            <div class="dropdown">
                <button class="dropbtn">Car</button>
                <div class="dropdown-content">
                    <a href="/carAdd">Car Addition</a>
                    <a href="/carUpdate">Car Update</a>
                    <a href="/carDelete">Car Deletion</a>
                    <a href="/carReport">Car Report</a>
                </div>
            </div>
            <div class="dropdown">
                <button class="dropbtn">Booking</button>
                <div class="dropdown-content">
                    <a href="/booking/new">New Booking</a>
                    <a href="/booking/update">Booking Update</a>
                    <a href="/booking/cancel">Cancellation</a>
                    <a href="/booking/report">Booking Report</a>
                </div>
            </div>
            <a href="/logout" class="logout">Logout</a>
        </div>
    </div>
</body>
</html>
