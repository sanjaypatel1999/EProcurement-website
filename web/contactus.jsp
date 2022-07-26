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
            body
            {
                overflow-x: hidden;  //scrollbar hatane ke liye.
            }
        </style>
    </head>
    <body bgcolor="white" onload="moveSlider()">
        <div  id="outer" style="background-image:url('images/s1.jpeg');opacity:0.9;">
            <div id="header" style="box-shadow:0px 0px 15px darkmagenta;">
                <div id="logo">
                    <img src="images/logo2.png" style="height:150px;width:153px;"/>
                </div>
                <div id="banner" style="text-shadow: 0px 0px 10px black;background-image: linear-gradient(to right top, #d16ba5, #c777b9, #ba83ca, #aa8fd8, #9a9ae1, #8aa7ec, #79b3f4, #69bff8, #52cffe, #41dfff, #46eefa, #5ffbf1);">
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
        <div id="parent" style="background-image:url('images/s1.jpeg');opacity:0.7px;background-size: cover;">
            <div id="left" style="margin:0 auto;height:700px;width:650px;border:1px solid;margin-left:200px;border-radius:10px 10px 10px 10px; box-shadow: 5px 10px 15px gray;">
            <div id="main" style="color:black;">
                <form action="generalcode/enquirycode.jsp" method="post">
                    <h2 style="text-align:center; color:blueviolet; font-size:24px;">
                        Enquiry Form  
                    </h2>
                    <table style="margin:0 auto; width:50%;" border="0" cellpadding="10">
                        <tr>
                            <td>Enter Name</td>
                            <td><input type="text" name="name" class="txt" required/></td>
                            
                        </tr>
                        <tr>
                            <td>Select Gender</td>
                            <td>
                                <input type="radio" name="gender" value="Male"/>Male
                                <input type="radio" name="gender" value="Female"/>Female
                            </td>
                        </tr>
                        <tr>
                            <td>Enter Address</td>
                            <td><textarea name="address" class="txt1" required/></textarea>
                        </tr>
                        <tr>
                            <td>Enter Contact No.</td>
                            <td>
                                <input type="text" name="contactno"class="txt" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter Email Address</td>
                        <td>
                            <input type="email" name="emailaddress"class="txt" required/>
                        </td>
                        </tr>
                        <tr>
                            <td>Enter Enquiry Text</td>
                            <td>
                                <textarea name="enquirytext" class="txt1" required style="height:100px; resize:none;"></textarea>
                            </td>    
                        </tr>
                        <tr>
                           
                            <td colspan="2">
                                <input type="submit" value="Submit" class="btn"/>
                            </td>
                        </tr>
                    </table>
                </form>
            </div> 
            </div>
        </div>
            <div id="footer" style="margin-top:5px;">
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
