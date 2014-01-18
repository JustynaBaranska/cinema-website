<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    <title>Tickets</title>
</head>
<body>
    <div class="top">
        <div class="cinema"><h1>CINEMA</h1></div>
        <div class="naigation">
    <nav>        
        <ul>
            <li class="first"><a href="Home.html">Home</a></li>
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
        <p>Whatever movie picked</p>
        <p><span class="boldertext">AT: </span>time</p>
        <br />

        <hr />

        <p class="ticketstable boldertext">Pick the type and amount of ticets</p>

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
                    <td class=" border-right border-bottom"><select><option>0</option><option>1</option><option>2</option></select></td>
                    <td class=" border-right border-bottom">0</td>
                </tr>
                <tr class="odd">
                    <td class="border-left border-right border-bottom">Child</td>
                    <td class=" border-right border-bottom">£5.80</td>
                    <td class=" border-right border-bottom"><select><option>0</option><option>1</option><option>2</option></select></td>
                    <td class=" border-right border-bottom">0</td>
                </tr>
                <tr class="even">
                    <td class="border-left border-right border-bottom">Seniort</td>
                    <td class=" border-right border-bottom">£5.80</td>
                    <td class=" border-right border-bottom"><select><option>0</option><option>1</option><option>2</option></select></td>
                    <td class=" border-right border-bottom">0</td>
                </tr>
                <tr class="odd">
                    <td class="border-left border-right border-bottom">Student</td>
                    <td class=" border-right border-bottom">£5.80</td>
                    <td class=" border-right border-bottom"><select><option>0</option><option>1</option><option>2</option></select></td>
                    <td class=" border-right border-bottom">0</td>
                </tr>
                <tr class="even">
                    <td class="border-left border-right border-bottom radius-bottom-left">Family</td>
                    <td class="border-right border-bottom">£22.80</td>
                    <td class="border-right border-bottom"><select><option>0</option><option>1</option><option>2</option></select></td>
                    <td class=" border-right border-bottom radius-bottom-right">0</td>
                </tr>
            </tbody>
        </table>
        <p>  <button class="back">Back</button> <button class="continue">Continue</button></p>
        <p><a href="Prices.html" >Click here</a> for details of ticets types</p>

    </section>
    <hr class="bottom-hr" />


    <footer>
        <p>Cinema &copy; 2014 </p>
        &copy 2014;
    </footer>
</body>
</html>
