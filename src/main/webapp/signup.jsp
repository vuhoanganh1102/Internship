<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 4/24/2023
  Time: 11:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sign up</title>
    <link rel="stylesheet" href="./assets/css/signup.css">
    <link rel="stylesheet" href="./assets/css/header.css">
    <style>
        #header2{
            background-image: url('assets/img/header2/bg-top.png');
        }
    </style>
</head>
<body>

    <jsp:include page="header.jsp"/>
    <div class="register">
        <div class="register-header">
            <h1>đăng ký tài khoản</h1>
            <p>Bạn đã có tài khoản ? Đăng nhập <a href="signin.jsp" class="btn__login">tại đây</a></p>
        </div>
        <div class="register-form">
            <div class="register-form-header">
                <h3>thông tin cá nhân</h3>
            </div>

            <form action="signup" method="post" class="register-form-container">
                <div class="mes_alert" style="color: red;display: flex;
                     justify-content: center;
                     align-items: center;">${requestScope.mes}
                </div>

                <div class="register-form-form">
                    <label for="name" class="register-form-label">Name <span class="required">*</span></label><br>
                    <input name="name_user" type="text" class="register-form-input" placeholder="Name" required id="name">
                </div>
                <div class="register-form-form">
                    <label for="Username" class="register-form-label">Username <span class="required">*</span></label><br>
                    <input name="user" type="text" class="register-form-input" placeholder="Username" required id="Username">
                </div>
                <div class="register-form-form">
                    <label for="Email" class="register-form-label">Email<span
                            class="required">*</span></label><br>
                    <input name="email" type="text" class="register-form-input" placeholder="Email" required id="Email">
                </div>
                <div class="register-form-form">
                    <label for="Password" class="register-form-label">Password <span
                            class="required">*</span></label><br>
                    <input name="pass" type="password" class="register-form-input" placeholder="Password" required id="password">
                </div>
                <div class="register-form-form">
                    <label for="Repeat Password" class="register-form-label">Repeat Password <span
                            class="required">*</span></label><br>
                    <input name="repass" type="password" class="register-form-input" placeholder="Repeat Password" required id="Repeat Password">
                </div>
                <div class="register-submit">
                    <button type="submit" class="btn-submit">Create Account</button>
                </div>
            </form>
        </div>
    </div>
    <jsp:include page="footer.jsp"/>

</body>
</html>
