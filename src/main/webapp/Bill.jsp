<%--
  Created by IntelliJ IDEA.
  User: Vũ Hoàng Anh
  Date: 6/2/2023
  Time: 4:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.*"%>
<%@page import="java.util.*"%>
<%@ page import="dao.OrderDao" %>
<%
    Account a = (Account) request.getSession().getAttribute("acc");
    List<Order> orders = null;
    if (a != null) {
        request.setAttribute("person", a);
        OrderDao orderDao  = new OrderDao();
        orders = orderDao.userOrders(a.getId());
    }else{
        response.sendRedirect("signin.jsp");
    }
    ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
    if (cart_list != null) {
        request.setAttribute("cart_list", cart_list);
    }

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bill</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/new_slider.css">
    <link rel="stylesheet" href="./assets/css/content.css">
    <link rel="stylesheet" href="./assets/css/all_product.css">
    <link rel="stylesheet" href="./assets/css/cart.css">
</head>
<body>
<div class="container">
    <div class="card-header my-3">Orders History</div>
    <h3>Nhập code này để nhận vé: ${sessionScope.bill_code}</h3>
    <table class="table table-light">
        <thead>
        <tr>
            <th scope="col">Date</th>
            <th scope="col">Name</th>
            <th scope="col">Quantity</th>
            <th scope="col">Price</th>
            <th scope="col">Bill_code</th>
        </tr>
        </thead>
        <tbody>

        <%
            if(orders != null){
                for(Order o:orders){%>
        <tr>
            <td><%=o.getDate() %></td>
            <td><%=o.getName() %></td>
            <td><%=o.getQuantity() %></td>
            <td><%=o.getPrice()%></td>
            <td><%=o.getBill_code()%></td>

        </tr>
        <%}
        }
        %>
        </tbody>
    </table>
    <a href="allProduct" style="background-color: #d82e4d; width: 60px; height: 30px; align-items: center; display: flex; justify-content: center;">OK</a>
</div>


</body>
</html>
