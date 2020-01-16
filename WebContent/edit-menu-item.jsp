<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Edit Menu Item</title>
<link rel="stylesheet" type="text/css" href="styles/style.css" />
<link rel="shortcut icon" href="images/truyum-logo-dark.png" />
<script src="js/script.js"></script>
</head>
<body>
    <c:set var="menuItem" value="${menuItem}"></c:set>
    <header> <span id="truYum">truYum</span> <img id="truYum-img"
        src="images/truyum-logo-light.png" width="50" height="50" /> <nav> <a
        href="ShowMenuItemListAdmin">Menu</a> </nav> </header>
    <span id="menu-heading">Edit Menu Item</span>
    <form action="EditMenuItem" method="post" name="menuItemForm"
        onsubmit="return validateMenuItemForm();">
        <input type="hidden" name="id" value="${menuItem.getId()}" />
        <table>
            <tr>
                <th align="left"><label class="grey" for="name">Name</label></th>
            </tr>
            <tr>
                <td colspan="4"><input type="text" name="name" value="${menuItem.getName()}"
                    autocomplete="off" id="name" /></td>
            </tr>
            <tr></tr>
            <tr>
                <th align="left"><label class="grey" for="price">Price (Rs.)</label></th>
                <th align="left"><label class="grey" for="active">Active</label></th>
                <th align="left"><label class="grey" for="dol">Date of Launch</label></th>
                <th align="left"><label class="grey" for="cat">Category</label></th>
            </tr>
            <tr>
                <td><input type="text" autocomplete="off" value="${menuItem.getPrice()}"
                    name="price" id="price" /></td>
                <td><c:choose>
                        <c:when test="${menuItem.isActive()==true}">
                            <input type="radio" value="Yes" name="active" checked />Yes
                <input type="radio" value="No" name="active" />No
                </c:when>
                        <c:otherwise>
                            <input type="radio" value="Yes" name="active" />Yes
                <input type="radio" value="No" name="active" checked />No
                </c:otherwise>
                    </c:choose></td>
                <td><f:formatDate value="${menuItem.getDateOfLaunch()}" var="dateOfLaunch"
                        pattern="dd/MM/yyyy" /><input type="text" autocomplete="off"
                    value="${dateOfLaunch}" name="dateOfLaunch" id="dol" /></td>
                <td><select name="category">
                        <option value="${menuItem.getCategory()}">${menuItem.getCategory()}</option>
                        <option value="starters">Starters</option>
                        <option value="main course">Main Course</option>
                        <option value="desert">Dessert</option>
                        <option value="drinks">Drinks</option>
                </select></td>
            </tr>
            <tr></tr>
            <tr>
                <td><c:choose>
                        <c:when test="${menuItem.isFreeDelivery()==true}">
                            <input type="checkbox" name="freeDelivery" checked value="Yes" />Free Delivery
                </c:when>
                        <c:otherwise>
                            <input type="checkbox" name="freeDelivery" value="No" />Free Delivery
                </c:otherwise>
                    </c:choose></td>
            </tr>
            <tr>
                <td colspan="4"><input type="submit" value="Save" name="submit" id="submit" /></td>
            </tr>
        </table>
    </form>
    <footer> <span id="copy-right">Copyright &copy; 2019</span> </footer>
</body>
</html>