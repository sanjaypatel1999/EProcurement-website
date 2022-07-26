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
            <div id="menu"style="margin-top: -8px;">
                <ul>
                    <li><a href="adminhome.jsp"> Home </a></li>
                    <li><a href="enquiries.jsp"> Enquiries </a></li>
                    <li><a href="complains.jsp"> Complains </a></li>
                    <li><a href="vendors.jsp"> Vendors </a></li>
                    <li><a href="uploadtenders.jsp"> Upload Tenders </a></li>
                    <li><a href="logout.jsp"> Logout </a></li>
                </ul>
            </div>
            <div id="parent" style="margin-top: -20px;background-image:url('images/slider5.jpg');background-size:100% 100%;opacity:0.9;">
                <div id="main" style="width:950px;resize:none;margin-left:25px;">
                <h1 style="text-align:center; color:blueviolet;"> 
                    All Enquiries
                </h1>
                <table border="1" style="margin:0 auto;width:90%;box-shadow: 0px 0px 10px grey;background-color: rgba(0,0,0,0.7);color: white;">
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Gender</th>
                        <th>Address</th>
                        <th>Contact No</th>
                        <th>Email Address</th>
                        <th>Enquiry</th>
                        <th>Enquiry Date</th>
                        <th>
                            Delete
                        </th>
                        <%
                           DbManager dm=new DbManager();
                           ResultSet rs=dm.selectQuery("select * from enquiry");
                           while(rs.next())
                           {
                        %>
                    <tr>
                        <td><%=rs.getString("id")%></td>
                        <td><%=rs.getString("name")%></td>
                        <td><%=rs.getString("gender")%></td>
                        <td><%=rs.getString("address")%></td>
                        <td><%=rs.getString("contactno")%></td>
                        <td><%=rs.getString("emailaddress")%></td>
                        <td><%=rs.getString("enquirytext")%></td>
                        <td><%=rs.getString("enquirydate")%></td>
                        <td><a href="admincode/deleteenquiry.jsp?id=<%=rs.getString("id")%>">Delete</a></td>
                    </tr>
                        <% } %>
                    </tr>
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
