<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="web.*,web.viewmodels.DetailsPageModel,data.models.*,java.text.SimpleDateFormat,java.util.Date"%>
    
    <%
    DetailsPageModel model = null;
    if (request.getParameter("movie") != null && 
    	request.getParameter("ticketsAdult") != null &&
    	request.getParameter("ticketsChild") != null && 
    	request.getParameter("ticketsSenior") != null && 
    	request.getParameter("ticketsStudent") != null && 
    	request.getParameter("ticketsFamily") != null && 
    	request.getParameter("datetime") != null) 
    
    	{
    	int movieId = Integer.parseInt(request.getParameter("movie"));
    	int ticketsAdult = Integer.parseInt(request.getParameter("ticketsAdult"));
    	int ticketsChild = Integer.parseInt(request.getParameter("ticketsChild"));
    	int ticketsSenior = Integer.parseInt(request.getParameter("ticketsSenior"));
    	int ticketsStudent = Integer.parseInt(request.getParameter("ticketsStudent"));
    	int ticketsFamily = Integer.parseInt(request.getParameter("ticketsFamily"));

    	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy hh:mm");
    	Date datetime = sdf.parse(request.getParameter("datetime"));
    	PageManager manager = new PageManager();
        model = manager.GetDetailsPageModel(movieId, 
        		ticketsAdult,
        		ticketsChild,
        		ticketsSenior,
        		ticketsStudent,
        		ticketsFamily,        		
        		datetime);
        
    } else {
      
    }
    
    %>
    
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="stylesheet" type="text/css" href="Styles/StyleSheet.css" />
    <title>Details</title>
</head>
<body>
    <div class="top">
        <div class="cinema"><h1>CINEMA</h1></div>
        <div class="naigation">
    <nav>        
        <ul>
            <li class="first"><a href="index.jsp">Home</a></li>
            <li class="navi bookingnav">Tickets</li>
            <li class="navi ">Details</li>
            <li class="last bookingnav">Payment</li>
        </ul>
    </nav>
            </div>
    </div>
     <hr />
     <form action="Payment.jsp" method="post">
     
  <section class="details">
    <div class="details-left">

        <h2>Personal Details</h2>
        <div class="inputs">
            <br />
            <br />
        <p class="boldertext">First name:*</p>
        <input name="firstname" type="text" size="50" />
            <br />
            <br />
        <p class="boldertext">Last name:*</p>
        <input name="surname" type="text" size="50" />
            <br />
            <br />
        <p class="boldertext">Emails:*</p>
        <input name="email" type="email" size="50" />
            <br />
            <br />
       
        <p class="boldertext">Phone number:</p>
        <input name="phonenumber" type="tel" size="50" />
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
        <img src="<%= model.GetMovie().GetSmallImage() %>"  class="extrapadd" />
        <p class="superextrapadd"><%= model.GetMovie().GetTitle()%></p>
        <hr />
        <p><span class="boldertext extrapadd">At:</span> <%= model.GetDateAndTime() %></p>
        <hr />
        <p class="boldertext extrapadd">The number of people going is:</p>
        <p class="superextrapadd"> <%= model.GetNumberOfPeople() %></p>
        <hr />
        <p class="boldertext extrapadd">The tickets I have are:</p>
        <%for(String detail : model.GetTicketDetails())
        	{%>
        	<p class="superextrapadd"><%= detail %></p>
        	<%}%>
        
        <hr />
        <p class="boldertext extrapadd">Total: <%= model.GetTotalPrice() %></p>
    </div>
      </section>
      
      <input type="hidden" name="numgoing" value="<%= model.GetNumberOfPeople() %>" />
      <input type="hidden" name="total" value="<%= model.GetTotalPrice() %>" />
      <input type="hidden" name="summary" value="<%= model.GetTicketDetailsSummary() %>" />
      <input type="hidden" name="movie" value="<%= model.GetMovie().GetId() %>" />
      <input type="hidden" name="datetime" value="<%= model.GetDateAndTime() %>" />
      
      </form>
    <hr class="bottom-hr" />
    <footer>
        <p>Cinema &copy; 2014 </p>
        &copy 2014;
    </footer>
</body>
</html>
