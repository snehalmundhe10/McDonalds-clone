<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: msneh
  Date: 4/16/2019
  Time: 11:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<html>
<head>
    <script
            src="<c:url value="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular-route.js"/>"></script>
    <script src="<c:url value="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.min.js"/>"></script>
    <script src="<c:url value="/resources/js/cart.js"/>"></script>


</head>
<%--<script src="<c:url value="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"/>"></script>--%>
<body>
<form:form>
   <div class="container-wrapper">
       <div class="container">
       <section>
       <div class="jumbotron">
            <div class="container">
                <h1> Delicious Food Bag</h1>
                <p>Your delicious food!</p>
            </div>
       </div>
       </section>
       </div>
        <section class="container" >
       <div >
           <div>
               <a class="btn btn-danger pull-left"><span class="glyphicon glyphicon-trash"></span>Clear from Bag</a>
           </div>
           <table class="table table-hover">
               <tr>
                   <th>Food</th>
                   <th>Unit Price</th>
                   <th>Quantity</th>
                   <th>Price</th>
                   <th>Action</th>
               </tr>
               <tr >
                   <td></td>
                   <td>${food.foodPrice}</td>
                   <td>${food.foodQuantity}</td>
                   <td>${food.foodPrice}</td>
                   <td><a href="#" class="label label-danger"  class=" btn btn-danger">
                       <span class="glyphicon-remove"></span>remove Button</a></td>
               </tr>
               <tr>
                   <th></th>
                   <th></th>
                   <th>Grand Total</th>
                   <th>{cart.estimatedTotal}</th>
                   <th></th>
               </tr>
           </table>

           <a href="<spring:url value="/foodItemsList"/>" class="btn btn-default"> Continue Shopping</a>
       </div>
        </section>
   </div>
   </div>
</form:form>

</body>
</html>