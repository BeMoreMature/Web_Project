
package mbs;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;


public class SignUpServlet extends HttpServlet {
     private Connection conn;
     private Statement st;
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException, SQLException {
        Boolean irecord=false;
        response.setContentType("text/html;charset=UTF-8");
       
        HttpSession session=request.getSession(true);
        myBean ub = new myBean();
        session.setAttribute("ub",ub);
       
        //depending on which form on index.jsp was used we login or register
        //failure returns to index.jsp, success spawns cw
        //the userbean is used to transfer information
        if(request.getParameter("log")!=null){
            String username=request.getParameter("name");
            String password=request.getParameter("password");
            ResultSet rs=null;
            try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                 String connectionURL = "jdbc:derby://localhost:1527/YUHAO_WU";
                conn = DriverManager.getConnection(connectionURL, "IS2560", "IS2560");
                
                PreparedStatement pst2 = conn.prepareStatement("SELECT max(ID) FROM DEMO");
                rs = pst2.executeQuery();
                int id=0;
                if(rs!=null && rs.next()){
                    id=rs.getInt(1);
                }
                String q1 = new String("INSERT into DEMO (ID,NAME,PASSWORD) values (?,?,?)");
                PreparedStatement pst = conn.prepareStatement(q1);
                pst.setInt(1, id+1);
                pst.setString(2,username);
                pst.setString(3,password);
                pst.execute();
//                
//                String ir = new String("INSERT INTO DEMO (ID,NAME,PASSWORD ) VALUES (123,?,?)");
//                 st = conn.createStatement();
//                 st.setString(1,username);
//                 st.setString(2,password);
//                 st.execute(ir);
                 irecord=true;
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(SignUpServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
//           if(rs.next()){
//                  if(request.getParameter("password").equals(rs.getString("password")))
//                 {
//                 ub.setStatus("LOGIN SUCCESS");
//                 ub.setName(request.getParameter("name"));
//                 ub.setId(1);
//                 RequestDispatcher rd = getServletContext().getRequestDispatcher("/Success.jsp");
//                 rd.forward(request, response);
//                 }
//                 else{
//                 ub.setStatus("LOGIN FAILURE RETRY");
//                 RequestDispatcher rd = getServletContext().getRequestDispatcher("/Failure.jsp");
//                 rd.forward(request, response);
//                 }
//           }else{
//               response.sendRedirect("index.jsp");
//           }
           if(irecord){
                 ub.setStatus("LOGIN SUCCESS");
                 ub.setName(request.getParameter("name"));
                 ub.setId(1);
                 RequestDispatcher rd = getServletContext().getRequestDispatcher("/Success.jsp");
                 rd.forward(request, response);
           }else{
               ub.setStatus("LOGIN FAILURE RETRY");
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/Failure.jsp");
                 rd.forward(request, response);
           }
            
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(SignUpServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(SignUpServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
