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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/style.css" rel="stylesheet"/>
    </head>
    <body bgcolor="gray">
        <div  id="outer">
            <div id="header">
                <div id="logo">
                    <img src="images/logo2.png" style="height: 150px; width: 150px;" />
                </div>
                <div id="banner" style="text-shadow: 0px 0px 10px black; background-image: linear-gradient(to right top, #d16ba5, #c777b9, #ba83ca, #aa8fd8, #9a9ae1, #8aa7ec, #79b3f4, #69bff8, #52cffe, #41dfff, #46eefa, #5ffbf1);">
                    E-Procurement
                </div>
            </div>      
            <div id="menu" style="margin-top: -10px;">
                <ul>
                    <li><a href="adminhome.jsp"> Home </a></li>
                    <li><a href="enquiries.jsp"> Enquiries </a></li>
                    <li><a href="complains.jsp"> Complains </a></li>
                    <li><a href="vendors.jsp"> Vendors </a></li>
                    <li><a href="uploadtenders.jsp"> Upload Tenders </a></li>
                    <li><a href="logout.jsp"> Logout </a></li>
                </ul>
            <div id="parent" style="margin-top: -20px;background-image: linear-gradient(to right top, #d16ba5, #5FFBF1, #86E797, #aa8fd8, #86E797, #8aa7ec, #5FFBF1, #69bff8, #5FFBF1, #41dfff, #5FFBF1, #5ffbf1);">
                <div id="main" style="width:950px;resize:none;background-color:gainsboro;margin-left:25px;opacity:0.7;">
                <h2 style="text-align:center;color:blue;">
                    View All Vendors
                </h2>
                <table border="1" style="text-align:center;width:90%;color:black;border-bottom-color:black;">
                    <tr>
                        <th>Company Name</th>
                        <th>Address</th>
                        <th>Expertise Area</th>
                        <th>Person Name</th>
                        <th>Contact No</th>
                        <th>Email Address</th>
                        <th>Tin No</th>
                        <th>Pan NO</th>
                        <th>Reg. Date</th>
                    </tr>
                    <%
                        DbManager dm=new DbManager();
                        ResultSet rs=dm.selectQuery("select * from register");
                        while(rs.next())
                        {
                    %>
                    <tr>
                        <td><%=rs.getString("companyname")%></td>
                        <td><%=rs.getString("address")%></td>
                        <td><%=rs.getString("expertisearea")%></td>
                        <td><%=rs.getString("personname")%></td>
                        <td><%=rs.getString("contactno")%></td>
                        <td><%=rs.getString("emailaddress")%></td>
                        <td><%=rs.getString("tinno")%></td>
                        <td><%=rs.getString("panno")%></td>
                        <td><%=rs.getString("regdate")%></td>
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
