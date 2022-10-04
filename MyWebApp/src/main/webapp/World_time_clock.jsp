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
         <link href="styles.css" rel="stylesheet">
         <script type="text/javascript" src="js/script.js"></script>
    </head>
    <body class = "overflow-hidden">
        
         <div class="row bg-dark pt-3 pb-2">
              
                    <h3 class="h3 col text-left text-light ms-2"> Welcome 
                    
                <h2 class="h2 col text-light text-center"> Time Conversion Home </h2>
                
                <div class="col">
                    <div class="float-end me-2">  
                          <a href="index.jsp" class="btn btn-dark ms-2"> Homepage</a>
                         <!-- Jared's parts -->   
                        <a href="timezone_converter.jsp" class="btn btn-light text-dark ms-2"> Timezone converter </a>
                    </div>
                </div>
         </div>

        
        <h1>World time clock</h1>
        <%
        Date today = new Date();    
        DateFormat df = new SimpleDateFormat("hh:mm aa dd-MM-yy");
        
        df.setTimeZone(TimeZone.getTimeZone("Asia/Seoul"));
        String Seoul = df.format(today);
        
        df.setTimeZone(TimeZone.getTimeZone("Australia/Sydney"));
        String Sydney = df.format(today);
        
        df.setTimeZone(TimeZone.getTimeZone("Europe/London"));
        String London = df.format(today);
        
        df.setTimeZone(TimeZone.getTimeZone("Europe/Brussels"));
        String Brussels = df.format(today);
        
        df.setTimeZone(TimeZone.getTimeZone("Europe/Rome"));
        String Rome = df.format(today);
        
        df.setTimeZone(TimeZone.getTimeZone("Asia/Tokyo"));
        String Tokyo = df.format(today);
        
        df.setTimeZone(TimeZone.getTimeZone("Europe/Berlin"));
        String Berlin = df.format(today);
        
        df.setTimeZone(TimeZone.getTimeZone("Asia/Shanghai"));
        String Shanghai = df.format(today);
        
        df.setTimeZone(TimeZone.getTimeZone("Asia/Singapore"));
        String Singapore = df.format(today);
        
        df.setTimeZone(TimeZone.getTimeZone("Africa/Johannesburg"));
        String Johannesburg = df.format(today);
        
        df.setTimeZone(TimeZone.getTimeZone("America/New_York"));
        String New_York = df.format(today);
        
        df.setTimeZone(TimeZone.getTimeZone("America/Los_Angeles"));
        String Los_Angeles = df.format(today);
        
        df.setTimeZone(TimeZone.getTimeZone("Europe/Paris"));
        String Paris = df.format(today);
        
        df.setTimeZone(TimeZone.getTimeZone("Asia/Dubai"));
        String Dubai = df.format(today);
        
        df.setTimeZone(TimeZone.getTimeZone("Asia/Baghdad"));
        String Baghdad = df.format(today);
        
        df.setTimeZone(TimeZone.getTimeZone("Asia/Manila"));
        String Manila = df.format(today);
        
        df.setTimeZone(TimeZone.getTimeZone("Hongkong"));
        String Hongkong = df.format(today);        
        %>   
        <p>Sydney: <%=Sydney%></p>
        <p>Seoul: <%=Seoul%></p>
        <p>London: <%=London%></p>
        <p>Brussels: <%=Brussels%></p>
        <p>Rome: <%=Rome%></p>
        <p>Tokyo: <%=Tokyo%></p>
        <p>Berlin: <%=Berlin%></p>
        <p>Shanghai: <%=Shanghai%></p>
        <p>Singapore: <%=Singapore%></p>
        <p>Johannesburg: <%=Johannesburg%></p>
        <p>New York: <%=New_York%></p>
        <p>Los Angeles: <%=Los_Angeles%></p>        
        <p>Paris: <%=Paris%></p>
        <p>Dubai: <%=Dubai%></p>
        <p>Baghdad: <%=Baghdad%></p>
        <p>Manila <%=Manila%></p>
        <p>Hong Kong: <%=Hongkong%></p>
    </body>
</html>
