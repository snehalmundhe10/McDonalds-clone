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
            <h3>Food Items Inventory</h3>
            <p class="lead">This is the food Items Inventory Page!</p>
        </div>
        <table width="200" class="table table-striped table-hover" style="color: #0f0f0f" >
            <thead class="thead-dark">
            <tr class="bg-primary" style="background-color: #ce8483">
                <th>Image</th>
                <th>FoodItemId</th>
                <th>Category</th>
                <th>Food Item Name</th>
                <th>Status</th>
                <th>Serving</th>
                <th>Price</th>
                <th></th>
            </tr>
            </thead>
            <!--here:products is a list and product is a variable for each instance of products list-->
            <c:forEach items="${foods}" var="food">
                <tr>
                    <td><img src="<c:url value="/resources/images/${food.foodId}.png"/>" alt="image" style="width: 100%" /></td>
                    <td>${food.foodId}</td>
                    <td>${food.foodCategory}</td>
                    <td>${food.foodName}</td>
                    <td>${food.foodDescription}</td>
                    <td>${food.foodServing}</td>
                    <td>${food.foodPrice}</td>
                    <td>
                        <a href="<spring:url value="/foodItemsList/showFoodItems/${food.foodId}"/>" class="btn btn-danger" style="border-radius: 20px ;width:80px"><span  class="glyphicon glyphicon-cutlery"></span></a><br><br>
                        <a href="<spring:url value="/administrator/foodInventory/removeFoodItems/${food.foodId}"/>" class="btn btn-danger" style="border-radius:20px; width:80px">Remove</a><br><br>
                        <a href="<spring:url value="/administrator/foodInventory/updateFoodItems/${food.foodId}"/>" class="btn btn-danger" style="border-radius: 20px ; width:80px">Update</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <a href="<spring:url value="/administrator/foodInventory/createFoodItems" /> " class="btn btn-danger" style="border-radius:20px">Add New Item</a>
    </div>
</div>
</body>
</html>
