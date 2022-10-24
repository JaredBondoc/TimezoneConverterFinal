<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        img {
            width: 100%;
            height: auto;
        }
        .center {
            display: block;
            margin-left: auto;
            margin-right: auto;
        }

        .container {
            position: relative;
            background-image: url("WorldMap.png");
            background-size: cover;
            text-align: center;
            color: white;
            width: 80%;
            height: 100%;
            margin-left: auto;
            margin-right: auto;
            margin-top: auto;
            margin-bottom: auto;
        }
        .bottom-left {
            position: absolute;
        }
        h3{
            font-size:10pt;
            color: black;
        }
        .container1{
            height: 100%;
            width: 4.5%;
            float: left;
        }
        .container1:hover {
            background-color: yellow;
            opacity: 0.3;
        }
        .bottom-left {
            position: absolute;
            bottom: 20px;
            left: 16px;
        }
        h2{
            font-size:14pt;
            color: black;
        }

    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>World Map</title>
    </head>
    <body>
        <%-- navigation bar --%>
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="World_time_clock.jsp">World Time Clock</a></li>
            <li><a href="calendar.jsp">Calendar</a></li>
            <li><a href="Graph.jsp">Time Graph</a></li>
            <li><a href="WorldMap.jsp">World Map</a></li>
        </ul>




        <h1>World Map</h1>
        <div class = "container">
            <!--Containers for each time zone-->
            <div class="container1"><h3>-11</h3></div>
            <div class="container1"><h3>-10</h3></div>
            <div class="container1"><h3>-9</h3></div>
            <div class="container1"><h3>-8</h3></div>
            <div class="container1"><h3>-7</h3></div>
            <div class="container1"><h3>-6</h3></div>
            <div class="container1"><h3>-5</h3></div>
            <div class="container1"><h3>-4</h3></div>
            <div class="container1"><h3>-3</h3></div>
            <div class="container1"><h3>-2</h3></div>
            <div class="container1"><h3>-1</h3></div>
            <div class="container1"><h3>0</h3></div>
            <div class="container1"><h3>+1</h3></div>
            <div class="container1"><h3>+2</h3></div>
            <div class="container1"><h3>+3</h3></div>
            <div class="container1"><h3>+4</h3></div>
            <div class="container1"><h3>+6</h3></div>
            <div class="container1"><h3>+7</h3></div>
            <div class="container1"><h3>+8</h3></div>
            <div class="container1"><h3>+9</h3></div>
            <div class="container1"><h3>+10</h3></div>
            <div class="container1"><h3>+11</h3></div>
            <div class="bottom-left"><h2>Sydney Time (UTC+11)<br>
                    <!--Gets current UTC Time-->
                    <script>
                        var dt = new Date(); //Date constructor 
                        var hh = dt.getUTCHours();
                        var mm = dt.getUTCMinutes();
                        var ss = dt.getUTCSeconds();
                        //printing time
                        document.write("Current UTC time is " + hh + ":" + mm + "<br>");
                    </script></h2></div>
        </div>
    </body>
</html>
