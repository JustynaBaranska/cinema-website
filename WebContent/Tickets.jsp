<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="web.*,web.viewmodels.TicketPageModel,data.models.*,java.text.SimpleDateFormat,java.util.Date,java.util.Calendar"%>
    <%
    TicketPageModel model = null;
    if (request.getParameter("movieChoice") != null && request.getParameter("time") != null) {
    	int movieId = Integer.parseInt(request.getParameter("movieChoice"));
    	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
    	Date today = Calendar.getInstance().getTime();        
    	String todayString = sdf.format(today);
    	SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy hh:mm");
    	Date datetime = df.parse(todayString + " " + request.getParameter("time"));
    	PageManager manager = new PageManager();
        model = manager.GetTicketPageModel(movieId, datetime);
        
    } else {
      
    }
    
    %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="stylesheet" type="text/css" href="Styles/StyleSheet.css" />
    <title>Tickets</title>
</head>
<body>
    <div class="top">
        <div class="cinema"><h1>CINEMA</h1></div>
        <div class="naigation">
    <nav>        
        <ul>
            <li class="first"><a href="index.jspl">Home</a></li>
            <li class="navi">Tickets</li>
            <li class="navi bookingnav">Details</li>
            <li class="last bookingnav">Payment</li>
        </ul>
    </nav>
            </div>
    </div>
     <hr />
    <section class="tickets">
        <h2>Tickets</h2>
        <br />
        <br />

        <p class="boldertext">The movie you are going to see is:</p>
        <p><%= model.GetMovieTitle() %></p>
        <p><span class="boldertext">AT: </span> <%= model.GetDateAndTime() %></p>
        <br />

        <hr />

        <p class="ticketstable boldertext">Pick the type and amount of tickets</p>
<form action="Details.jsp">
        <table>
            <thead>
                <tr class="odd">
                    <th class="border-left border-right border-top border-bottom radius-top-left first-width" >Type</th>
                    <th class="border-right border-top border-bottom first-width" >Price</th>
                    <th class="border-right border-top border-bottom">Quantity</th>
                    <th class="border-right border-top border-bottom radius-top-right">Sub total</th>
                </tr>
            </thead>
            <tbody>
                <tr class="even">
                    <td class="border-left border-right border-bottom">Adult</td>
                    <td class=" border-right border-bottom">£6.20</td>
                    <td class=" border-right border-bottom">
                    <select name="ticketsAdult">
                    	<option>0</option>
                    	<option>1</option>
                    	<option>2</option>
                    </select></td>
                    <td class=" border-right border-bottom">0</td>
                </tr>
                <tr class="odd">
                    <td class="border-left border-right border-bottom">Child</td>
                    <td class=" border-right border-bottom">£5.80</td>
                    <td class=" border-right border-bottom">
                    <select name="ticketsChild">
                    	<option>0</option>
                    	<option>1</option>
                    	<option>2</option>
                    </select></td>
                    <td class=" border-right border-bottom">0</td>
                </tr>
                <tr class="even">
                    <td class="border-left border-right border-bottom">Senior</td>
                    <td class=" border-right border-bottom">£5.80</td>
                    <td class=" border-right border-bottom">
<select name="ticketsSenior">
                    	<option>0</option>
                    	<option>1</option>
                    	<option>2</option>
                    </select>
</td>
                    <td class=" border-right border-bottom">0</td>
                </tr>
                <tr class="odd">
                    <td class="border-left border-right border-bottom">Student</td>
                    <td class=" border-right border-bottom">£5.80</td>
                    <td class=" border-right border-bottom">
<select name="ticketsStudent">
                    	<option>0</option>
                    	<option>1</option>
                    	<option>2</option>
                    </select>
</td>
                    <td class=" border-right border-bottom">0</td>
                </tr>
                <tr class="even">
                    <td class="border-left border-right border-bottom radius-bottom-left">Family</td>
                    <td class="border-right border-bottom">£22.80</td>
                    <td class="border-right border-bottom">
<select name="ticketsFamily">
                    	<option>0</option>
                    	<option>1</option>
                    	<option>2</option>
                    </select>
</td>
                    <td class=" border-right border-bottom radius-bottom-right">0</td>
                </tr>
            </tbody>
        </table>
        <p> <button class="continue">Continue</button></p>
        <p><a href="Prices.html" >Click here</a> for details of tickets types</p>
        
        <input type="hidden" name="movie" value="<%= model.GetMovieId() %>" />
        <input type="hidden" name="datetime" value="<%= model.GetDateAndTime() %>" />
</form>
    </section>
    <hr class="bottom-hr" />


    <footer>
        <p>Cinema &copy; 2014 </p>
        &copy 2014;
    </footer>
</body>
</html>
