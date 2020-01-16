function validateMenuItemForm() {

    var name = document.forms["menuItemForm"]["name"].value;
    var nameRegExp = (/^[a-zA-Z]{2,65}$/);
    if (name == "") {
        alert("Title is required");
        return false;
    }
    if (!name.match(nameRegExp)) {
        alert("Title should have 2 to 65 characters");
        return false;
    }

    var price = document.forms["menuItemForm"]["price"].value;
    if (price == "") {
        alert("Price is required");
        return false;
    }
    if (isNaN(price)) {
        alert("Price has to be a number");
        return false;
    }

    var dateOfLaunch = document.forms["menuItemForm"]["dateOfLaunch"].value;
    if (dateOfLaunch == "") {
        alert("Date of Launch is required");
        return false;
    }

    var category = document.forms["menuItemForm"]["category"].value;
    if (category == "") {
        alert("Select one category");
        return false;
    }

}
