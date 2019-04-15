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
        <h1>All Products</h1>
         <p class="lead">Checkout all the awesome products available now!</p>
       </div>
        <table class="table table-striped table-hover">
         <thead class="thead-dark">
           <tr class="bg-primary" style="background-color: #ce8483">
               <th>Photo Thumb</th>
               <th>ProductId</th>
               <th>Category</th>
               <th>Product Name</th>
               <th>Status</th>
               <th>Serving</th>
               <th>Price</th>
               <th></th>
           </tr>
         </thead>
          <!--here:products is a list and product is a variable for each instance of products list-->
            <c:forEach items="${products}" var="product">
             <tr>
                <td><img src="#" alt="image" /></td>
                <td>${product.productId}</td>
                 <td>${product.productCategory}</td>
                 <td>${product.productName}</td>
                 <td>${product.productDescription}</td>
                 <td>${product.productServing}</td>
                 <td>${product.productPrice}</td>
                 <td><a href="<spring:url value="/productList/viewProduct/${product.productId}"/>" ><span class="glyphicon glyphicon-cutlery"></span></a></td>

             </tr>
            </c:forEach>

        </table>
        <%@ include file="/WEB-INF/views/template/footer.jsp"%>

    </div>
</div>
</body>
</html>
