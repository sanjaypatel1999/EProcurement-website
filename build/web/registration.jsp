<%-- 
    Document   : index
    Created on : Aug 3, 2019, 3:44:35 PM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EProcurement</title>        
        <link href="css/style.css" rel="stylesheet"/>
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">v
        <script src="js/slider.js" type="text/javascript"></script>
        <style>
            #main
            {
                height:800px;
                width:500px;
                background-color:transparent;
                margin:0 auto;
            }
        </style>
    </head>
    <body bgcolor="white" onload="moveSlider()">
        <div  id="outer">
            <div id="header">
                <div id="logo">
                    <img src="images/logo2.png" style="height:150px;width:153px;"/>
                </div>
                <div id="banner" style="text-shadow: 0px 0px 10px black; background-image: linear-gradient(to right top, #d16ba5, #c777b9, #ba83ca, #aa8fd8, #9a9ae1, #8aa7ec, #79b3f4, #69bff8, #52cffe, #41dfff, #46eefa, #5ffbf1);">
                    E-Procurement
                </div>
                
            </div>      
            <div id="menu">
                <ul>
                    <li><a href="index.jsp"> Home </a></li>
                    <li><a href="aboutus.jsp"> About Us </a></li>
                    <li><a href="registration.jsp"> Registration </a></li>
                    <li><a href="login.jsp"> Login </a></li>
                    <li><a href="contactus.jsp"> Contact Us </a></li>
                </ul>
            </div>
        <div id="slider">
            <img id="slide" width="1000" height="250"/>
    </div>
            <div id="parent" style="background: linear-gradient(to bottom, #3399ff 0%, #99ffcc 100%);">
                <div id="left" style="margin:0 auto;height:800px;width:600px;border:1px solid;margin-left:170px;opacity:0.7;box-shadow:0px 0px 20px gray;border-radius:10px 10px 10px 10px; box-shadow: 5px 10px 15px gray;">
                    <div id="main">
                        <form action="generalcode/regcode.jsp" method="post">
                   <h1 style="text-align:center;color:black;">
                       Vendor  Registration Form
                   </h1>
            <table style="margin:0 auto; width:400px;;" border="0">
                <tr>
             <td>Enter Company Name:</td>
                    <td>
                        <input type="text" name="companyname" placeholder="Enter Company Name" class="B" style="color:black;background-color: lightgray;" required/>
                    </td>
                </tr>
                <tr>
                    <td>Enter Address</td>
                    
                    <td>
                        <textarea name="address" placeholder="Enter Address" class="C" required style="color:black;background-color: lightgray;""></textarea>
                    </td>
                </tr>
                <tr>
                    <td>Expertise Area</td>
                    <td>
                        <textarea name="expertisearea" class="C" placeholder="Enter Expertise Area" required style="color:black;background-color: lightgray;""></textarea>
                    </td>
                </tr>
                <tr>
                    <td>Concern Person Name</td>
                    <td>
                        <input type="text" name="personname" placeholder="Enter Concern Person Name" class="B" style="color:black;background-color: lightgray;" required/>
                    </td>
                </tr>
                <tr>
                    <td>Contact No</td>
                    <td>
                        <input type="text" name="contactno" class="B" placeholder="Enter Contact Number" style="color:black;background-color: lightgray;" required/>
                    </td>
                </tr>
                <tr>
                    <td><div id="input-group-text">Email Address</td></div>
                    <td>
                        <input type="email" name="emailaddress" class="B" placeholder="Enter E-mail"style="color:black;background-color: lightgray;" required/>
                    </td>
                </tr>
                <tr>
                    <td>TIN No.</td>
                    <td>
                        <input type="text" name="tinno" class="B" placeholder="Enter Tin Number" style="color:black;background-color: lightgray;" required/>
                    </td>
                </tr>
                <tr>
                    <td>PAN No</td>
                    <td>
                        <input type="text" name="panno" class="B" placeholder="Enter Pan Number"style="color:black;background-color: lightgray;" required/>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <input type="password" name="password" class="B" placeholder="Enter Password"style="color:black;background-color: lightgray;" required/>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                <input type="submit" value="register" class="btn1"/>
                    </td>
                 </tr>
            </table>
                </form>
                    </div>
                </div>
        </div>
            <div id="footer" style="margin-top:1px;">
                <div id="lfooter">
                    Copyright &copy; to E-Procurement
                </div>
                <div id="rfooter">
                    Developed by :-Sanajay Patel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="https://www.facebook.com/www.karam.in" class="fa fa-facebook-official" style="font-size:30px;color:blue"></a>
                    <a href="http://karam.in/" class="fa fa-internet-explorer" style="font-size:30px;color:red"></a>
                    <a href="https://twitter.com/karam_india?lang=en" class="fa fa-twitter-square" style="font-size:30px;color:red"></a>
                    <a href="https://www.youtube.com/channel/UCaqIglxwt9USY0j-7bZomjQ" class="fa fa-youtube-square" style="font-size:30px;color:red"></a>
                    
                </div>
            </div>
        </div>
        <a href="#" style="margin-left: 600px;color: red;"><i style="font-size:24px" class="fa">&#xf062;</i>
    </body>
</html>
