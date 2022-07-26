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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">v
        <style>
            .B1
{
    height:40px;
    width: 200px;
    background-color: blue;
    border:1px solid blue;
    color:white;
    border-radius: 25px;
    font-size: 16px;
    display:block;
    margin: 10px auto;   
}
.B1:hover
{
    box-shadow: 0px 0px 10px gray;
    background-color: white;
    border:1px solid lightgrey;
    color:blue;
    transition: 1s;
}
        </style>
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
            <div id="parent" style="background-image:url('images/san.jpg');opacity:0.9;margin-top:-10px;">
                <div id="left" style="margin:0 auto;height:400px;width:550px;border:1px solid;margin-left:200px;background-color:whitesmoke;opacity:0.9;box-shadow:5px 5px 20px gray;">
                <form action="usercode/complaincode.jsp" method="post">
                    <h2 style="text-align:center; color:blueviolet;">Complain Log</h2>
                    <table style="margin:0 auto; width:80%;">
                        <tr>
                            <td>Enter Subject</td>
                            <td>
                                <textarea name="subject" placeholder="Enter Subject Name"required style="height:100px;resize:none;"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter Complain Text</td>
                            <td>
                                <textarea name="complaintext" placeholder="Enter Complain"required style="height:150px;resize:none;"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <input type="submit" value="submit" class="B1" style="background-color:blue;color:white;"/>
                            </td>
                        </tr>
                    </table>
                </form>
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
