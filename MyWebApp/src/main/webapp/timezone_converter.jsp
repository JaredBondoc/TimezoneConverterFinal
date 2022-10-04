<%-- 
    Document   : test
    Created on : 17/09/2022, 1:39:06 PM
    Author     : Jared
--%>

<%@page import="java.time.format.DateTimeFormatter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.TimeZone" %>
<%@ page import="java.time.ZoneId" %>
<%@ page import="java.time.ZonedDateTime" %>
<%@ page import="java.time.LocalDateTime" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Time zone converter</title>
        <link href="styles.css" rel="stylesheet">
    </head>
    <body>
        <h1>Timezone converter</h1>

        <form>
            <fieldset>
                <label for="referrer">Original time zone
                    <select id="original_timezone" name="original_timezone">
                        <option value="">(select one)</option>
                        <option value="America/Argentina/Buenos_Aires">America/Argentina/Buenos_Aires</option>
                        <option value="Australia/Sydney">Australia/Sydney</option>
                        <option value="America/Toronto">America/Toronto</option>
                        <option value="Asia/Shanghai">Asia/Shanghai</option>
                        <option value="Africa/Cairo">Africa/Cairo</option>
                        <option value="Europe/Rome">Europe/Rome</option>
                        <option value="Indian/Malvides">Indian/Malvides</option>
                    </select>
                </label>
                <br><br>
                <label>Original time
                </label>
                <input type="datetime-local" id="time" name="time">
                
                <label for="referrer">Time zone to convert to
                    <select id="convert_timezone" name="convert_timezone">
                        <option value="">(select one)</option>
                        <option value="America/Argentina/Buenos_Aires">America/Argentina/Buenos_Aires</option>
                        <option value="Australia/Sydney">Australia/Sydney</option>
                        <option value="America/Toronto">America/Toronto</option>
                        <option value="Asia/Shanghai">Asia/Shanghai</option>
                        <option value="Africa/Cairo">Africa/Cairo</option>
                        <option value="Europe/Rome">Europe/Rome</option>
                        <option value="Indian/Malvides">Indian/Malvides</option>
                    </select>
                    </select>

                    <input type="submit" value="Submit">
                    </fieldset>
                    </form>
                    
         <% 
            try {
            String original_timezone = request.getParameter("original_timezone");
            String convert_timezone = request.getParameter("convert_timezone");
            
            ZoneId zone1 = ZoneId.of(original_timezone);
            ZoneId zone2 = ZoneId.of(convert_timezone);
            String user_time = request.getParameter("time");
            LocalDateTime user_converted = LocalDateTime.parse(user_time);
            
            ZonedDateTime zdt1 = user_converted.atZone(zone1);
            //converted time is here - now find way to print this one website..
            ZonedDateTime zdt2 = zdt1.withZoneSameInstant(zone2);
           
            out.println(zdt2);
            
            } catch(NullPointerException e) { 
                System.out.println("NullPointerException thrown!");
            }
             
            
         %>
         
            

                </label>
                </body>
                </html>
