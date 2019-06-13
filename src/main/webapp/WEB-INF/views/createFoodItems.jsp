<%--
  Created by IntelliJ IDEA.
  User: msneh
  Date: 4/10/2019
  Time: 3:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<div class="container-wrapper">
    <br>
    <div class="container" style="box-sizing:border-box ;width:1000px;height:850px; border:1px solid lightgrey">
        <div class="page-header">
            <h4 style=" color:black; align-items: center">Fill below description to add new food items!!!</h4>
        </div>
        <form:form action="${pageContext.request.contextPath}/administrator/foodInventory/createFoodItems" method="post" commandName="food" enctype="multipart/form-data" cssStyle="color: #0f0f0f">
            <div class="form-group">
                <label for="name">Name:</label>
                <form:errors path="foodName" cssStyle="color: #ac2925" />
                <form:input path="foodName" id="name" class="form-Control" cssStyle="width: 70%"/>
            </div>
            <div class="form-group">
             <label for="category">Category:</label><br>
                <label class="checkbox-inline"><form:radiobutton path="foodCategory" id="category" value="Burgers" />Burgers</label><br>
                <label class="checkbox-inline"><form:radiobutton path="foodCategory" id="category" value="Drinks" />Drinks</label><br>
                <label class="checkbox-inline"><form:radiobutton path="foodCategory" id="category" value="McCafe " />McCafe</label><br>
            </div>
            <div class="form-group">
                <label for="detailedDescription">Details:</label>
                <form:errors path="foodDetails" cssStyle="color: #ac2925" />
                <form:textarea path="foodDetails" id="detailedDescription" class="form-Control" cssStyle="width: 70%"/>
            </div>
            <div class="form-group">
                <label for="serving">Serving:</label>
                <form:errors path="foodServing" cssStyle="color: #ac2925" />
                <form:input path="foodServing" id="serving" class="form-Control" cssStyle="width: 70%"/>
            </div>
            <div class="form-group">
                <label for="description">Status:</label>
                <form:input path="foodDescription" id="description" class="form-Control" cssStyle="width: 70%"/>
            </div>
            <div class="form-group">
                <label for="price">Price:</label>
                <form:errors path="foodPrice" cssStyle="color: #ac2925" />
                <form:input path="foodPrice" id="price" class="form-Control" cssStyle="width: 70%"/>
            </div>

            <div class="form-group">
                <label class="control-label" for="foodImage">Upload Picture</label>
                <form:input id="foodImage" path="foodImage" type="file" class="form:input-large"  />

            </div>
            <br>
            <input type="submit" value="Add Item" class="btn btn-danger" style="border-radius: 20px" /> &nbsp; &nbsp; &nbsp;
            <a href="<c:url  value="/administrator/foodInventory" />" class="btn btn-danger" style="border-radius: 20px">Go Back</a>
        </form:form>



    </div>
</div>
</body>
</html>
