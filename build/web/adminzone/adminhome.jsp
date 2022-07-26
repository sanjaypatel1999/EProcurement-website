<%-- 
    Document   : index
    Created on : Aug 3, 2019, 3:44:35 PM
    Author     : Hp
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%
    if(session.getAttribute("adminid")==null || session.getAttribute("adminid")=="")
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
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
         <style>
             .G1
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
.G1:hover
{
    box-shadow: 0px 0px 15px gray;
    background-color: white;
    border:1px solid lightgrey;
    color:blue;
    transition: 1s;
}
.G
{
    height: 80px;
    width: 250px;
     background-color:wheat;
   // border-radius:30px;
    border:2px solid blueviolet;
    padding: 25px;
}

         </style>
    </head>
    <body bgcolor="gray">
        <div  id="outer">
            <div id="header">
                <div id="logo">
                    <img src="images/logo2.png" style="height: 150px; width: 150px;" />
                </div>
                <div id="banner"style="text-shadow: 0px 0px 10px black; background-image: linear-gradient(to right top, #d16ba5, #c777b9, #ba83ca, #aa8fd8, #9a9ae1, #8aa7ec, #79b3f4, #69bff8, #52cffe, #41dfff, #46eefa, #5ffbf1);">
                    E-Procurement
                </div>
            </div>      
            <div id="menu" style="box-shadow: 0px 0px 20px white;">
                <ul>
                    <li><a href="adminhome.jsp"> Home </a></li>
                    <li><a href="enquiries.jsp"> Enquiries </a></li>
                    <li><a href="complains.jsp"> Complains </a></li>
                    <li><a href="vendors.jsp"> Vendors </a></li>
                    <li><a href="uploadtenders.jsp"> Upload Tenders </a></li>
                    <li><a href="logout.jsp"> Logout </a></li>
                </ul>
            </div>
            <div id="parent"style="background-image:url('images/slider5.jpg');background-size:100% 100%;opacity:0.9;">
                <div id="main1" style="width:650px;height:270px;background-color:lightgoldenrodyellow;margin-left:140px;opacity: 0.7;margin-top: -20px;">
                <form action="admincode/notificationcode.jsp" method="post">
                    <h2 style="color:blueviolet;margin-left: 260px;font-size: 30px;">
                        Add Notification
                    </h2>
                    <table style="magin:0 auto;width:50%;margin-left: 140px;">
                        <tr>
                            <td style="font-size: 25px;color:black">Enter Notification</td>
                            <td>
                                <textarea name="notification" class="G"required></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <input type="submit" value="Add" class="G1""/>
                            </td>
                        </tr>
                    </table>
                </div>
                </form>
                <br/><br/>
                 <div id="main2" style="width:900px;resize:none;background-color:gainsboro;margin-left:25px;opacity: 0.8;">
                <table border="1" style="margin:0 auto;width:90%;margin-top:40px;box-shadow: 0px 0px 10px grey;background-color: rgba(0,0,0,0.7);color: white;">
                  
                    <tr>
                        <th>Id</th>
                        <th>Notification</th>
                        <th>Posted Date</th>
                        <th>Delete</th>
                    </tr>
                    <%
                       DbManager dm=new DbManager();
                       ResultSet rs=dm.selectQuery("select * from notification");
                       while(rs.next())
                       {
                    %>
                    <tr>
                        <td><%=rs.getString("id")%></td>
                        <td><%=rs.getString("notificationtext")%></td>
                        <td><%=rs.getString("posteddate")%></td>
                        <td>
                            <a href="admincode/deletenotification.jsp?id=<%=rs.getString("id")%>">Delete</a>
                        </td>
                    </tr>
                    <% } %>
                </table>
            </div>
            </div>
     <div id="footer">
                <div id="lfooter">
                    Copyright &copy; to E-Procurement
                </div>
                <div id="rfooter">
                    Developed by :-Sanajay Patel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="https://www.facebook.com/www.karam.in" class="fa fa-facebook-official" style="font-size:34px;color:blue"></a>
                    <a href="#" class="fa fa-internet-explorer" style="font-size:34px;color:red"></a>
                    <a href="https://twitter.com/karam_india?lang=en" class="fa fa-twitter-square" style="font-size:34px;color:red"></a>
                    <a href="https://www.youtube.com/channel/UCaqIglxwt9USY0j-7bZomjQ" class="fa fa-youtube-square" style="font-size:34px;color:red"></a>
                </div>
            </div>
        </div>
         </div>
    </body>
</html>
<% } %>
