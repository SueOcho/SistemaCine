/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import com.isil.daos.UsuarioDAO;
import com.isil.entities.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author JosueFlores
 */
public class Ayuda extends HttpServlet {

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
System.out.println("holaholahoalmaquinola");
        String nombre          = request.getParameter("nombre");
        String apellido        = request.getParameter("apellido");
        String correo          = request.getParameter("correo");
        String contrasena      = request.getParameter("contrasena");
        String recontrasena    = request.getParameter("recontrasena");
        String tipoDocumento   = request.getParameter("tipoDocumento");
        String numeroDocumento = request.getParameter("numeroDocumento");

        if(
            nombre.trim().isEmpty() ||
            apellido.trim().isEmpty() ||
            numeroDocumento.trim().isEmpty() ||
            correo.trim().isEmpty() ||
            contrasena.trim().isEmpty() ||
            recontrasena.trim().isEmpty() ||
            contrasena.trim() != recontrasena.trim()
        ) {
           // request.getRequestDispatcher("registro/error.jsp").forward(request, response);
            System.out.println("xd");
        } else {
            Usuario usuario = new Usuario();
            usuario.setNombre(nombre);
            usuario.setApellido(apellido);
            usuario.setTipoDocumento(tipoDocumento);
            usuario.setNumeroDocumento(numeroDocumento);

            usuario.setIdTipoUsuario(3);
            usuario.setCorreo(correo);
            usuario.setContrasena(contrasena);
            usuario.setEstado(1);
            UsuarioDAO usuarioDAO = new UsuarioDAO();
            if(usuarioDAO.insertar(usuario)) {
                System.out.println("1");
                request.getRequestDispatcher(request.getContextPath() + "/registro/mensajeAnotado.jsp").forward(request, response);
            } else {
                System.out.println("2");
                request.getRequestDispatcher(request.getContextPath() + "/registro/error.jsp").forward(request, response);
            }
        }
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
