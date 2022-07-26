<%-- 
    Document   : index
    Created on : Aug 3, 2019, 3:44:35 PM
    Author     : Hp
--%>
<%
    if(session.getAttribute("userid")==null || session.getAttribute("userid")=="")
    {
      response.sendRedirect("../login.jsp");
    }
    else
    {
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EProcurement</title>
        <link href="css/style.css" rel="stylesheet"/>
    </head>
    <body bgcolor="white">
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
                    <li><a href="userhome.jsp"> Home </a></li>
                    <li><a href="tender.jsp"> Live Tenders </a></li>
                    <li><a href="discussion.jsp"> Discussion </a></li>
                    <li><a href="complain.jsp"> Complain </a></li>
                    <li><a href="changepassword.jsp"> Change Pwd. </a></li>
                    <li><a href="logout.jsp"> Logout </a></li>
                </ul>
            </div>
            <div id="parent" style="background-image:url('images/1.jpg');opacity:0.9;margin-top:-10px;">
                <div id="right">
                <div id="right1" style="height:870px;width:700px;background-color: lightsteelblue;border:1px solid; margin:0 auto;margin-top: 0px;border-radius: 0px 0px 0px 0px;"><h1 style="color: green;">Meet The Founders :-</h1>
                    <div id="right2" style="height:110px;width:500px;background-color: lightsteelblue;border:1px solid;margin-top: 31px; margin-left:182px;border-radius: 0px 20px 20px 0px;">
                        <p style="color:blue;text-align: justify;font-size: 17px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            "With deep understanding of Customer needs, and a dedicated approach towards excellence, Mr. Hemant Sapra’s personal and marketing skills have enabled to build trust and everlasting bonds not only with Customers across the globe but also with his team members." </p></div>
                    <div id="rig2" style="height:100px;width:100px;background-color: lightsteelblue;border:1px solid;margin-top: -120px;border-radius: 50px;background-image:url('images/honor.jpg');background-size: cover;margin-left: 18px;"></div>&nbsp;&nbsp;&nbsp;&nbsp;Mr.Hemant sapra<br/>
                        (President,Global Markting)
                        <div id="right3" style="height:130px;width:500px;background-color: lightsteelblue;border:1px solid;margin-top: 50px;border-radius: 0px 0px 0px 0px;margin-left: 10px;"><p style="font-size: 16px;color: blueviolet;text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;"Mr Rajesh Nigam hails from one of the most premium Engineering Institutes of the country, IIT-Kanpur, as a B.Tech in Metallurgical Engineering. 
His technical expertise and unique ability to apply his engineering skills has spearheaded the success behind launch of a wide range of highly technical safety products in the Indian as well as the overseas market."</p>
                        <div id="rig3" style="height:110px;width:110px;background-color: lightsteelblue;border:1px solid;border-radius: 0px 0px 0px 0px;margin-left: 530px;background-image:url('images/rajesh.jpg');background-size: cover;margin-top: -140px;"></div><p style="margin-left:530px;">&nbsp;Mr.Rajesh Nigam<br/>(President,Technical)</p>
                    </div><br/><br/>
                        <h1>Product Gallery :-</h1>
                        <div id="right4" style="height:130px;width:680px;background-color: lightsteelblue;border:1px solid;margin-top: 30px;border-radius: 0px 0px 0px 0px;margin-left: 10px;">
                          <div id="rig4" style="height:130px;width:130px;background-color: lightsteelblue;border:1px solid;border-radius: 0px;background-image:url('images/r4.jpg');background-size: cover;float: left;"></div>  
                          <div id="rig5" style="height:130px;width:130px;background-color: lightsteelblue;border:1px solid;border-radius: 0px;background-image:url('images/h2.jpg');background-size: cover;float: left;"></div>  
                           <div id="rig6" style="height:130px;width:130px;background-color: lightsteelblue;border:1px solid;border-radius: 0px;background-image:url('images/h3.jpg');background-size: cover;float: left;"></div>  
                          <div id="rig7" style="height:130px;width:130px;background-color: lightsteelblue;border:1px solid;border-radius: 0px;background-image:url('images/h5.jpg');background-size: cover;float: left;"></div>  
                        <div id="rigw1" style="height:130px;width:150px;background-color: lightsteelblue;border:1px solid;border-radius: 0px;background-image:url('images/r1.jpg');background-size: cover;float: left;"></div>  
                        </div>
                        <div id="right8" style="height:130px;width:680px;background-color: lightsteelblue;border:1px solid;margin-top: 30px;border-radius: 0px 0px 0px 0px;margin-left: 10px;">
                            <div id="rig9" style="height:130px;width:130px;background-color: lightsteelblue;border:1px solid;border-radius: 0px;background-image:url('images/h6.jpg');background-size: cover;float: left;"></div>  
                          <div id="rige1" style="height:130px;width:130px;background-color: lightsteelblue;border:1px solid;border-radius: 0px;background-image:url('images/h7.jpg');background-size: cover;float: left;"></div>  
                           <div id="rige2" style="height:130px;width:130px;background-color: lightsteelblue;border:1px solid;border-radius: 0px;background-image:url('images/h8.jpg');background-size: cover;float: left;"></div>  
                          <div id="rige3" style="height:130px;width:130px;background-color: lightsteelblue;border:1px solid;border-radius: 0px;background-image:url('images/h9.jpg');background-size: cover;float: left;"></div>  
                        <div id="rigw2" style="height:130px;width:150px;background-color: lightsteelblue;border:1px solid;border-radius: 0px;background-image:url('images/r2 .jpg');background-size: cover;float: left;"></div>  
                        </div>
            </div>
            <div id="footer">
                <div id="lfooter">
                    Copyright &copy; to E-Procurement
                </div>
                <div id="rfooter">
                    Developed by :-Sanajay Patel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="https://www.facebook.com/www.karam.in" class="fa fa-facebook-official" style="font-size:30px;color:blue"></a>
                    <a href="#" class="fa fa-internet-explorer" style="font-size:30px;color:red"></a>
                    <a href="https://twitter.com/karam_india?lang=en" class="fa fa-twitter-square" style="font-size:30px;color:red"></a>
                    <a href="https://www.youtube.com/channel/UCaqIglxwt9USY0j-7bZomjQ" class="fa fa-youtube-square" style="font-size:30px;color:red"></a>
                </div>
            </div>
        </div>
         </div>
    </body>
</html>
<% } %>
