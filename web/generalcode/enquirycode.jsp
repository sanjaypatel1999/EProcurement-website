<%@page import="mypack.SmsSender"%>
<%@page import="mypack.DbManager"%>
<%
  String name=request.getParameter("name");
  String gender=request.getParameter("gender"); 
  String address=request.getParameter("address"); 
  String contactno=request.getParameter("contactno");
  String emailaddress=request.getParameter("emailaddress");
  String enquirytext=request.getParameter("enquirytext");
  DbManager dm=new DbManager();
  String enquirydate=dm.getDate();
  String query="insert into enquiry(name,gender,address,contactno,emailaddress,enquirytext,enquirydate) values('"+name+"','"+gender+"','"+address+"','"+contactno+"','"+emailaddress+"','"+enquirytext+"','"+enquirydate+"')";
  if(dm.nonQuery(query)==true)
  {
      SmsSender ss=new SmsSender();
      ss.sendSms(contactno, "Thanks for enquiry.We will contact you soon");
     out.print("<script>alert('Enquiry is saved');window.location.href='../index.jsp';</script>");
  }
  else
  {
      out.print("<script>alert('Enquiry is not saved');window.location.href='../index.jsp';</script>");
  }
%>