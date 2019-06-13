<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: msneh
  Date: 4/11/2019
  Time: 12:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>McDonald's: Burgers,Fries & More</title>






    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <!--carousel.css--->
    <link href="<c:url value="/resources/css/carousel.css" />" rel="stylesheet">
    <!--Main.css--->
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">


</head>
<!-- NAVBAR
================================================== -->
<body>
<div class="navbar-wrapper">
    <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top"
             style="height: 100px; width:1260px ;position: center ;right: 60px ;top: -15px; border-radius: 15px">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"> <img src="https://www.mcdonalds.com/content/dam/usa/logo/m_logo.png" width="80px" height="80px"> </a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="<c:url value="/" />">HOME</a></li>
                        <li><a href="<c:url value="/foodItemsList" />">OUR MENU</a></li>
                        <li><a href="#contact">LOCATIONS</a></li>
                    </ul>
                    <ul class="nav navbar-nav pull-right">

                        <li><a href="<c:url value="/administrator"/>">ADMIN</a></li>

                    </ul>

                </div>
            </div>
        </nav>

    </div>
</div>


</body>
</html>
