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

            h1, p, h2, a, h3 {
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
        <h3>Asia<h3>
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

            df.setTimeZone(TimeZone.getTimeZone("Asia/Seoul"));
            String Seoul = df.format(today);

            df.setTimeZone(TimeZone.getTimeZone("Asia/Tokyo"));
            String Tokyo = df.format(today);

            df.setTimeZone(TimeZone.getTimeZone("Asia/Shanghai"));
            String Shanghai = df.format(today);

            df.setTimeZone(TimeZone.getTimeZone("Asia/Singapore"));
            String Singapore = df.format(today);

            df.setTimeZone(TimeZone.getTimeZone("Asia/Dubai"));
            String Dubai = df.format(today);

            df.setTimeZone(TimeZone.getTimeZone("Asia/Baghdad"));
            String Baghdad = df.format(today);

            df.setTimeZone(TimeZone.getTimeZone("Asia/Manila"));
            String Manila = df.format(today);

            df.setTimeZone(TimeZone.getTimeZone("Hongkong"));
            String Hongkong = df.format(today);

            df.setTimeZone(TimeZone.getTimeZone("Asia/Calcutta"));
            String AsiaCalcutta = df.format(today);
            
            df.setTimeZone(TimeZone.getTimeZone("Asia/Dubai"));
            String AsiaDubai = df.format(today);
            
            df.setTimeZone(TimeZone.getTimeZone("Asia/Macau"));
            String AsiaMacau = df.format(today);
            
            df.setTimeZone(TimeZone.getTimeZone("Asia/Qatar"));
            String AsiaQatar = df.format(today);
            
            df.setTimeZone(TimeZone.getTimeZone("Asia/Taipei"));
            String AsiaTaipei = df.format(today);
            
            df.setTimeZone(TimeZone.getTimeZone("Asia/Singapore"));
            String AsiaSingapore = df.format(today);
            
            df.setTimeZone(TimeZone.getTimeZone("Asia/Kuala_Lumpur"));
            String AsiaKuala_Lumpur = df.format(today);
        %>
        <%-- code to display the gathered timezones onto website --%>
        <p>Seoul: <%=Seoul%></p>
        <p>Tokyo: <%=Tokyo%></p>
        <p>Shanghai: <%=Shanghai%></p>
        <p>Singapore: <%=Singapore%></p>
        <p>Dubai: <%=Dubai%></p>
        <p>Baghdad: <%=Baghdad%></p>
        <p>Manila <%=Manila%></p>
        <p>Hong Kong: <%=Hongkong%></p>
        <p>Calcutta: <%=AsiaCalcutta%></p>
        <p>Dubai: <%=AsiaDubai%></p>
        <p>Macau: <%=AsiaMacau%></p>
        <p>Qatar: <%=AsiaQatar%></p>
        <p>Taipei: <%=AsiaTaipei%></p>
        <p>Singapore: <%=AsiaSingapore%></p>
        <p>Kuala Lumpur: <%=AsiaKuala_Lumpur%></p>
    </body>
</html>
