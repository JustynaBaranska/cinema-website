<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="web.viewmodels.*,web.*"%>
    
    <%
    MoviepageModel model = null;
    if (request.getParameter("id") != null) {
    	int id = Integer.parseInt(request.getParameter("id"));
    	PageManager manager = new PageManager();
        model = manager.GetMoviepageModel(id);
        
    } else {
      
    }
    
    
    
    
    %>
    
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="stylesheet" type="text/css" href="Styles/StyleSheet.css" />
    <title>What's on</title>
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
    <div class="movielist">
        <section class="movie">
            <img src="<%= model.GetImage() %>" class="movieimage" />
            
            <h3><%= model.GetTitle() %></h3>
                <p><span class="boldertext">Realease date:</span> 12.01.2014</p>
            <p><span class="boldertext">Running time:</span> 120 min</p>
            <p><span class="boldertext">Dates available:</span> <%= model.GetOpeningDate() %></p>
            <p class="boldertext">Synopsis:</p>
            <p><%= model.GetSynopsis() %></p>            
        </section>
        
            </div>
    <hr class="bottom-hr" />


    <footer>
        <p>Cinema &copy; 2014 </p>
        &copy 2014;
    </footer>
</body>
</html>