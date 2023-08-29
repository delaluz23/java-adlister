<%--
  Created by IntelliJ IDEA.
  User: josedelaluz
  Date: 8/29/23
  Time: 9:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pizza time</title>
</head>
<body>
<form action="pizza-order" method="post">
    <h3>Choose your crust</h3>
    <select name="crust" id="crust">
        <option value="thin">Thin</option>
        <option value="newYork">New York</option>
        <option value="regular">Regular</option>
    </select>
    <h3>Choose your sauce</h3>
    <select name="sauce" id="sauce">
        <option value="marinara">Marinara</option>
        <option value="spicyMarinara">Spicy Marinara</option>
        <option value="bbq">Barbeque</option>
    </select>
    <h3>Choose your size</h3>
    <select name="size" id="size">
        <option value="small">Small</option>
        <option value="medium">Medium</option>
        <option value="large">Large</option>
    </select>
    <h3>Choose your toppings</h3>
    <label for="pepperoni">
        Pepperoni
        <input name="toppings" id="pepperoni" type="checkbox" value="Pepperoni">
    </label>
    <label for="anchovies">
        Anchovies
        <input name="toppings" id="anchovies" type="checkbox" value="anchovies">
    </label>
    <label for="pineapple">
        Pineapple
        <input name="toppings" id="pineapple" type="checkbox" value="pineapple">
    </label>
    <label for="addy">
        <input name="addy" id="addy" type="text" placeholder="Enter Your Address">
    </label>
    <button type="submit">SUBMIT</button>
</form>



</body>
</html>
