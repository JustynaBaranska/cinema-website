<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="web.*,web.viewmodels.BookingPageModel,data.models.*"%>
    <%
    PageManager manager = new PageManager();
    BookingPageModel model = manager.GetBookingPageModel();
    %>
    
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
<link rel="stylesheet" type="text/css" href="Styles/StyleSheet.css" />
    <title>Booking</title>
</head>
<body>
    <div class="top">
        <div class="cinema"><h1>CINEMA</h1></div>
        <div class="naigation">
    <nav>        
        <ul>
            <li class="first"><a href="index.jsp">Home</a></li>
            <li class="navi"><a href="WhatsOn.jsp" >What's on</a></li>
            <li class="navi"><a href="Prices.jsp" >Prices</a></li>
            <li class="last"><a href="Bookings.jsp" >Booking</a></li>
        </ul>
    </nav>
            </div>
    </div>
     <hr />
    <section class="booking">
        <div class="booking-left">
            <h2>SHOWING TODAY</h2>
            
            <% for(Movie m : model.GetMovies())
            {%>
            	<div class="imagesforbooking">
            <img src="<%= m.GetSmallImage() %>" class="booking-image" />
             <p class="booking-image"><%= m.GetTitle() %></p>
            </div>
            <%}%>
            
            
        </div>
        <div class="booking-right">
            <h2>Book Tickets</h2>
            <p class="bookinglists">Choose a film </p>
           <p class="bookinglists">
            <form action="Tickets.jsp">
            <select name="movieChoice" class="pickmovie">
                <option>Please select</option>
                <% for(Movie m : model.GetMovies())
            {%>
             <option value="<%= m.GetId() %>"><%= m.GetTitle() %></option>
            <%}%>
            </select>
                </p>
                <p class="bookinglists">
                <button name="time" value="11:00">11:00</button>
                <button name="time" value="14:00">14:00</button>
                <button name="time" value="18:00">18:00</button>
                    </p>
            </form>
            <hr />

            <p> Call for information & phone bookings on:</p>
            <p>0789765432</p>


        </div>
    </section>
     <hr class="bottom-hr" />


    <footer>
        <p>Cinema &copy; 2014 </p>
        &copy 2014;
    </footer>
</body>
</html>
