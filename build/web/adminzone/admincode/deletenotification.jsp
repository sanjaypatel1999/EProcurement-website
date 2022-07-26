<%@page import="mypack.DbManager"%>
<%
    String id=request.getParameter("id");
    DbManager dm=new DbManager();
    String query="delete from notification where id='"+id+"'";
    if(dm.nonQuery(query)==true)
    {
        out.print("<script>alert('Notification is deleted');window.location.href='../adminhome.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Notification is not deleted');window.location.href='../adminhome.jsp';</script>");
    }
%>