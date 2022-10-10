<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calendar Plan</title>
   <div>
    <style>
        body {
            width: 100%;
            height: 10vh;
            margin-left: 1px;
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
            margin-top: 1px;
            width: 10%;
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
            
           
        }


        li:last-child {
            border-right: none;
        }

        li a {
            display: block;
            color: white;
            text-align: center;
            padding: 10px;
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
    </div>
    <div style="position: relative;">
    <ul>
      <li><a href="index.jsp">Home</a></li>
      <li><a href="World_time_clock.jsp">World Time Clock</a></li>
      <li><a href="calendar.jsp">Calendar Plan</a></li>
      
    </ul>
        <body class = "overflow-hidden">
</head>
    
  </head>
  <body>
   <head><style>
    body {
    display: flex;
    margin-top: px;
    justify-content: center;
    
  }
  button {
    width: 75px;
    cursor: pointer;
    box-shadow: 0px 0px 2px gray;
    border: none;
    outline: none;
    padding: 5px;
    border-radius: 5px;
    color: white;
  }
  
  #header {
    padding: 10px;
    color: #d36c6c;
    font-size: 26px;
    font-family: sans-serif;
    display: flex;
    justify-content: space-between;
  }
  #header button {
    background-color:#111;
  }
  #container {
    width: 770px;
  }
  #weekdays {
    width: 100%;
    display: flex;
    color: #247BA0;
    font-weight: bold;
  }
  #weekdays div {
    width: 100px;
    padding: 10px;
  }
  #calendar {
    width: 100%;
    margin: auto;
    display: flex;
    flex-wrap: wrap;
  }
  .day {
    width: 100px;
    padding: 10px;
    height: 100px;
    cursor: pointer;
    box-sizing: border-box;
    background-color: gray;
    margin: 5px;
    box-shadow: 0px 0px 3px black;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
  }
  .day:hover {
    background-color: #d36c6c;
  }
  
  .day + #currentDay {
    background-color: #92a1d1;
  }
  .event {
    font-size: 10px;
    padding: 3px;
    background-color: #58bae4;
    color: white;
    border-radius: 5px;
    max-height: 55px;
    overflow: hidden;
  }
  .padding {
    cursor: default !important;
    background-color: #FFFCFF !important;
    box-shadow: none !important;
  }
  #newEventModal, #deleteEventModal {
    display: none;
    z-index: 20;
    padding: 25px;
    background-color: black;
    box-shadow: 0px 0px 3px black;
    border-radius: 5px;
    width: 350px;
    top: 100px;
    left: calc(50% - 175px);
    position: absolute;
    font-family: sans-serif;
  }
  #eventTitleInput {
    padding: 10px;
    width: 100%;
    box-sizing: border-box;
    margin-bottom: 25px;
    border-radius: 3px;
    outline: none;
    border: none;
    box-shadow: 0px 0px 3px gray;
  }
  #eventTitleInput.error {
    border: 2px solid red;
  }
  #cancelButton, #deleteButton {
    background-color: #d36c6c;
  }
  #saveButton, #closeButton {
    background-color: #92a1d1;
  }
  #eventText {
    font-size: 14px;
  }
  #modalBackDrop {
    display: none;
    top: 0px;
    left: 0px;
    z-index: 10;
    width: 100vw;
    height: 100vh;
    position: absolute;
    background-color: rgba(0,0,0,0.8);
  }
  
   </style></head>
    <div id="container">
      <div style="position: relative; height: 1px; ">
        <div style="position: absolute; height: 10px; bottom: 0; right: 0;  left: 0; ">
        </div>
      </div>
      <div id="header">
        <div id="monthDisplay"></div>
        <div>
          <button id="backButton">Back</button>
          <button id="nextButton">Next</button>
        </div>
      </div>

      <div id="weekdays">
        <div>Sunday</div>
        <div>Monday</div>
        <div>Tuesday</div>
        <div>Wednesday</div>
        <div>Thursday</div>
        <div>Friday</div>
        <div>Saturday</div>
      </div>

      <div id="calendar"></div>
    </div>

    <div id="newEventModal">
      <h2>New Event</h2>

      <input id="eventTitleInput" placeholder="Event Title" />

      <button id="saveButton">Save</button>
      <button id="cancelButton">Cancel</button>
    </div>

    <div id="deleteEventModal">
      <h2>Event</h2>

      <p id="eventText"></p>

      <button id="deleteButton">Delete</button>
      <button id="closeButton">Close</button>
    </div>

    <div id="modalBackDrop"></div>

    <script src="js/script.js"></script>
  </body>
</html>
