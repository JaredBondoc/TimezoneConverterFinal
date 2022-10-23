<%-- 
    Document   : World_time_clock
    Created on : 17/09/2022, 1:52:00 PM
    Author     : Jared
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.TimeZone" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>World time clock</title>
        <%-- internal stylesheet --%>
        <style>
            body {
                width: 100%;
                height: 100vh;
                margin: 0;
                background-color: #1b1b32;
                ;
                color: #f5f6f7;
                font-family: Tahoma;
                font-size: 16px;
            }

            h1, p, h2, h3, a {
                margin: 1em auto;
                text-align: center;
            }

            #table {
                margin: auto;
                margin-top: 50px;
                width: 40%;
            }

            #submit {
                margin: auto;
            }

            ul {
                list-style-type: none;
                margin: 0;
                padding: 0;
                overflow: hidden;
                background-color: #333;
            }

            li {
                float: left;
                border-right: 1px solid #bbb;
            }


            li:last-child {
                border-right: none;
            }

            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

            /* Change the link color to #111 (black) on hover */
            li a:hover {
                background-color: #111;
            }

            .active {
                background-color: #04AA6D;
            }
            
            .regions a:link {
                color: green;
                background-color: transparent;
            }
            

            
        </style>
        <script type="text/javascript" src="js/script.js"></script>
    </head>
    <%-- navigation bar --%>
    <ul>
        <li><a href="index.jsp">Home</a></li>
        <li><a href="World_time_clock.jsp">World Time Clock</a></li>
        <li><a href="calendar.jsp">Calendar</a></li>
    </ul>
    <body class = "overflow-hidden">

        
        <h1>World time clock</h1>
        
        <%-- region selection --%>
        <section class="regions">
        <h3>Americas<h3>
        <a href="World_time_clock.jsp">All</a>
        <a href="asia.jsp">Asia</a>
        <a href="america.jsp">Americas</a>
        <a href="oceania.jsp">Oceania</a>
        <a href="africa.jsp">Africa</a>
        <a href="europe.jsp">Europe</a>
        </section>
        <%
            //code to fetch the timezones of different areas.
            Date today = new Date();
            DateFormat df = new SimpleDateFormat("hh:mm aa dd-MM-yy");

            df.setTimeZone(TimeZone.getTimeZone("America/Argentina/Buenos_Aires"));
            String AmericaArgentinaBuenosAires = df.format(today);

            df.setTimeZone(TimeZone.getTimeZone("America/Toronto"));
            String AmericaToronto = df.format(today);

            df.setTimeZone(TimeZone.getTimeZone("America/New_York"));
            String AmericaNew_York = df.format(today);

            df.setTimeZone(TimeZone.getTimeZone("America/Los_Angeles"));
            String AmericaLos_Angeles = df.format(today);

            df.setTimeZone(TimeZone.getTimeZone("America/Costa_Rica"));
            String AmericaCosta_Rica = df.format(today);

            df.setTimeZone(TimeZone.getTimeZone("America/El_Salvador"));
            String AmericaEl_Salvador = df.format(today);

            df.setTimeZone(TimeZone.getTimeZone("America/Mexico_City"));
            String AmericaMexico_City = df.format(today);
        %>
        <%-- code to display the gathered timezones onto website --%>
        <p>Buenos Aires: <%=AmericaArgentinaBuenosAires%></p>
        <p>Toronto: <%=AmericaToronto%></p>
        <p>New York: <%=AmericaNew_York%></p>
        <p>Los Angeles: <%=AmericaLos_Angeles%></p>
        <p>Costa Rica: <%=AmericaCosta_Rica%></p>
        <p>El Salvador: <%=AmericaEl_Salvador%></p>
        <p>Mexico City: <%=AmericaMexico_City%></p>
    </body>
</html>
