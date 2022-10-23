
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.TimeZone" %>
<%@ page import="java.time.ZoneId" %>
<%@ page import="java.time.ZonedDateTime" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <%-- Search Bar --%>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
        <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
        <script>
            $(function(){
                $("#original_timezone").select2();
            }); 
        </script>
        
        <script>
            $(function(){
                $("#convert_timezone").select2();
            }); 
        </script>
        
        <%-- internal stylesheet --%>
        <style>
            body {
                width: 100%;
                height: 100vh;
                margin: 0;
                background-color: #1b1b32;
                color: #f5f6f7;
                font-family: Tahoma;
                font-size: 16px;
            }

            h1, p, h2 {
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

            li a:hover {
                background-color: #111;
            }

            .active {
                background-color: #04AA6D;
            }

            .messageBox {
                margin: auto;
                padding: 10px;
                font-size: 20px;
            }
        </style>
        <script type="text/javascript" src="js/script.js"></script>
        <title>Time Conversion Home</title>
    </head> 
    <body class="overflow-hidden">
        <%-- navigation bar --%>
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="World_time_clock.jsp">World Time Clock</a></li>
            <li><a href="calendar.jsp">Calendar</a></li>
        </ul>

        <div class="row bg-dark pt-3 pb-2">

            <h2 class="h2 col text-light text-center"> Time Conversion Home </h2>

            <div>
                <%-- time conversion user inputs --%>
                <form id="table">
                    <fieldset>
                        <label for="referrer">Original time zone
                            <select id="original_timezone" name="original_timezone" required>
                                <option value="">(select one)</option>
                                <option value="Australia/Sydney">Australia/Sydney</option>
                                <option value="Australia/Adelaide">Australia/Adelaide</option>
                                <option value="Australia/Darwin">Australia/Darwin</option>
                                <option value="Australia/Melbourne">Australia/Melbourne</option>
                                <option value="America/Argentina/Buenos_Aires">America/Argentina/Buenos_Aires</option>
                                <option value="America/Toronto">America/Toronto</option>
                                <option value="America/New_York">America/New_York</option>
                                <option value="America/Los_Angeles">America/Los_Angeles</option>
                                <option value="America/Toronto">America/Toronto</option>
                                <option value="America/Vancouver">America/Vancouver</option>
                                <option value="America/Cancun">America/Cancun</option>
                                <option value="America/Costa_Rica">America/Costa_Rica</option>
                                <option value="America/El_Salvador">America/El_Salvador</option>
                                <option value="America/Mexico_City">America/Mexico_City</option>
                                <option value="Asia/Shanghai">Asia/Shanghai</option>
                                <option value="Asia/Seoul">Asia/Seoul</option>
                                <option value="Asia/Tokyo">Asia/Tokyo</option>
                                <option value="Asia/Manila">Asia/Manila</option>
                                <option value="Asia/Baghdad">Asia/Baghdad</option>
                                <option value="Asia/Bangkok">Asia/Bangkok</option>
                                <option value="Asia/Brunei">Asia/Brunei</option>
                                <option value="Asia/Calcutta">Asia/Calcutta</option>
                                <option value="Asia/Dubai">Asia/Dubai</option>
                                <option value="Asia/Macau">Asia/Macau</option>
                                <option value="Asia/Qatar">Asia/Qatar</option>
                                <option value="Asia/Taipei">Asia/Taipei</option>
                                <option value="Asia/Singapore">Asia/Singapore</option>
                                <option value="Asia/Kuala_Lumpur">Asia/Kuala_Lumpur</option>
                                <option value="Africa/Cairo">Africa/Cairo</option>
                                <option value="Africa/Johannesburg">Africa/Johannesburg</option>
                                <option value="Africa/Timbuktu">Africa/Timbuktu</option>
                                <option value="Africa/Maputo">Africa/Maputo</option>
                                <option value="Africa/Dakar">Africa/Dakar</option>
                                <option value="Africa/Asmara">Africa/Asmara</option>
                                <option value="Africa/Lome">Africa/Lome</option>
                                <option value="Europe/Rome">Europe/Rome</option>                                
                                <option value="Europe/Paris">Europe/Paris</option>
                                <option value="Europe/Moscow">Europe/Moscow</option>
                                <option value="Europe/Dublin">Europe/Dublin</option>
                                <option value="Europe/Kiev">Europe/Kiev</option>
                                <option value="Europe/London">Europe/London</option>
                                <option value="Europe/Luxembourg">Europe/Luxembourg</option>
                                <option value="Europe/Madrid">Europe/Madrid</option>
                                <option value="Europe/Prague">Europe/Prague</option>
                                <option value="Europe/Stockholm">Europe/Stockholm</option>
                                <option value="Europe/Vienna">Europe/Vienna</option>
                                <option value="Antarctica/South_Pole">Antarctica/South_Pole</option>
                            </select>
                        </label>
                        <br><br>
                        <label>Original time
                        </label>
                        <input type="datetime-local" id="time" name="time" required>
                        <br><br>
                        <label for="referrer">Time zone to convert to
                            <select id="convert_timezone" name="convert_timezone" required>
                                <option value="">(select one)</option>
                                <option value="Australia/Sydney">Australia/Sydney</option>
                                <option value="Australia/Adelaide">Australia/Adelaide</option>
                                <option value="Australia/Darwin">Australia/Darwin</option>
                                <option value="Australia/Melbourne">Australia/Melbourne</option>
                                <option value="America/Argentina/Buenos_Aires">America/Argentina/Buenos_Aires</option>
                                <option value="America/Toronto">America/Toronto</option>
                                <option value="America/New_York">America/New_York</option>
                                <option value="America/Los_Angeles">America/Los_Angeles</option>
                                <option value="America/Toronto">America/Toronto</option>
                                <option value="America/Vancouver">America/Vancouver</option>
                                <option value="America/Cancun">America/Cancun</option>
                                <option value="America/Costa_Rica">America/Costa_Rica</option>
                                <option value="America/El_Salvador">America/El_Salvador</option>
                                <option value="America/Mexico_City">America/Mexico_City</option>
                                <option value="Asia/Shanghai">Asia/Shanghai</option>
                                <option value="Asia/Seoul">Asia/Seoul</option>
                                <option value="Asia/Tokyo">Asia/Tokyo</option>
                                <option value="Asia/Manila">Asia/Manila</option>
                                <option value="Asia/Baghdad">Asia/Baghdad</option>
                                <option value="Asia/Bangkok">Asia/Bangkok</option>
                                <option value="Asia/Brunei">Asia/Brunei</option>
                                <option value="Asia/Calcutta">Asia/Calcutta</option>
                                <option value="Asia/Dubai">Asia/Dubai</option>
                                <option value="Asia/Macau">Asia/Macau</option>
                                <option value="Asia/Qatar">Asia/Qatar</option>
                                <option value="Asia/Taipei">Asia/Taipei</option>
                                <option value="Asia/Singapore">Asia/Singapore</option>
                                <option value="Asia/Kuala_Lumpur">Asia/Kuala_Lumpur</option>
                                <option value="Africa/Cairo">Africa/Cairo</option>
                                <option value="Africa/Johannesburg">Africa/Johannesburg</option>
                                <option value="Africa/Timbuktu">Africa/Timbuktu</option>
                                <option value="Africa/Maputo">Africa/Maputo</option>
                                <option value="Africa/Dakar">Africa/Dakar</option>
                                <option value="Africa/Asmara">Africa/Asmara</option>
                                <option value="Africa/Lome">Africa/Lome</option>
                                <option value="Europe/Rome">Europe/Rome</option>                                
                                <option value="Europe/Paris">Europe/Paris</option>
                                <option value="Europe/Moscow">Europe/Moscow</option>
                                <option value="Europe/Dublin">Europe/Dublin</option>
                                <option value="Europe/Kiev">Europe/Kiev</option>
                                <option value="Europe/London">Europe/London</option>
                                <option value="Europe/Luxembourg">Europe/Luxembourg</option>
                                <option value="Europe/Madrid">Europe/Madrid</option>
                                <option value="Europe/Prague">Europe/Prague</option>
                                <option value="Europe/Stockholm">Europe/Stockholm</option>
                                <option value="Europe/Vienna">Europe/Vienna</option>
                                <option value="Antarctica/South_Pole">Antarctica/South_Pole</option>                            </select>
                            </select>
                            <br><br>
                            <input type="submit" value="Submit" id="submit">
                            </fieldset>
                            </form>

                            <%
                                //timezone converter driver code
                                try {
                                    String original_timezone = request.getParameter("original_timezone");
                                    String convert_timezone = request.getParameter("convert_timezone");

                                    ZoneId zone1 = ZoneId.of(original_timezone);
                                    ZoneId zone2 = ZoneId.of(convert_timezone);
                                    String user_time = request.getParameter("time");
                                    LocalDateTime user_converted = LocalDateTime.parse(user_time);

                                    ZonedDateTime zdt1 = user_converted.atZone(zone1);
                                    //converted time is here
                                    ZonedDateTime zdt2 = zdt1.withZoneSameInstant(zone2);
                                    //this code makes the output more user friendly and easy to understand
                                    DateTimeFormatter dateTime2 = DateTimeFormatter.ofPattern("dd-MM-yyyy hh:mm a");
                                    out.println("The converted time in: ");
                                    out.println(zone2);
                                    out.println(" is ");
                                    out.println(dateTime2.format(zdt2));

                                } catch (NullPointerException e) {
                                    System.out.println("NullPointerException thrown!");
                                }

                            %>


                            </div>
                            </body>
                            </html>