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
            <h1>Product Details</h1>
            <p class="lead">Here is the detailed information of the product!</p>
        </div>

        <div class="container">
            <div class="row">
              <div class="col-ad-5">
                  <img src="#" alt="image" style="width:100% ; height:300px" />
              </div>
               <br>
                <div class="col-ad-5">
                    <p><strong>Name</strong> :${product.productName}</p>
                    <p><strong>Category</strong> :${product.productCategory}</p>
                    <p><strong>Details</strong> :${product.productDetails}</p>
                    <p><strong>Serving</strong> : ${product.productServing}</p>
                    <p><strong>Status</strong> :${product.productDescription}</p>
                    <p><strong>Price</strong> :${product.productPrice}</p>
                </div>
            </div>
        </div>

        <%@ include file="/WEB-INF/views/template/footer.jsp"%>

    </div>
</div>
</body>
</html>
