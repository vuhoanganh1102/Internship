<%--
  Created by IntelliJ IDEA.
  User: Vũ Hoàng Anh
  Date: 5/13/2023
  Time: 8:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sign In</title>
    <link rel="stylesheet" href="./assets/css/signin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
          integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
</head>
<body>
    <jsp:include page="header.jsp"/>
    <div class="container">
        <div class="login-content">
            <form action="account" method="post" class="login__form">
                <div class="login__heading">
                    <h1 class="login__title">Đăng nhập tài khoản</h1>
                    <p class="login__description">
                        Bạn chưa có tài khoản ?
                        <a href="signup.jsp" class="btn__register">Đăng ký tại đây.</a>
                    </p>
                </div>

                <div class="alert" style="color: red;display: flex;
        justify-content: center;
        align-items: center;">${requestScope.mess}
                </div>

                <div>
                    <div class="login__inputs">
                        <div>
                            <label for="input__email" class="login__label">Username
                                <span class="input__required">*</span>
                            </label>
                            <input name="user" type="text" placeholder="Username" required id="input__email"
                                   class="login__input">
                        </div>
                        <div>
                            <label for="input_password" class="login__label">Password
                                <span class="input__required">*</span>
                            </label>
                            <input name="pass" type="password" placeholder="Password" required id="input_password"
                                   class="login__input">
                        </div>
                    </div>

                    <div class="login__forget">
                        <p>Quên mật khẩu? Nhấn vào
                            <a href="">đây</a>
                        </p>
                    </div>
                </div>

                <div>
                    <button class="login__button" type="submit">Login</button>
                </div>
                <div>
                    <p class="login__another">Hoặc đăng nhập bằng</p>

                </div>

                <div>
                    <div class="login__button-another">
                        <button class="login__google">
                            <i class="fa-brands fa-google-plus-g icon-google"></i>
                            <span>Đăng nhập Google</span>
                        </button>
                        <button class="login__facebook">
                            <i class="fa-brands fa-facebook-f icon-facebook"></i>
                            <span>Đăng nhập Facebook</span>
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <jsp:include page="footer.jsp"/>
</body>
</html>
