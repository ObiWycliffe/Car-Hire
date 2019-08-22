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
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author pc
 */
@WebServlet(name = "Hire_Login", urlPatterns = {"/Hire_Login"})
public class Hire_Login extends HttpServlet {

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
            String user = request.getParameter("uname");
            String pass = request.getParameter("password");
            //String type = request.getParameter("type");
            out.println("12");
            DatabaseConnect db = new DatabaseConnect();
            Connection con = db.getCon();
            Statement stmt = con.createStatement();
            out.println("12");
            ResultSet rs;
            String acc = "";
            
            if (user != null){
                rs = stmt.executeQuery("select * from user_info_table where username = '"+user+"';");
                if (rs.next() == false){
                    Login_Validate.error = "No such user";
                    String redirectedPage = "/parentPage";
                    response.sendRedirect("login.jsp");
                    //out.println("login");
                } else {
                    String usr = rs.getString("username");
                    String pwd = rs.getString("password");
                    String fn = rs.getString("first_name");
                    String ln = rs.getString("last_name");
                    String id = rs.getString("user_id");
                    acc = rs.getString("account");
                    
          
                    if (pass.equals(pwd) ){
                        Login_Validate.error = "";
                        Login_Validate.login = true;
                        Login_Validate.user_name = usr;
                        Login_Validate.fname = fn;
                        Login_Validate.lname = ln;
                        Login_Validate.userId = id;
                        if(acc.equals("admin")){
                            Login_Validate.user_type = "admin";
                            String redirectedPage = "/parentPage";
                            response.sendRedirect("admin_index.jsp");
                        } else {
                            Login_Validate.user_type = "user";
                            String redirectedPage = "/parentPage";
                            response.sendRedirect("index.jsp");
                        }
                        //out.println("true");
                    } else {
                        Login_Validate.error = "Wrong Username or Password";
                        String redirectedPage = "/parentPage";
                        response.sendRedirect("login.jsp");
                    }
                }
            }
        }catch (SQLException ex) {
            //Logger.getLogger(Hire_Login.class.getName()).log(Level.SEVERE, null, ex);
            out.println("qwe");
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
