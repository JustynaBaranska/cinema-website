<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    <title>Details</title>
</head>
<body>
    <div class="top">
        <div class="cinema"><h1>CINEMA</h1></div>
        <div class="naigation">
    <nav>        
        <ul>
            <li class="first"><a href="Home.html">Home</a></li>
            <li class="navi bookingnav">Tickets</li>
            <li class="navi ">Details</li>
            <li class="last bookingnav">Payment</li>
        </ul>
    </nav>
            </div>
    </div>
     <hr />
  <section class="details">
    <div class="details-left">

        <h2>Personal Details</h2>
        <div class="inputs">
            <br />
            <br />
        <p class="boldertext">First name:*</p>
        <input type="text" size="50" />
            <br />
            <br />
        <p class="boldertext">Last name:*</p>
        <input type="text" size="50" />
            <br />
            <br />
        <p class="boldertext">Emails:*</p>
        <input type="email" size="50" />
            <br />
            <br />
        <p class="boldertext">Reatype Email:*</p>
        <input type="email" size="50" />
            <br />
            <br />
        <p class="boldertext">Phone number:</p>
        <input type="tel" size="50" />
            <br />
            <br />
            <p>  <button class="back">Back</button> <button class="continue">Confirm</button></p>
            <br />
        </div>
    </div>
    <div class="details-right">
        <h2 class="extrapadd">My Booking</h2>
        <hr />
        <p class="boldertext extrapadd">I'm going to see:</p>
        <img src="Images/delivery.jpg"  class="extrapadd" />
        <p class="superextrapadd">Delivery Man</p>
        <hr />
        <p><span class="boldertext extrapadd">At:</span> time</p>
        <hr />
        <p class="boldertext extrapadd">The number of people going is:</p>
        <p class="superextrapadd"> number</p>
        <hr />
        <p class="boldertext extrapadd">The tickets I have are:</p>
        <p class="superextrapadd">1xAdult £6.80</p>
        <hr />
        <p class="boldertext extrapadd">Total: £6.80</p>
    </div>
      </section>
    <hr class="bottom-hr" />
    <footer>
        <p>Cinema &copy; 2014 </p>
        &copy 2014;
    </footer>
</body>
</html>
