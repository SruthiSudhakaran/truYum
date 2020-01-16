<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Menu Item List Admin</title>
<link rel="shortcut icon" href="images/truyum-logo-dark.png" />
<link rel="stylesheet" type="text/css" href="styles/style.css" />
</head>
<body>
    <header> <span id="truYum">truYum</span> <img id="truYum-img"
        src="images/truyum-logo-light.png" width="50" height="50" /> <nav> <a
        href="ShowMenuItemListAdmin">Menu</a> </nav> </header>
    <span id="menu-heading">Menu Items</span>
    <table class="table">
        <col width="200"></col>
        <col width="75"></col>
        <col width="75"></col>
        <col width="125"></col>
        <col width="100"></col>
        <col width="100"></col>
        <col width="75"></col>
        <tr>
            <th align="left">Name</th>
            <th align="right">Price</th>
            <th align="center">Active</th>
            <th align="center">Date of Launch</th>
            <th align="center">Category</th>
            <th align="center">Free Delivery</th>
            <th align="center">Action</th>
        </tr>
        <c:forEach items="${menuItem}" var="menuItem">
            <tr>
                <td align="left">${menuItem.getName()}</td>
                <td align="right">${menuItem.getPrice()}</td>
                <c:choose>
                    <c:when test="${menuItem.isActive()==true}">
                        <td align="center"><c:out value="Yes"></c:out></td>
                    </c:when>
                    <c:otherwise>
                        <td align="center"><c:out value="No"></c:out></td>
                    </c:otherwise>
                </c:choose>
                <td align="center"><f:formatDate value="${menuItem.getDateOfLaunch()}"
                        pattern="dd/MM/yyyy" /></td>
                <td align="center">${menuItem.getCategory()}</td>
                <c:choose>
                    <c:when test="${menuItem.isFreeDelivery()==true}">
                        <td align="center"><c:out value="Yes"></c:out></td>
                    </c:when>
                    <c:otherwise>
                        <td align="center"><c:out value="No"></c:out></td>
                    </c:otherwise>
                </c:choose>
                <td align="center"><a href="ShowEditMenuItem?menuItemId=${menuItem.getId()}">Edit</a></td>
            </tr>
        </c:forEach>
    </table>
    <footer> <span id="copy-right">Copyright &copy; 2019</span> </footer>
</body>
</html>