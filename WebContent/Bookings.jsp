<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
<link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    <title>Booking</title>
</head>
<body>
    <div class="top">
        <div class="cinema"><h1>CINEMA</h1></div>
        <div class="naigation">
    <nav>        
        <ul>
            <li class="first"><a href="Home.html">Home</a></li>
            <li class="navi"><a href="WhatsOn.html" >What's on</a></li>
            <li class="navi"><a href="Prices.html" >Prices</a></li>
            <li class="last"><a href="Bookings.html" >Booking</a></li>
        </ul>
    </nav>
            </div>
    </div>
     <hr />
    <section class="booking">
        <div class="booking-left">
            <h2>SHOWING TODAY</h2>
            <div>
            <div class="imagesforbooking">
            <img src="Images/frozen.jpg" class="booking-image" />
             <p class="booking-image">Frozen</p>
            </div>
            <div class="imagesforbooking">
            <img src="Images/americanhustle.jpg" class="booking-image" />
                <p class="booking-image">American Hustle</p>
                </div>
                </div>
            <div>
            <div class="imagesforbooking">
            <img src="Images/hobbit.jpg" class="booking-image" />
                <p class="booking-image">The Hobbit</p>
                     </div>
            <div class="imagesforbooking">
            <img src="Images/deliveryman.jpg"  class="booking-image"/>
                <p class="booking-image">Delivery Man</p>
                     </div>
            </div>
        </div>
        <div class="booking-right">
            <h2>Book Tickets</h2>
            <p class="bookinglists">Choose a film </p>
           <p class="bookinglists">
            <select class="pickmovie">
                <option>Please select</option>
                <option>Delivery Man</option>
                <option>Frozen</option>
            </select>
                </p>
                <p class="bookinglists">
                <button>time1</button>
                <button>time2</button>
                <button>time3</button>
                    </p>
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
