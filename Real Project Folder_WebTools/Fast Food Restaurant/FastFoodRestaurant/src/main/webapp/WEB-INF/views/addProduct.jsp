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
            <h1>Add Food Items</h1>
            <p class="lead">Fill the below  Description!!</p>
        </div>
        <form:form action="${pageContext.request.contextPath}/admin/foodInventory/addProduct" method="post" commandName="product" enctype="multipart/form-data">
            <div class="form-group">
                <label for="name">Name:</label>
                <form:input path="productName" id="name" class="form-Control"/>
            </div>
            <div class="form-group">
             <label for="category">Category:</label><br>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="Burgers" />Burgers</label><br>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="Drinks" />Drinks</label><br>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="McCafe " />McCafe</label><br>
            </div>
            <div class="form-group">
                <label for="detailedDescription">Details:</label>
                <form:textarea path="productDetails" id="detailedDescription" class="form-Control"/>
            </div>
            <div class="form-group">
                <label for="serving">Serving:</label>
                <form:input path="productServing" id="serving" class="form-Control"/>
            </div>
            <div class="form-group">
                <label for="description">Status:</label>
                <form:input path="productDescription" id="description" class="form-Control"/>
            </div>
            <div class="form-group">
                <label for="price">Price:</label>
                <form:input path="productPrice" id="price" class="form-Control"/>
            </div>

            <div class="form-group">
                <label class="control-label" for="productImage">Upload Picture</label>
                <form:input id="productImage" path="productImage" type="file" class="form:input-large" />

            </div>

            <br><br>
            <input type="submit" value="Submit" class="btn btn-danger" style="border-radius: 20px" /> &nbsp; &nbsp; &nbsp;
            <a href="<c:url  value="/admin/foodInventory" />" class="btn btn-danger" style="border-radius: 20px">Cancel</a>
        </form:form>

        <%@ include file="/WEB-INF/views/template/footer.jsp"%>

    </div>
</div>
</body>
</html>
