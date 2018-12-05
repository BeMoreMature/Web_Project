
package mbs;

import com.alibaba.fastjson.JSON;
import java.io.*;
import java.net.*;

import javax.servlet.*;
import javax.servlet.http.*;

import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.json.JsonArray;
import javax.json.JsonObject;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;


public class ProductServlet extends HttpServlet {
    private Connection conn;
    private Statement st;
    private ResultSet rs=null;
    /** Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        Boolean tag=false;
        ArrayList list=new ArrayList();
        response.setContentType("application/json;charset=UTF-8");
        HttpSession session=request.getSession(true);
        JSONArray jsonarray = new JSONArray();
//        prBean pb = new prBean();
//        session.setAttribute("pb",pb);
        PrintWriter out = response.getWriter();
        
         try{
              Class.forName("org.apache.derby.jdbc.ClientDriver");
            String connectionURL = "jdbc:derby://localhost:1527/YUHAO_WU";
            conn = DriverManager.getConnection(connectionURL, "IS2560", "IS2560");
            st = conn.createStatement();
            String q1 = new String("SELECT * FROM PRODUCTS,PRODUCTTYPE where PRODUCTS.TYPEID=PRODUCTTYPE.TYPEID");
            rs =  st.executeQuery(q1);
            while(rs.next()){
                JSONObject jsonobj=new JSONObject();
                jsonobj.put("ID",rs.getInt("PRODUCTID"));
                jsonobj.put("Name",rs.getString("NAME"));
                jsonobj.put("Inventory",rs.getInt("INVENTORY"));
                jsonobj.put("Price",rs.getDouble("PRICE"));
                jsonobj.put("Type",rs.getString("TYPENAME"));
                jsonarray.add(jsonobj);
            }
            tag=true;
        }        
        catch (SQLException se)
        {
            se.printStackTrace();  
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProductServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        if(tag){
     //            JSONArray jsonArray=JSONArray.fromObject(list);
//                 out.write(jsonArray.toString());
                String json= JSON.toJSONString(jsonarray);
                 out.write(json);  
                 out.flush();
                 out.close();
  
           }else{
             
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/Failure.jsp");
                 rd.forward(request, response);
           }
//        
//        out.println("<html>");
//        out.println("<head>");
//        out.println("<title>Servlet list Messages</title>");
//        out.println("</head>");
//        out.println("<body>");
//        out.println("<h1>The following Messages exist</h1>");
//        out.println("<table class='table table-striped'><tr><th>ProductName</th><th>Inventory</th><th>Price</th><th>Type</th></tr>");
//       try{
//           while(rs.next())
//           {
//             out.println("<tr><td>"+
//                 rs.getString("NAME")+
//                 "</td><td>"+rs.getString("INVENTORY")+"</td><td>"+rs.getString("PRICE")+"</td><td>"+rs.getString("TYPENAME")+"</td></tr>");
//           }
//           out.print("</table>");
//       }
//       catch(SQLException sqle)
//                 {
//            sqle.printStackTrace();  
//        }
//
//        out.println("</ol>");
//        out.println("</body>");
//        out.println("</html>");
//        out.close();
    }
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }
    
    /** Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }
    
    /** Returns a short description of the servlet.
     */
    public String getServletInfo() {
        return "Short description";
    }
    // </editor-fold>
}
