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
             .M
{
    height: 50px;
    width: 250px;
    background-color:wheat;
   // border-radius:30px;
    border:1px solid blueviolet;
}
.M:hover
{
    box-shadow: 0px 0px 10px gray;
}
.N
{
    height: 80px;
    width: 250px;
    background-color:wheat;
   // border-radius:30px;
    border:1px solid blueviolet;
   
}
.N:hover
{
    box-shadow: 0px 0px 10px gray;
}
.G2
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
.G2:hover
{
    box-shadow: 0px 0px 15px gray;
    background-color: white;
    border:1px solid lightgrey;
    color:blue;
    transition: 1s;
}

         </style>
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
            <div id="menu">
                <ul>
                    <li><a href="adminhome.jsp"> Home </a></li>
                    <li><a href="enquiries.jsp"> Enquiries </a></li>
                    <li><a href="complains.jsp"> Complains </a></li>
                    <li><a href="vendors.jsp"> Vendors </a></li>
                    <li><a href="uploadtenders.jsp"> Upload Tenders </a></li>
                    <li><a href="logout.jsp"> Logout </a></li>
                </ul>
            </div>
            <div id="parent" style="margin-top: -20px;background-image: linear-gradient(to right top, #d16ba5, #5FFBF1, #86E797, #aa8fd8, #86E797, #8aa7ec, #5FFBF1, #69bff8, #5FFBF1, #41dfff, #5FFBF1, #5ffbf1);">
                <div id="main1" style="width:700px;height:300px;background-color:lightgray;margin-left:140px;">
                <h2 style="text-align:center;color:blue;box-shadow: 0px 0px 10px grey;background-color: rgba(0,0,0,0.7);color: white;">
                    Upload Tenders
                </h2>
               
                <form action="../upload" method="post" enctype="multipart/form-data">
                    <table style="margin:0 auto;width:60%;">
                        <tr>
                            <td>Enter Tender Name:</td>
                            <td>
                                <input type="text" name="tendername" class="M" placeholder="Enter Tender Name" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter Description :</td>
                            <td>
                                <textarea name="description"class="N" placeholder="Enter Description" required></textarea>
                            </td>
                        </tr>
                            <td>Upload File  :</td>
                            <td>
                                <input type="file" name="file" required/>
                            </td>
                        <tr>
                            <td colspan="2" align="center">
                                <input type="submit" value="Upload Tender" class="G2"style="color:white;background-color:blue;"/> 
                            </td>    
                        </tr>
                    </table>
                     </div>
                </form>
                <br/><br/>
                <div id="main2" style="width:950px;resize:none;margin-left:25px;">
                <table style="margin:0 auto; width:90%;box-shadow: 0px 0px 10px grey;background-color: rgba(0,0,0,0.7);color: white;">
                    <tr>
                        <th>Id</th>
                        <th>Tender Name</th>
                        <th>Description</th>
                        <th>File Name</th>
                        <th>Posted Date</th>
                        <th>Download</th>
                        <th>Delete</th>
                    </tr>
                    <%
                       DbManager dm=new DbManager();
                       String query="select * from uploadtender";
                       ResultSet rs=dm.selectQuery(query);
                       while(rs.next())
                       {
                           %>
                           <tr>
                               <td><%=rs.getString("id")%></td>
                                <td><%=rs.getString("tendername")%></td>
                                 <td><%=rs.getString("description")%></td>
                                  <td><%=rs.getString("filename")%></td>
                                   <td><%=rs.getString("posteddate")%></td>
                                   <td>
                                       <a target="_blank" href="<%=request.getContextPath()+"/uploadfiles/"+rs.getString("filename")%>">Download</a>
                                   </td>
                                   <td>
                                       <a href="admincode/deltender.jsp?id=<%=rs.getString("id")%>">Delete</a>
                                   </td>
                           </tr> 
                           
                           <%
                       }
                    %>
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
