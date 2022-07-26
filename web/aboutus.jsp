<%-- 
    Document   : index
    Created on : Aug 3, 2019, 3:44:35 PM
    Author     : Hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EProcurement</title>
        <link href="css/style.css" rel="stylesheet"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="js/slider.js" type="text/javascript"></script> 
    </head>
    <body bgcolor="white" onload="moveSlider()">
        <div id="outer">
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
            <img id="slide" width="1000" height="255"/>
    </div>
        <div id="parent" >
            
            <div id="left" style="height:870px;width:300px;background-color:green;">
                <div id="A" style="height:800px;width:260px;background-color:whitesmoke;margin:0 auto;margin-top:30px;">
                    <p style="text-align:center;font-size:25px;font-color:gray;">Notification</p>
                 <marquee direction="up" height="650" onmouseover="stop()" onmouseout="start()">
                <%
                    DbManager dm=new DbManager();
                    ResultSet rs=dm.selectQuery("select * from notification");
                    while(rs.next())
                    {
                %>
                <span style="text-align:center;">
                    <p style="color:blue;font-size:20px;"><%=rs.getString("notificationtext")%></p>
                    <p><%=rs.getString("posteddate")%></p>
                </span>
                <% }  %>
                </marquee>
            </div>
            </div>
            <div id="right"style="background-image:url('images/reg2.jpg');opacity:0.9;background-size: cover;">
              <div id="right1" style="height:870px;width:700px;background-color: lightsteelblue;border:1px solid; margin:0 auto;margin-top: 0px;border-radius: 0px 0px 0px 0px;">
                    <div id="right2" style="height:250px;width:660px;background-color: lightsteelblue;margin:0 auto;margin-top: 50px;border-radius: 0px 20px 0px 20px;">
                        <p style="font-size: 25px;font-color:black;margin-top: 11px;"><b>Introduction:-</b></p>
                        <p style="font-size: 21px;font-color:black;margin-left:10px;text-align:justify;margin-top: -27px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E-Procurement or electronic procurement refers to the process of purchase and sale
of goods or services through electronic methods, primarily the Internet. It is an alternative to the
manual process of procurement, and is certainly superior to the latter in many respects. Organizations
are increasingly opting for e-Procurement platforms, realizing its potential to curb irregularities and
unnecessary costs.- KARAM is India’s leading Personal Protective Equipment Manufacturing
enterprise, and is rated as one of the finest Indian companies providing world class PPE.</p>
                    </div>
                    <div id="right3" style="height:250px;width:660px;background-color: lightsteelblue; margin:0 auto;margin-top: 20px;border-radius: 20px 0px 20px 0px;">
                        <P style="font-size: 25px;font-color:black;margin-top: 11px;"><b>Client Information:-</b></p>
                        <p style="font-size: 21px;font-color:black;margin-left:10px;text-align:justify;margin-top: -27px;">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; KARAM
ranks as the number one Company in the field of Personal Safety in the country, and as one of the
top ten Fall Protection manufacturing companies in the World. Our product range includes
Personal Protective Equipment like safety helmets, safety eyewear, hearing protection, face
protection, hand protection, protective work wear, safety shoes, and a vast range of Fall
Protection Equipment. 
                        </p>
                        
                    </div>
                    <div id="right4" style="height:250px;width:660px;background-color: lightsteelblue; margin:0 auto;margin-top: 20px;border-radius: 20px 0px 20px 0px;">
                        <p style="font-size: 25px;font-color:black;margin-top: 11px;"><b>Existing System:-</b></p>
                        <p style="font-size: 21px;font-color:black;margin-left:10px;text-align:justify;margin-top: -27px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The existing system in the Company was based on physical registration of the
vendors for the announced tender and the bidding was also very time consuming for the company. This
was ineffective as down time was very high. The Company wants to implement an effective software
solution to manage the tender and vendors, their bidding detail and choosing the vendors on the
package or non-package based.</p>
                        </div>
                    </div>
            </div>
            <div id="footer" style="margin-top: 10px;">
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
 <div> 
     <a href="#" style="margin-left: 600px;color: red;"><i style="font-size:24px" class="fa">&#xf062;</i>
    </body>
</html>
