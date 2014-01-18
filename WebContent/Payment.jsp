<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="stylesheet" type="text/css" href="Styles/StyleSheet.css" />
    <title>Payment</title>
</head>
<body>
    <div class="top">
        <div class="cinema"><h1>CINEMA</h1></div>
        <div class="naigation">
    <nav>        
        <ul>
            <li class="first"><a href="index.jsp">Home</a></li>
            <li class="navi bookingnav">Tickets</li>
            <li class="navi bookingnav">Details</li>
            <li class="last ">Payment</li>
        </ul>
    </nav>
            </div>
    </div>
     <hr />
    <section class="payment">
    <div class="payment-right">
        <h2>Enter your credit or debit card details</h2>
        <div class="inputs">
            <br />
         
        <p class="boldertext">Card type</p>
        <select><option>Please select</option><option>Visa</option><option>MasterCard</option><option>Delta</option><option>Maestro</option>
            <option>American Express</option>
        </select>
            <br />
           
        <p class="boldertext">Name on Card:*</p>
        <input type="text" size="50" />
            <br />
         <p class="boldertext">Card number:*</p>
             <input type="number" size="50" />
            <br />
        <p class="boldertext">Expiry date:*</p>
        <select><option>Month</option><option>January</option><option>February</option><option>March</option><option>April</option>
            <option>May</option><option>June</option><option>July</option><option>August</option><option>September</option>
            <option>October</option><option>Novemebr</option><option>Decemebr</option>
        </select>
            <select><option>Year</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option>
                <option>2019</option><option>2020</option>
            </select>
            <br />
           
        <p class="boldertext">Issue number</p>
        <input type="text" size="20" placeholder="If present"/>
            <br />
   
        <p class="boldertext">Security code:</p>
        <input type="text" size="20" />
          <br />
            <br />
            <p>  <button class="back">Back</button> <button class="continue">Confirm</button></p>
            <br />
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
