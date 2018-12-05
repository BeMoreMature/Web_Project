/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mbs;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Yuhao Wu
 */
public class PurchaseServlet extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession(true);
        myBean ub = new myBean();
        session.setAttribute("ub",ub);
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PurchaseServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PurchaseServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
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
     * 
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        String ProductID="";
        int Quantity=0;
//        HttpSession session=request.getSession(true);
//        myBean ub = new myBean();
//        session.setAttribute("ub",ub);
        
        try{    //get more formData, this part is necessary
            DiskFileItemFactory factory = new DiskFileItemFactory();   
            ServletFileUpload upload = new ServletFileUpload(factory);   
            upload.setHeaderEncoding("UTF-8");  
            List items = upload.parseRequest(request);  
            Map params = new HashMap();   
            for(Object object:items){  
                FileItem fileItem = (FileItem) object;   
                if (fileItem.isFormField()) {   
                    params.put(fileItem.getFieldName(), fileItem.getString("utf-8"));
                }  
            }
            
            ProductID=(String)params.get("ProductID");
            Quantity=Integer.parseInt((String)(params.get("Quantity")));
        }catch (FileUploadException e1) {
            e1.printStackTrace();
        }
            
            ResultSet rs=null;
            try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                 String connectionURL = "jdbc:derby://localhost:1527/YUHAO_WU";
                Connection conn = DriverManager.getConnection(connectionURL, "IS2560", "IS2560");
                
                PreparedStatement pst2 = conn.prepareStatement("SELECT INVENTORY FROM PRODUCTS where PRODUCTID= ?");
                pst2.setString(1,ProductID);
                rs = pst2.executeQuery();
                int inventory=0;
                if(rs!=null && rs.next()){
                    inventory=rs.getInt(1);
                };
                if((inventory-Quantity)>=0){
                    String q1 = new String("UPDATE PRODUCTS set INVENTORY=? where PRODUCTID= ?");
                    PreparedStatement pst = conn.prepareStatement(q1);

                    pst.setInt(1,(inventory-Quantity));
                    pst.setString(2,ProductID);
                    pst.executeUpdate();
                }
                else{
//                    ub.setStatus("LOGIN FAILURE RETRY");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/product.jsp");
                    rd.forward(request, response);
//                       response.sendRedirect("product.html");
                }
                
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(PurchaseServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
            Logger.getLogger(PurchaseServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
