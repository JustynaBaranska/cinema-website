<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <li><img src="Images/moviepromos/gravity.jpg" /></li>
    <li><img src="Images/moviepromos/duedate.jpg" /></li>
    <li><img src="Images/moviepromos/superman.jpg" /></li>
    </ul>
        
    </section>

    <section class="second-half">
        <div class="this-week">
            <h3>Opening this weeek</h3>
            <img src="Images/delivery.jpg" />
            <h4>DELIVERY MAN</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dui arcu, pulvinar non sagittis eget, fringilla sed turpis. 
                Nunc imperdiet sit amet sapien et pulvinar. Mauris risus augue, vulputate nec erat sit amet, tincidunt lacinia orci.
                 Vestibulum tempor dapibus fermentum. Fusce pulvinar venenatis lectus vel porttitor. Aliquam erat volutpat. 
                In vitae lacinia arcu, in dapibus odio. Praesent rutrum risus erat, nec ullamcorper eros venenatis et.</p>
            <a href="#">Read more</a>
        </div>
        <div class="know">
            <h3>Did you know</h3>
            <img src ="Images/hustle.jpg" />
            <h4>AMERICAN HUSTLE</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dui arcu, pulvinar non sagittis eget, fringilla sed turpis. 
                Nunc imperdiet sit amet sapien et pulvinar. Mauris risus augue, vulputate nec erat sit amet, tincidunt lacinia orci.
                 Vestibulum tempor dapibus fermentum. Fusce pulvinar venenatis lectus vel porttitor. Aliquam erat volutpat. 
                In vitae lacinia arcu, in dapibus odio. Praesent rutrum risus erat, nec ullamcorper eros venenatis et.</p>
            <a href="#">Read more</a>

        </div>
        <div class="most">
            <h3>Most watched trailers</h3>
            <div class="trailer1">
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

            </div>
            <div class="trailer3">
                
                <a href="#">See all</a>

            </div>

        </div>
        <div class="random">
            <h4>62nd PRIME TIME EMMY AWARDS</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dui arcu, pulvinar non sagittis eget, fringilla sed turpis. 
                Nunc imperdiet sit amet sapien et pulvinar. Mauris risus augue, vulputate nec erat sit amet, tincidunt lacinia orci. 
                Vestibulum tempor dapibus fermentum. Fusce pulvinar venenatis lectus vel porttitor. Aliquam erat volutpat. In vitae lacinia
                 arcu, in dapibus odio. Praesent rutrum risus erat, nec ullamcorper eros venenatis et. Duis fringilla felis vitae mattis 
                condimentum. Duis pellentesque justo diam, vel pretium sem egestas eu. Vestibulum accumsan, magna sed fringilla aliquet, 
                erat lacus ultrices mauris, quis gravida magna sem ornare dui. In placerat neque vitae vulputate facilisis. Integer laoreet 
                imperdiet convallis. Morbi at dignissim eros. Suspendisse purus arcu, accumsan rhoncus vulputate sed, luctus non enim.</p>
            <a href="#">Read more</a>
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
