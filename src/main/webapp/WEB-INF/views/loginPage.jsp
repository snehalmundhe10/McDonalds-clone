<%--
  Created by IntelliJ IDEA.
  User: msneh
  Date: 4/16/2019
  Time: 4:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div id="login-box" style="box-sizing: border-box; width:800px;height:350px">
         <h3 style="line-height: 100px">Login with Username and Password</h3>

            <c:if test="${not empty loginMessage}">
                <div class="message">
                  ${loginMessage}
                </div>
            </c:if>

            <form name="loginForm" action="<c:url value="/j_spring_security_check"/>" method="post" onsubmit="required()">
                <div class="form-group">
                    <label for="loginName">Username:</label>
                    <input type="text" id="loginName" name="username" class="form-control" style="width: 70%"/>
                </div>
                <div class="form-group">
                    <label for="loginPass">Password:</label>
                    <input type="password" id="loginPass" name="password" class="form-control" style="width: 70%" />
                </div>

                <input type="submit" id="submit" value="Log In" class=" btn btn-danger">
                <input type="hidden" name="$ {_csrf.parameterName}" value="${_csrf.token}"/>
            </form>

        </div>
    </div>

</div>
<script>
    function required(){
        var checkUsername=document.forms["loginForm"]["username"].value;
        var checkPassword=document.forms["loginForm"]["password"].value;
        if (checkUsername === "" && checkPassword === "")
        {
            alert("Please enter username and password");
            return false;
        }
    }
</script>