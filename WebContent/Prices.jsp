<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="stylesheet" type="text/css" href="Styles/StyleSheet.css" />
    <title>Prices</title>
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
    <section class="pricestable">
        <table>
            <thead>
            <tr class="tableheading">
                <th class="border-left border-right border-top border-bottom first-width radius-top-left">Ticket Type</th>
                <th class="border-right border-bottom border-top">Details</th>
                <th class="border-right border-bottom border-top price radius-top-right">Price</th>
                
            </tr>
                </thead>
            <tbody>
                <tr class="odd">
                    <td class="border-left border-right border-bottom first-width"><strong>Adult</strong></td>
                    <td class="border-right border-bottom table-text">Customers aged 18+, customers aged 15-17 pay 'Student' rate, ID may be required</td>
                    <td class="border-right border-bottom price">£6.80</td>
                  
                </tr>
                <tr class="even">
                    <td class="border-left border-right border-bottom first-width"><strong>Child</strong></td>
                    <td class="border-right border-bottom table-text">Child tickets are for customers aged 14 and under</td>
                    <td class="border-right border-bottom price">£5.80</td>
                   
                </tr>
                <tr class="odd">
                    <td class="border-left border-right border-bottom first-width"><strong>Student</strong></td>
                    <td class="border-right border-bottom table-text">Valid student photo ID must be shown or full adult rate may be charged</td>
                    <td class="border-right border-bottom">£5.80</td>
                    
                </tr>
                <tr class="even">
                    <td class="border-left border-right border-bottom first-width"><strong>Senior</strong></td>
                    <td class="border-right border-bottom table-text">Senior tickets are for customers aged 60+</td>
                    <td class="border-right border-bottom price">£5.80</td>
                   
                </tr>
                <tr class="odd">
                    <td class="border-left border-right border-bottom first-width"><strong>Family</strong></td>
                    <td class="border-right border-bottom table-text">Discount applies if tickets for 2 adults & 2 children or 1 adult & 3 children exceed the family ticket cost</td>
                    <td class="border-right border-bottom price">£22.80</td>
                    
                </tr>
                <tr class="even">
                    <td class="border-left  border-bottom first-width radius-bottom-left"><strong>3D Glasses</strong></td>
                    <td class="border-right border-bottom table-text">Per pair, retain your 3D glasses and reuse them in future 3D performances</td>
                    <td class="border-right border-bottom price radius-bottom-right">£1.00</td>
                   
                </tr>
            </tbody>
        </table>

    </section>
     <hr class="bottom-hr" />


    <footer>
        <p>Cinema &copy; 2014 </p>
        &copy 2014;
    </footer>
</body>
</html>
