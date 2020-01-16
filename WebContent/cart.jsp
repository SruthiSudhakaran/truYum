<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Cart</title>
<link rel="shortcut icon" href="images/truyum-logo-dark.png" />
<link rel="stylesheet" type="text/css" href="styles/style.css" />
</head>
<body>
    <header> <span id="truYum">truYum</span> <img id="truYum-img"
        src="images/truyum-logo-light.png" width="50" height="50" /> <nav> <a
        href="ShowMenuItemListCustomer">Menu</a> <a id="cart" href="ShowCart">Cart</a> </nav> </header>
    <span id="menu-heading">Cart</span>
    <c:set var="cart" value="${cart}"></c:set>
    <c:if test="${removeCartItemStatus==true}">
        <p class=cart-notification>Item Removed from Cart Successfully</p>
    </c:if>
    <table class="table">
        <col width="220" />
        <col width="150" />
        <col width="70" />
        <col width="125" />
        <col width="100" />

        <tr>
            <th align="left">Name</th>
            <th align="center">Free Delivery</th>
            <th align="right">Price</th>

        </tr>
        <c:forEach items="${menuItem}" var="menuItem">
            <tr>
                <td align="left">${menuItem.getName()}</td>
                <c:choose>
                    <c:when test="${menuItem.isFreeDelivery()==true}">
                        <td align="center"><c:out value="Yes"></c:out></td>
                    </c:when>
                    <c:otherwise>
                        <td align="center"><c:out value="No"></c:out></td>
                    </c:otherwise>
                </c:choose>
                <td align="right">${menuItem.getPrice()}</td>

                <td align="center"><a href="RemoveCart?menuItemId=${menuItem.getId()}">Delete</a></td>
            </tr>
        </c:forEach>
        <tr>
            <td></td>
            <th>Total</th>
            <th>Rs. ${cart.getTotal()}</th>
        </tr>
    </table>
    <footer> <span id="copy-right">Copyright &copy; 2019</span> </footer>
</body>
</html>