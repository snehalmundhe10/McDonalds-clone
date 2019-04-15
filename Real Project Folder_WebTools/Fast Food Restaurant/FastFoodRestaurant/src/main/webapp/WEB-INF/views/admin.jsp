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
            <h1>Administrator Page</h1>
            <p class="lead">This is the adminsitrator's page!</p>
        </div>
        <h3>
            <a href="<c:url value="/admin/foodInventory "/>">Food Items Inventory</a>
        </h3>

        <p>Here you can view, modify and check the food items inventory!</p>

        <%@ include file="/WEB-INF/views/template/footer.jsp"%>

    </div>
</div>
</body>
</html>
