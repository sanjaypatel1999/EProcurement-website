<%@page import="mypack.DbManager"%>
<%
    String questiontext=request.getParameter("questiontext");
    String askedby=session.getAttribute("userid").toString();
    DbManager dm=new DbManager();
    String posteddate=dm.getDate();
    String query="insert into question(questiontext,askedby,posteddate) values('"+questiontext+"','"+askedby+"','"+posteddate+"')";
    if(dm.nonQuery(query)==true)
    {
        out.print("<script>alert('Question is posted');window.locaton.href='../discution.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Question is not posted');window.locaton.href='../discution.jsp';</script>");
    }
%>