<%@page import="mypack.DbManager"%>
<%
    String id=request.getParameter("id");
    DbManager dm=new DbManager();
    String query="delete from uploadtender where id='"+id+"'";
    if(dm.nonQuery(query)==true)
    {
        out.print("<script>alert('Tender is deleted');window.location,href='../uploadtenders.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Tender is not deleted');window.location,href='../uploadtenders.jsp';</script>");
    }
%>