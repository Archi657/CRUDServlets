/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.dao.UsuarioDAO;
import modelo.dto.UsuarioDTO;


@WebServlet(name = "MSesionCTO", urlPatterns = {"/MSesionCTO"})
public class MSesionCTO extends HttpServlet {

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
        String accion = request.getParameter("accion");
        
        switch(accion){
            case "validar":
                UsuarioDAO dao = new UsuarioDAO();
                String usuario = request.getParameter("txtUsuario");
                String clave = asegurarClave(request.getParameter("txtPss")+"palabra");
                UsuarioDTO dto = new UsuarioDTO(usuario , clave);
                dto = dao.valSesion(dto);
                if(dto!=null){
                    HttpSession session = request.getSession();
                    session.setAttribute("usActual", dto);
                    request.getRequestDispatcher("ProductoCTO?accion=listar_datos").forward(request, response);
                }else{
                    System.out.println("No valido");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
                break;
            case "salir":
                break;
        }
    }
    private String asegurarClave(String clave){
        String clave2= "";
        try{
            MessageDigest sha256 = MessageDigest.getInstance("SHA-256");  
            sha256.reset();
            sha256.update(clave.getBytes("utf8"));
            clave2 = Base64.getEncoder().encodeToString(sha256.digest());
            System.out.println("clave "+clave2);
            System.out.println("tamaño "+clave2.length());
        } catch(NoSuchAlgorithmException | UnsupportedEncodingException ex){
            System.out.println("error en cifrado " + ex.getMessage());
        }
        return clave2;
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
