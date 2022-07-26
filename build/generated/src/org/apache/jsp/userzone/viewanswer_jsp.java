package org.apache.jsp.userzone;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import mypack.DbManager;

public final class viewanswer_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");

    if(session.getAttribute("userid")==null || session.getAttribute("userid")=="")
    {
      response.sendRedirect("../login.jsp");
    }
    else
    {

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>EProcurement</title>\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\"/>\n");
      out.write("    </head>\n");
      out.write("    <body bgcolor=\"gray\">\n");
      out.write("        <div  id=\"outer\">\n");
      out.write("            <div id=\"header\">\n");
      out.write("                <div id=\"logo\">\n");
      out.write("                    <img src=\"images/logo.png\" />\n");
      out.write("                </div>\n");
      out.write("                <div id=\"banner\">\n");
      out.write("                    E-Procurement\n");
      out.write("                </div>\n");
      out.write("            </div>      \n");
      out.write("            <div id=\"menu\">\n");
      out.write("                <ul>\n");
      out.write("                    <li><a href=\"userhome.jsp\"> Home </a></li>\n");
      out.write("                    <li><a href=\"tender.jsp\"> Live Tenders </a></li>\n");
      out.write("                    <li><a href=\"discussion.jsp\"> Discussion </a></li>\n");
      out.write("                    <li><a href=\"complain.jsp\"> Complain </a></li>\n");
      out.write("                    <li><a href=\"changepassword.jsp\"> Change Pwd. </a></li>\n");
      out.write("                    <li><a href=\"logout.jsp\"> Logout </a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"parent\" style=\"background-image:url('images/3.jpg');opacity:0.9;margin-top:-10px;\">\n");
      out.write("                <div id=\"left\" style=\"margin:0 auto;height:400px;width:550px;border:1px solid;margin-left:200px;background-color:orange;opacity:0.6;box-shadow:5px 5px 20px gray;\">\n");
      out.write("                <h2 style=\"text-align:center; color:blue;\">Discussion Forum</h2>\n");
      out.write("                <table border=\"1\" style=\"margin:0 auto;width:90%;\">\n");
      out.write("                    <tr>\n");
      out.write("                        <th>answer</th>\n");
      out.write("                        <th>answered By</th>\n");
      out.write("                        <th>posted Date</th>\n");
      out.write("                    </tr>\n");
      out.write("                    ");

                        String qid=request.getParameter("qid");
                        DbManager dm=new DbManager();
                        ResultSet rs=dm.selectQuery("select * from answer where qid='"+qid+"'");
                        while(rs.next())
                        {
                    
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <td>");
      out.print(rs.getString("answertext"));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(rs.getString("answeredby"));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(rs.getString("posteddate"));
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    ");
 } 
      out.write("\n");
      out.write("                </table>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"footer\">\n");
      out.write("                <div id=\"lfooter\">\n");
      out.write("                    Copyright &copy; to E-Procurement\n");
      out.write("                </div>\n");
      out.write("                <div id=\"rfooter\">\n");
      out.write("                    Developed by :-Sanajay Patel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                    <a href=\"https://www.facebook.com/www.karam.in\" class=\"fa fa-facebook-official\" style=\"font-size:30px;color:blue\"></a>\n");
      out.write("                    <a href=\"#\" class=\"fa fa-internet-explorer\" style=\"font-size:30px;color:red\"></a>\n");
      out.write("                    <a href=\"https://twitter.com/karam_india?lang=en\" class=\"fa fa-twitter-square\" style=\"font-size:30px;color:red\"></a>\n");
      out.write("                    <a href=\"https://www.youtube.com/channel/UCaqIglxwt9USY0j-7bZomjQ\" class=\"fa fa-youtube-square\" style=\"font-size:30px;color:red\"></a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
 } 
      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
