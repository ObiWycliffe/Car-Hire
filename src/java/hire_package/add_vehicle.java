/**
 * 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package hire_package;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;

/**
 *
 * @author pc
 */
@WebServlet(urlPatterns = {"/add_vehicle"})
public class add_vehicle extends HttpServlet {
    private final String UPLOAD_DIRECTORY ="C:/Users/pc/Documents/NetBeansProjects/Car_Hire/web/assets/uploads";
    String status = "",status2 = "";
    String img_names = "";
    String n = "", fname = "";
    String [] form = new String[7];

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String name = "name";
                if (name != null){
                    DatabaseConnect dbase = new DatabaseConnect();
                    Connection con = dbase.getCon();
                    String sql = "insert into vehicle_table(vehicleNo_plate,vehicle_pricing,vehicle_image,vehicle_description,town_location,status,local_location)values(?,?,?,?,?,?,?)";
                    PreparedStatement stmt = con.prepareStatement(sql);
                    out.println("hey");
                    stmt.setString(1, form[0]);
                    stmt.setString(2, form[1]);
                    stmt.setString(3, img_names);
                    stmt.setString(4, form[2]);
                    stmt.setString(5, form[3]);
                    stmt.setString(6, form[4]);
                    stmt.setString(7, form[5]);
                    
                    out.println(status2);
                    int stat = stmt.executeUpdate();
                    out.println(stat);
                    String redirectPage = "/parentPage";
                    response.sendRedirect("add_vehicle.jsp?b=ok");
                }
        } catch (Exception e){
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if(ServletFileUpload.isMultipartContent(request)){
            try{
                List<FileItem> multiparts = new ServletFileUpload(
                        new DiskFileItemFactory()).parseRequest(request);
                int x = 0, y=0;
                img_names = "";
                for(FileItem item : multiparts){
                    if(!item.isFormField()){
                        String name = new File(item.getName()).getName();
                        String ext = FilenameUtils.getExtension(new File(item.getName()).getName());
                        if (ext != ""){
                        Date d = new Date();
                        DateFormat sdf = new SimpleDateFormat("hhmmss");
                        String f = sdf.format(d);
                        String file = f+"."+ext;
                        item.write( new File(UPLOAD_DIRECTORY + File.separator + file));
                        img_names = file;
                        }
                    } else {
                        fname = (String)item.getFieldName();
                        n = (String)item.getString();
                        //status = Integer.toString(x);
                        form[y] = n;
                        y++;
                    }
                    //status = Integer.toString(x);
                    //status = d;
                    status2 = Integer.toString(y);
                }
                //status = "File Uploaded Successfully";
                //request.setAttribute("message", "File Uploaded Successfully"); 
            }  catch (Exception ex){
                //status = "File Upload Failed due to " + ex;
                //request.setAttribute("message", "File Upload Failed due to " + ex);
            }
            
        } else{
            request.setAttribute("message","Sorry this Servlet only handles file upload request");
        }
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
