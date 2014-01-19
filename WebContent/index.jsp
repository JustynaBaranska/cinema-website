<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="web.*,web.viewmodels.HomepageModel,data.models.*"%>
    <%
    PageManager manager = new PageManager();
    HomepageModel model = manager.GetHomepageModel();
    %>
    
    
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="stylesheet" type="text/css" href="Styles/StyleSheet.css" />
    <title>Home</title>
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
    <section class="big-image">
    <ul id="movieScroller">
    <% for(Movie m : model.GetScrollerMovies())
    {%>
    	<li><img src="<%= m.GetPromoImage() %>" /></li>
    <%}%>
    <!-- <li><img src="Images/moviepromos/gravity.jpg" /></li>
    <li><img src="Images/moviepromos/duedate.jpg" /></li>
    <li><img src="Images/moviepromos/superman.jpg" /></li>-->
    </ul>
        
    </section>

    <section class="second-half">
        <div class="this-week">
            <h3>Opening this week</h3>
            <% Movie openingThisWeek = model.GetOpeningThisWeek(); %>
            <img src="<%= openingThisWeek.GetSmallImage() %>" />
            <h4><%= openingThisWeek.GetTitle() %></h4>
            <p><%= openingThisWeek.GetShortDescription() %></p>
        </div>
        <div class="know">
            <h3>Film of the Month</h3>
            <% Movie didYouKnow = model.GetFilmOfTheMonth(); %>
            <img src ="<%= didYouKnow.GetSmallImage() %>" />
            <h4><%= didYouKnow.GetTitle() %></h4>
            <p><%= didYouKnow.GetShortDescription() %></p>
        </div>
        <div class="most">
            <h3>Most watched trailers</h3>
            
            <% 
            int index = 1;
            for(Movie m : model.GetMostWatchedTrailers())
            	{
            	String cssClass = "trailer1";
            	if(index % 2 == 0)
            	{
            		cssClass = "trailer2";
            	}
            	%>
            	<div class="<%= cssClass %>">
	                <img src="<%= m.GetThumbnailImage() %>" />
	                <h4><%= m.GetTitle() %></h4>
            	</div>
            	<%
            	index++;
            	}%>
            
            <!-- <div class="trailer1">
                <img src="Images/trailer.jpg" />
                <h4>Inception</h4>
                <a href="#">Read more</a>
            </div>
            <div class="trailer2">
                <img src="Images/trailer.jpg" />
                <h4>The Expendables</h4>
                <a href="#">Read more</a>

            </div>
            <div class="trailer1">
                <img src="Images/trailer.jpg" />
                <h4>Animal Kingdom</h4>
                <a href="#">Read more</a>

            </div>
            <div class="trailer2">
                <img src="Images/trailer.jpg" />
                <h4>Dinner for Schmucks</h4>
                <a href="#">Read more</a>

            </div>
            <div class="trailer1">
                <img src="Images/trailer.jpg" />
                <h4>Let me in</h4>
                <a href="#">Read more</a>

            </div>-->
            <div class="trailer3">
                
                <a href="#">See all</a>

            </div>

        </div>
        <div class="random">
        <% News news = model.GetLatestNews();%>
            <h4><%= news.GetNewsTitle() %></h4>
            <p><%= news.GetNewsText() %></p>
            <a href="News.jsp?id=<%= news.GetId() %>">Read more</a>
        </div>
    </section>
    <hr class="bottom-hr" />


    <footer>
        <p>Cinema &copy; 2014 </p>
        &copy 2014;
    </footer>
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/jquery.carouFredSel-6.2.1.js"></script>
    <script type="text/javascript">
    
    (function($){
    	
    	$("#movieScroller").carouFredSel();
    	
    })(jQuery);
    
    </script>
</body>
</html>
