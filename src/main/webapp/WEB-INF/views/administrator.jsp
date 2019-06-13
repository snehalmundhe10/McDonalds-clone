<%--
  Created by IntelliJ IDEA.
  User: msneh
  Date: 4/10/2019
  Time: 6:14 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ include file="/WEB-INF/views/template/header.jsp"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: msneh
  Date: 4/10/2019
  Time: 3:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">

            <h3 style="color: #0f0f0f">Admin Control</h3>
        </div>
            <h4 style="color: #0f0f0f">
                Welcome Admin
            </h4>
            <a href="<c:url value="/j_spring_security_logout"/>" class="btn btn-danger">
                Logout</a>
        <h4>
            <a href="<c:url value="/administrator/foodInventory"/>"
               style="color: white" class="btn btn-danger">Go to Food Inventory!</a>
        </h4>
    </div>
</div>
</body>
</html>
