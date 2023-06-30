<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <title>Happy Trip</title>
    <head>
        <h1 style="background-color:rgb(229, 76, 20) ;color: whitesmoke;width: 100%;height: 50px;text-align: center;padding-top: 0.4%; ">Welcome to Happy Trip</h1>
    <h2 style="width: 100%;height: 10px;background-color: red;margin-top:-1%;"></h2>
    <style>
        * {
          box-sizing: border-box;
        }

        .column1 {
          float: left;
          background-color: rgb(248, 100, 26);
          width: 30%;
          padding: 10px;
          height: 900px;
          margin-top: -1%;
        }
        .column2 {
          float: left;
          background-image:url('https://cdn.wallpapersafari.com/60/76/tLqdPj.jpg');
          background-size: cover;
          width: 69.5%;
          margin-left:0.4%;
          padding: 10px;
          height: 900px;
          margin-top: -1%;
        }
        .row:after {
          content: "";
          display: table;
          clear: both;
        }
        .label{
            font-size: 110%;
        }
        .input{
            padding: 7px;
            position: absolute;
            left: 15%;
            padding-left: 3px;
            margin-right: 50px;
            border-color: rgb(235, 24, 24);
        }
        .button{
            height: 30px;
            font-size: 18px;
            cursor: pointer;
            background-color: #fff;
            color: #615535;
            border: none;
            border-radius: 5px;
        }

         .button:hover {
            background-color: #482721;
            color: whitesmoke;
        }
        </style>
    </head>

    <body>
        <div class="row">
            <div class="column1">
                <img src="https://wallpapercave.com/dwp1x/wp6767658.jpg" style="width: 100%;">
                <h2 style="color: white;">Book Your Tickets Now...<hr></h2>
                <form>
                  <div>
                    <label class="label" style="color:white;">Flight Name: </label>
                    <select class="input" name="flights" id="flights">
                        <option value="Air America">Air America</option>
                        <option value="Air Arabia">Air Arabia</option>
                        <option value="Air India">Air India</option>
                        <option value="British Airways">British Airways</option>
                        <option value="Emirates">Emirates</option>
                        <option value="Indigo">Indigo</option>
                        <option value="Quatar Airways">Quatar Airways</option>
                        <option value="Singapore Airlines">Singapore Airlines</option>
                    </select>

                  </div>
                  <br>
                  <div>
                    <label class="label" style="color:white;">Flight No: </label>
                    <input class="input" placeholder="Eg: 33FG" required>
                  </div>
                  <br>
                  <div>
                    <label class="label" style="color:white;">Passenger Name: </label>
                    <input class="input" placeholder="Enter your name" required>
                  </div>
                  <br>
                  <div>
                    <label class="label" style="color:white;">E-Mail ID: </label>
                    <input class="input" placeholder="Enter Email Id here" required>
                  </div>
                  <br>
                  <div>
                    <label class="label" style="color:white;">Mobile No: </label>
                    <input class="input" placeholder="Enter Mob No:" maxlength="10" required>
                  </div>
                  <br>
                  <div>
                    <label class="label" style="color:white;">Date of Birth: </label>
                    <input class="input" type="date" name="date" id="date" required>
                  </div>
                  <br>
                  <div>
                      <label class="label" for="age" style="color:white;">Age: </label>
                      <input class="input" placeholder="Age" type="number" maxlength="3" required>
                    </div>
                    <br>
                    <div>
                        <label class="label" style="color:white;">Date of Travelling: </label>
                        <input class="input" type="date" name="date" id="date" min="2022-07-22" max="2022-10-22" required>
                      </div>
                      <br>
                    <div>
                      <label class="label" style="color:white;">Starting From: </label>
                      <input class="input" placeholder="Enter Starting Place" required>
                    </div>
                    <br>
                    <div>
                        <label class="label" style="color:white;">Destination: </label>
                        <input class="input" placeholder="Enter Destination Place" required>
                      </div>
                      <br><br>
                  <button class="button" value="Reset" style="margin-left: 40%;" >Clear Form</button>
                  <button class="button"  style="margin-left: 3%;" >Save Details</button>
                  <br>
                  <h3 style="color: white;">Click on Save Details & Go to payment Section below...</h3>
                  <button class="button" onclick="window.location.href = 'file:///E:/Work%20Related/HTML%20&%20CSS/flight%20ticket%202.html';"> Payment Section </button>
                </form>
            </div>
            <div class="column2">
                <h2 style="color:white;padding-left: 20px;">Greetings...<br></h2>
                <p style="padding-left:20px;font-size: large;color: white;">This is a site for booking flight tickets of various companies across the world<br>
                We are booking tickets for flights Air India, Indigo, Quatar Airways, Air Arabia, <br>
                Air America, British Airways, Singapore Airlines, Emirates...<br>
                We do not accept any other flight bookings.
                <br>If you are interest to book tickets for the above flights please fill up the details here.
            <br>Then go for payment section and confirm your seats now...<br><br>Thank you have a nice day...</p>
            </div>
          </div>
          <footer style="background-color:rgb(245, 125, 32) ;width: 100%;height:20px;margin-top:0.4%;text-align: center;color: white;">copyright.happytrip_2022.com</footer>
    </body>
</html>