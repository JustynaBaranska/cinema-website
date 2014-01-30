<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="web.*,web.viewmodels.DetailsPageModel,data.models.*,java.text.SimpleDateFormat,java.util.Date"%>
    
    
    
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

        <h2>Booking Success</h2>
       <p>Thank you, your tickets have been successfully booked</p>
    </div>
   
      
      </section>
      
     
      
      </form>
    <hr class="bottom-hr" />
    <footer>
        <p>Cinema &copy; 2014 </p>
        &copy 2014;
    </footer>
</body>
</html>
