package servlets;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import conexiones.miConexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Luis
 */
@WebServlet(urlPatterns = {"/mostrarPorSintoma"})
public class mostrarPorSintoma extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            miConexion consulta = new miConexion();
            ResultSet rs;
            rs = consulta.mostrar_datos(request.getParameter("sintomas"));
            
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            this.getServletContext().getRequestDispatcher("/includes/head.jsp").include(request, response);
            out.println("<body>");
            this.getServletContext().getRequestDispatcher("/includes/header.jsp").include(request, response);
            
            
            this.getServletContext().getRequestDispatcher("/includes/productos_open.jsp").include(request, response);
            
            
            this.getServletContext().getRequestDispatcher("/includes/label_resultados.jsp").include(request, response);
            out.println("<div class=\"row\">");
            
            while(rs.next())
            {
                /*
                out.println("<h4>Id de la medicina: "+rs.getInt("idmedic")+"</h4>");
                out.println("<h4>Nombre de la medicina: "+rs.getString("nombre")+"</h4>");
                out.println("<h4>Marca de la medicina: "+rs.getString("marca")+"</h4>");
                out.println("<h4>Síntoma: "+rs.getString("sintomas")+" </h4>");
                out.println("<h4>Stock: "+rs.getInt("stock")+"</h4>");
                out.println("<h4>descripcion de la medicina: "+rs.getString("descripcion")+" </h4>");
                out.println("<h4>Precio de le medicina: "+rs.getDouble("precio")+"</h4>");
                out.println("<h4>-----------------------------------------\n</h4>");
                */
                this.getCardTemplate(out, rs);
            }
            
            out.println("</div");
            out.println("<br />");
            out.println("<br />");
            
            
            
            this.getServletContext().getRequestDispatcher("/includes/productos_close.jsp").include(request, response);
            this.getServletContext().getRequestDispatcher("/includes/footer.jsp").include(request, response);;
            this.getServletContext().getRequestDispatcher("/includes/js_libs.jsp").include(request, response);;
            out.println("</body>");
            out.println("</html>");
        }
    }
    
    private void getCardTemplate(PrintWriter out, ResultSet rs) throws SQLException{
        out.println("<div class=\"col-lg-4 col-sm-6 mb-30\">");
        out.println("  <div class=\"d-block relative bg-right-center bg-no-repeat bg-white border box-shadow p-5 text-decoration-none\" style=\"background-image: url(img/med-nat-bg.jpg);\">");
        out.println("    <div class=\"precio\">s/ " + rs.getString("precio") + "</div>");
        out.println("    <h5 class=\"h5\">" + rs.getString("nombre") + "<br /><small>[Stock: "+ rs.getString("stock") +"]</small></h5>");
        out.println("    <h6 class=\"h6\">Laboratorio: <strong>"+ rs.getString("marca") +"</strong></h6>");
        out.println("    <p class=\"text-muted pb-2\">"+ rs.getString("descripcion") +"</p>");
        
        out.println("    <h6 class=\"h6\">Síntomas</h6>");
        out.println("    <p class=\"text-muted pb-2\">"+ rs.getString("sintomas") +"</p>");
        out.println("  </div>");
        out.println("</div>");
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(mostrarPorSintoma.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(mostrarPorSintoma.class.getName()).log(Level.SEVERE, null, ex);
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
