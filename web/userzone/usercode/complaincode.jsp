<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%
    String subject=request.getParameter("subject");
    String complaintext=request.getParameter("complaintext");
    String emailaddress=session.getAttribute("userid").toString();
    DbManager dm=new DbManager();
    String query="select personname from register where emailaddress='"+emailaddress+"'";
    ResultSet rs=dm.selectQuery(query);
    rs.next();
    String name=rs.getString("personname");
    String complaindate=dm.getDate();
    query="insert into complain(name,emailaddress,subject,complaintext,complaindate) values('"+name+"','"+emailaddress+"','"+subject+"','"+complaintext+"','"+complaindate+"')";
    if(dm.nonQuery(query)==true)
    {
        out.print("<script>alert('Complain is logged');window.href='../userhome.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Complain is not logged');window.href='../userhome.jsp';</script>");
    }
%>