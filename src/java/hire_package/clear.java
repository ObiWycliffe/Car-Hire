/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hire_package;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author pc
 */
@WebServlet(name = "clear", urlPatterns = {"/clear"})
public class clear extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
           String clr = request.getParameter("c");
           
            if (clr != null){
                DatabaseConnect db = new DatabaseConnect();
                Connection con = db.getCon();
                Statement stmt = con.createStatement();
                Statement stmtX = con.createStatement();
                
                String vName = "";
                ResultSet rs = stmt.executeQuery("select vehicle from bookings_table where book_id = '"+clr+"';"); 
                              while( rs.next()){
                               vName = rs.getString("vehicle");
                              }
            
                
                out.println("1");
                stmt.executeUpdate("DELETE FROM bookings_table WHERE book_id = '"+clr+"'; ");
                stmtX.executeUpdate("UPDATE vehicle_table SET status = 'Available' WHERE vehicleNo_plate = '"+vName+"'; ");
                out.println("1");
                String redirectedPage = "/parentPage";
                 response.sendRedirect("booked_cars.jsp");
                 out.println("1");
            } else {
                String redirectedPage = "/parentPage";
                 response.sendRedirect("booked_cars.jsp");
            }
        }catch (Exception e){
            out.println(e);
            out.println("1");
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
