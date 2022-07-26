<%-- 
    Document   : index
    Created on : Aug 3, 2019, 3:44:35 PM
    Author     : Hp
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
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
            <div id="parent"  style="background-image: linear-gradient(to right top, #d16ba5, #5FFBF1, #86E797, #aa8fd8, #86E797, #8aa7ec, #5FFBF1, #69bff8, #5FFBF1, #41dfff, #5FFBF1, #5ffbf1);">
                 <div id="left1" style="margin:0 auto;height:300px;width:550px;border:1px solid;margin-left:200px;background-color:orange;opacity:0.8;box-shadow:5px 5px 20px gray;">
                <form action="usercode/questioncode.jsp" method="post">
                    <h2 style="text-align:center;color:blue;">
                        Discussion Forum
                    </h2>
                    <table border="1"style="margin:0 auto;width:50%;">
                        <tr>
                            <td>Enter Question</td>
                            <td>
                                <textarea name="questiontext" placeholder="Enter Your Question" required style="height:100px; resize:none;"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <input type="submit" value="post-question"style="background-color:blue;color:white;"/>
                            </td>
                        </tr>
                    </table>
                    </form>
        </div>
                <br/></br>
                <div id="left2" style="margin:0 auto;resize:none;;width:550px;margin-left:200px;opacity:0.8;box-shadow:5px 5px 20px gray;">
                <table border="1" style="margin:0 auto;width:90%;box-shadow: 0px 0px 10px grey;background-color: rgba(0,0,0,0.7);color: white;">
                    <tr>
                    <h2 style="color:blueviolet;margin:0 auto;margin-left:200px;">Discussion List</h2>
                    </tr>&nbsp;&nbsp;
                    <tr>
                        <th>Question</th>
                        <th>
                            Asked By
                        </th>
                        <th>Posted Date</th>
                        <th>Post Answer</th>
                        <th>View Answer</th>
                    </tr>
                    <%
                          DbManager dm=new DbManager();
                          ResultSet rs=dm.selectQuery("select * from question");
                          while(rs.next())
                          {
                    %>
                    <tr>
                        <td><%=rs.getString("questiontext") %></td>
                        <td><%=rs.getString("askedby") %></td>
                        <td><%=rs.getString("posteddate") %></td>
                        <td>
                            <a href="postanswer.jsp?qid=<%=rs.getString("qid")%>">Post Answer</a>
                        </td>
                        <td>
                            <a href="viewanswer.jsp?qid=<%=rs.getString("qid")%>">View Answer</a>
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
                    <a href="https://www.facebook.com/www.karam.in" class="fa fa-facebook-official" style="font-size:30px;color:blue"></a>
                    <a href="#" class="fa fa-internet-explorer" style="font-size:30px;color:red"></a>
                    <a href="https://twitter.com/karam_india?lang=en" class="fa fa-twitter-square" style="font-size:30px;color:red"></a>
                    <a href="https://www.youtube.com/channel/UCaqIglxwt9USY0j-7bZomjQ" class="fa fa-youtube-square" style="font-size:30px;color:red"></a>
                </div>
            </div>
        </div>
    </body>
</html>
<% } %>

