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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="js/slider.js" type="text/javascript"></script>
        <style>
            #main
            {
                height:400px;
                width:400px;
                background-color:lightcyan;
                margin:0 auto;
                opacity:1;
                box-shadow:0px 0px 10px aqua;
                border-radius:20px;
            }
           
        </style>
    </head>
    <body bgcolor="white" onload="moveSlider()">
        <div  id="outer" >
            <div id="header">
                <div id="logo">
                    <img src="images/logo2.png" style="height:150px;width:153px;"/>
                </div>
                <div id="banner"style="text-shadow: 0px 0px 10px black;background-image: linear-gradient(to right top, #d16ba5, #c777b9, #ba83ca, #aa8fd8, #9a9ae1, #8aa7ec, #79b3f4, #69bff8, #52cffe, #41dfff, #46eefa, #5ffbf1);">
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
        <div id="parent" style="background-image:url('images/s2.jpeg');opacity:0.8;background-size: cover;">
            <div id="main" style="background-color:lightgrey;">
                <form action="generalcode/logincode.jsp" method="post">
                    <table border="0" style="margin:0 auto;width:90%;">
                    <h1 style="color:blueviolet; text-align:center;">
                        Login Form
                    </h1>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i style="font-size:24px" class="fa">&#xf2be;</i></td>
                            <td>
                                <input type="text" name="userid" class="L" placeholder="Enter User Id"  required style="border:1px solid black;height:30px;"/>
                            </td>
                        </tr>
                        <br>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i style="font-size:24px" class="fa">&#xf023;</i>
                            </td>
                            <td>
                                <input type="password" name="password" class="L" placeholder="Enter Your Password"  required style="border:1px solid black;height:30px;"/>
                            </td>
                        </tr>
                    </table>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <input type="submit" value="Login" class="btn2" style="margin:0 auto;width:20%;margin-left:156px;margin-bottom:60px;"/>
                            </td>
                        </tr>
                </form>
                </tr>
            </div>
            </div>
            <div id="footer">
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
         </div>
    </body>
</html>
