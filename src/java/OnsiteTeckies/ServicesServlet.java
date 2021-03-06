package OnsiteTeckies;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


@WebServlet({"/admin/ServicesServlet"})
@MultipartConfig(fileSizeThreshold=2097152, maxFileSize=10485760L, maxRequestSize=52428800L)
public class ServicesServlet
  extends HttpServlet
{
  private static final long serialVersionUID = 1L;
  private static final String SAVE_DIR = "images";
  String scat;
  String scontent;
  int S_NO;
  int i;
  InputStream ImgPath = null;
  PreparedStatement ps = null;
  



  public ServicesServlet() {}
  



  protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    HttpSession session = request.getSession(true);
    response.setContentType("text/html;charset=UTF-8");
    Connection con = Connect.makeConnection();
    
    ServletConfig config = getServletConfig();
    String context = config.getServletContext().getRealPath("/");
    String savePath = context + File.separator + "images";
    File fileSaveDir = new File(savePath);
    if (!fileSaveDir.exists()) {
      fileSaveDir.mkdir();
    }
    Part part = request.getPart("img");
    String fileName = extractFileName(part);
    part.write(savePath + File.separator + fileName);
    scat = request.getParameter("Title");
    scontent = request.getParameter("Content");
    if (scat != null) {
      try {
        System.out.println("in ProjectServlet = " + scat + "");
        String filePath = fileName;
        String SqlQuery = "insert into services (sid,scat,scontent,imgpath) values (?,?,?,?)";
        ps = con.prepareStatement(SqlQuery);
        ps.setInt(1, S_NO);
        ps.setString(2, scat);
        ps.setString(3, scontent);
        ps.setString(4, filePath);
        i = ps.executeUpdate();
        if (i > 0) {
          session.setAttribute("result", "Success!");
          response.sendRedirect("ServicesInsert.jsp");
        } else {
          session.setAttribute("result", "Error!");
          response.sendRedirect("ServicesInsert.jsp");
        }
        ps.close();
        con.close();
      } catch (Exception e) {
        e.printStackTrace();
      }
    }
  }
  
  private String extractFileName(Part part) {
    String contentDisp = part.getHeader("content-disposition");
    String[] items = contentDisp.split(";");
    for (String s : items) {
      if (s.trim().startsWith("filename")) {
        return s.substring(s.indexOf("=") + 2, s.length() - 1);
      }
    }
    return "";
  }
}


 