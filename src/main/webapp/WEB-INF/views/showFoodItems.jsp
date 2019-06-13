<%--
  Created by IntelliJ IDEA.
  User: msneh
  Date: 4/10/2019
  Time: 6:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>


</head>

<body>
<form:form>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h3>  Information </h3>
            <p class="lead">Please see the information about the food Item!</p>
        </div>

        <div class="container" ng-app="shoppingCartApp">
            <div class="row">
              <div class="col-ad-5">
                  <img src="<c:url value="/resources/images/${food.foodId}.png"/>" alt="image" style="width: 100%" />
              </div>
               <br>
                <div class="col-ad-5">
                    <p><strong>Name</strong> :${food.foodName}</p>
                    <p><strong>Category</strong> :${food.foodCategory}</p>
                    <p><strong>Details</strong> :${food.foodDetails}</p>
                    <p><strong>Serving</strong> : ${food.foodServing}</p>
                    <p><strong>Status</strong> :${food.foodDescription}</p>
                    <p><strong>Price</strong> :${food.foodPrice}</p>
                    <br>
                    <c:set var="user" scope="page" value="${param.user}" />
                    <c:set var="url" scope="page" value="/foodItemsList" />
                    <c:if test="${user='admin'}">
                        <c:set var="url" scope="page" value="/administrator/foodInventory"/>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
</div>
</form:form>
</body>
</html>
