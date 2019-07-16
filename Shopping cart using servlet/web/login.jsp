<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Robel
  Date: 7/13/2019
  Time: 6:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <html>
  <head>
    <title>$Title$</title>
      <link rel="stylesheet" type="text/css" href="resources/css/login.css" title="style">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>
      <script type="text/javascript" src="resources/js/mainjs.js"></script>

  </head>
  <body >
  <h1>  Good Buy Electronic and Devices Online Shopping  </h1>
  <form action="login" method="Post">
      <fieldset>
        <legend> Customers</legend>
      Enter Username: <input type="text" id="userInput" name="username"><br><br>

          Enter Password: <input type="password"  name="password"><br><br>
          <input type="submit" value="login"><br> <br>
           <p id="errorMessage" ><c:if test="${not empty errorMessage}">
               <c:out value="${errorMessage}"/>
           </c:if></p>
      </fieldset>

  </form>

    <form action="signup" method="get">
  <h3 > If you are  a new Customer please sigh Up first</h3>
  <input  type="submit" value="SignUp" >
    </form>

  <form>

  </form>
     <h3> If you want to buy from our shop.Come to the given Address close to you!!</h3>
<%--       Address: <input type="text" name="city">--%>

<div>
  <select id="address">
      <option value="" selected="selected">(choose a City)</option>
      <option value="Fair.txt">FairField</option>
      <option value="SAN.txt">SanFransisco</option>
      <option value="OAK.txt">Oakland</option>
      <option value="DC.txt" >DC</option>

  </select>
</div>
  <div>
      <textarea id="output" rows="6" cols="30"></textarea>
  </div>

  <div id="history">
      <h2> Advantages of Online ShoppingSS</h2>
  <p>

      The main advantage of online shopping is that it enables reduce your monthly expenses. <br>
      Most online stores offer lower prices, as opposed to offline stores, as well as offer various<br>
      bargains that help save even more money. The easiest way to pay less is to compare prices.People<br>
      buying goods via the Internet have an opportunity to pay less with online coupons. Online merchants <br>
      offer various opportunities which help save money. Savvy shoppers know where to look for discounts <br>
      and pay less. If you want to economize with online shopping, simply do a little online research <br>
      and look for special offers and coupons.

  </p>
  </div>

  </body>

</html>
