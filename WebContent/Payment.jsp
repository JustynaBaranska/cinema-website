<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="web.*,web.viewmodels.PaymentPageModel,data.models.*"%>
    
    <%
    PaymentPageModel model = null;
    PageManager manager = new PageManager();
    model = manager.GetPaymentPageModel(request);

    %>
    
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
     <form action="ProcessPayment" method="post" autocomplete="off">
    <section class="payment">
    <div class="payment-right">
        <h2>Enter your credit or debit card details</h2>
        <div class="inputs">
            <br />
         
        <p class="boldertext">Card type</p>
        <select name="cardType"><option>Please select</option>
        <%for(String option : model.GetPaymentOptions())
        	{%>
        	<option><%= option %></option>
        	<%}%>
        </select>
            <br />
           
        <p class="boldertext">Name on Card:*</p>
        <input name="cardName" type="text" size="50" />
            <br />
         <p class="boldertext">Card number:*</p>
             <input name="cardNumber" type="number" size="50" />
            <br />
        <p class="boldertext">Expiry date:*</p>
        <select name="expiryMonth"><option>Month</option><option>January</option><option>February</option><option>March</option><option>April</option>
            <option>May</option><option>June</option><option>July</option><option>August</option><option>September</option>
            <option>October</option><option>Novemebr</option><option>Decemebr</option>
        </select>
            <select name="expiryYear"><option>Year</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option>
                <option>2019</option><option>2020</option>
            </select>
            <br />
           
        <p class="boldertext">Issue number</p>
        <input name="issueNumber" type="text" size="20" placeholder="If present"/>
            <br />
   
        <p class="boldertext">Security code:</p>
        <input name="securityCode" type="text" size="20" />
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
        <img src="<%= model.GetMovie().GetSmallImage() %>"  class="extrapadd" />
        <p class="superextrapadd"><%= model.GetMovie().GetTitle() %></p>
        <hr />
        <p><span class="boldertext extrapadd">At:</span> <%= model.GetDateAndTime() %></p>
        <hr />
        <p class="boldertext extrapadd">The number of people going is:</p>
        <p class="superextrapadd"> <%= model.GetNumberOfPeople() %></p>
        <hr />
        <p class="boldertext extrapadd">The tickets I have are:</p>
        <p class="superextrapadd"><%= model.GetTicketSummary() %></p>
        <hr />
        <p class="boldertext extrapadd">Total: <%= model.GetTotalPrice() %></p>
    </div>
      </section>
      
      <input type="hidden" name="numgoing" value="<%= model.GetNumberOfPeople() %>" />
      <input type="hidden" name="total" value="<%= model.GetTotalPrice() %>" />
      <input type="hidden" name="summary" value="<%= model.GetTicketSummary() %>" />
      <input type="hidden" name="movie" value="<%= model.GetMovie().GetId() %>" />
      <input type="hidden" name="datetime" value="<%= model.GetDateAndTime() %>" />
      <input type="hidden" name="firstname" value="<%= model.GetFirstName() %>" />
      <input type="hidden" name="surname" value="<%= model.GetSurname() %>" />
      <input type="hidden" name="email" value="<%= model.GetEmail() %>" />
      <input type="hidden" name="telephone" value="<%= model.GetTelephone() %>" />
   </form>
    <hr class="bottom-hr" />
    <footer>
        <p>Cinema &copy; 2014 </p>
        &copy 2014;
    </footer>

</body>
</html>
