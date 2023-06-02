<%--
  Created by IntelliJ IDEA.
  User: Vũ Hoàng Anh
  Date: 5/30/2023
  Time: 4:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.*"%>
<%@page import="model.*"%>
<%@page import="controll.*"%>
<%@page import="dao.*"%>
<%@ page import="context.ConnectDB" %>
<%
    Account a = (Account) request.getSession().getAttribute("acc");
    ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
    List<Cart> cartProduct = null;
    if (cart_list != null) {
        DAO dao = new DAO();
        cartProduct = dao.getCartProducts(cart_list);
        int total = dao.getTotalCartPrice(cart_list);
        request.setAttribute("total", total);
        request.setAttribute("cart_list", cart_list);
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="./assets/css/new_slider.css">
    <link rel="stylesheet" href="./assets/css/content.css">
    <link rel="stylesheet" href="./assets/css/all_product.css">
    <link rel="stylesheet" href="./assets/css/cart.css">
    <style>

    </style>
    <title>Cart</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<div class="container my-3">
    <div class="d-flex-t py-3"><h3>Total Price:${total}</h3> <a class="mx-3 btn btn-primary" href="cart-check-out">Check Out</a></div>
    <table class="table table-light">
        <thead>
        <tr>
            <th scope="col">Name</th>
            <th scope="col">Price</th>
            <th scope="col">Buy Now</th>
            <th scope="col">Cancel</th>
        </tr>
        </thead>
        <tbody>
        <% if(cart_list != null ){for (Cart c : cartProduct) {%>
        <tr>
            <td><%= c.getName()%></td>
            <td><%= c.getPrice()%></td>
            <td>
                <form action="order-now" method="post" class="form-inline">
                    <input type="hidden" name="id" value="<%= c.getId()%>" class="form-input">
                    <div class="form-group d-flex justify-content-between">
                        <a class="btn bnt-sm btn-incre" href="quantity-inc-dec?action=inc&id=<%=c.getId()%>">
                            <svg xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512"><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="32" d="M256 112v288M400 256H112"/></svg>
                        </a>
                        <input type="text" name="quantity" class="form-control"  value="<%=c.getQuantity()%>" readonly>
                        <a class="btn btn-sm btn-decre" href="quantity-inc-dec?action=dec&id=<%=c.getId()%>">
                            <svg xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512"><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="32" d="M400 256H112"/></svg>
                        </a>
                    </div>
                    <!--<button type="submit" class="btn btn-primary btn-sm"><b>Buy</b></button>-->
                </form>
            </td>
            <td><a href="remove-from-cart?id=<%=c.getId() %>" class="btn btn-sm btn-danger"><b>Remove</b></a></td>
        </tr>
        <%}}%>
        </tbody>
    </table>
    <a href="Bill.jsp"><h3>Click me!!!!</h3></a>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>
