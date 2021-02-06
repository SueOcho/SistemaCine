package com.isil.controllers;

import com.isil.daos.UsuarioDAO;
import com.isil.entities.Usuario;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

//@WebServlet(name = "/UsuarioController", urlPatterns = {"/UsuarioController"})
public class UsuarioController extends HttpServlet {

    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        String processing = request.getParameter("processing");
//
//        switch (processing) {
//            case "registro":
//                registrar(request, response);
//                break;
//            case "login":
//                login(request, response);
//                break;
//            case "listarUsuarios":
//                listarTodo(request, response);
//            // admin metodos
//            case "loginAdmin":
//                loginAdmin(request, response);
//            case "detalleUsuario":
//                detalleUsuario(request, response);
//        }
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



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    private void registrar(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//        String nombre          = request.getParameter("nombre");
//        String apellido        = request.getParameter("apellido");
//        String correo          = request.getParameter("correo");
//        String contrasena      = request.getParameter("contrasena");
//        String recontrasena    = request.getParameter("recontrasena");
//        String tipoDocumento   = request.getParameter("tipoDocumento");
//        String numeroDocumento = request.getParameter("numeroDocumento");
//
//        if(
//            nombre.trim().isEmpty() ||
//            apellido.trim().isEmpty() ||
//            numeroDocumento.trim().isEmpty() ||
//            correo.trim().isEmpty() ||
//            contrasena.trim().isEmpty() ||
//            recontrasena.trim().isEmpty() ||
//            contrasena.trim() != recontrasena.trim()
//        ) {
//            request.getRequestDispatcher(request.getContextPath() + "/registro/error.jsp").forward(request, response);
//        } else {
//            Usuario usuario = new Usuario();
//            usuario.setNombre(nombre);
//            usuario.setApellido(apellido);
//            usuario.setTipoDocumento(tipoDocumento);
//            usuario.setNumeroDocumento(numeroDocumento);
//
//            usuario.setIdTipoUsuario(3);
//            usuario.setCorreo(correo);
//            usuario.setContrasena(contrasena);
//            usuario.setEstado(1);
//            UsuarioDAO usuarioDAO = new UsuarioDAO();
//            if(usuarioDAO.insertar(usuario)) {
//                System.out.println("1");
//                request.getRequestDispatcher(request.getContextPath() + "/registro/mensajeAnotado.jsp").forward(request, response);
//            } else {
//                System.out.println("2");
//                request.getRequestDispatcher(request.getContextPath() + "/registro/error.jsp").forward(request, response);
//            }
//        }
    }

    private void listarTodo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UsuarioDAO usuarioDAO = new UsuarioDAO();
        List<Usuario> usuarios = new ArrayList<>();
        usuarios = usuarioDAO.seleccionarTodo();
        request.getSession().setAttribute("usuarios", usuarios);
        request.getRequestDispatcher("admin/usuarios/index.jsp").forward(request, response);
    }

    private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String correo     = request.getParameter("correo");
        String contrasena = request.getParameter("contrasena");

        if(correo.trim().isEmpty() || contrasena.trim().isEmpty()) {
            // error
            request.getRequestDispatcher(request.getContextPath() + "/login/error.jsp").forward(request, response);
        } else {
            Usuario usuario = new Usuario();
            usuario.setCorreo(correo);
            usuario.setContrasena(contrasena);
            UsuarioDAO usuarioDAO = new UsuarioDAO();
            if(usuarioDAO.login(usuario)) {
                request.getRequestDispatcher(request.getContextPath() + "/index.jsp").forward(request, response);
            } else {
                // error
                request.getRequestDispatcher(request.getContextPath() + "/login/error.jsp").forward(request, response);
            }
        }
    }

    private void loginAdmin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String correo     = request.getParameter("correo");
        String contrasena = request.getParameter("contrasena");

        if(correo.trim().isEmpty() || contrasena.trim().isEmpty()) {
            request.getRequestDispatcher(request.getContextPath() + "/login/error.jsp").forward(request, response);
        } else {
            Usuario usuario = new Usuario();
            usuario.setCorreo(correo);
            usuario.setContrasena(contrasena);
            UsuarioDAO usuarioDAO = new UsuarioDAO();
            if(usuarioDAO.login(usuario)) {
                request.getRequestDispatcher(request.getContextPath() + "/admin/error404/index.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher(request.getContextPath() + "/admin/usuarios/index.jsp").forward(request, response);
            }
        }
    }

    private void detalleUsuario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idUsuario = request.getParameter("idUsuario");
        UsuarioDAO usuarioDAO = new UsuarioDAO();
        Usuario usuario = usuarioDAO.seleccionarPorId(Integer.parseInt(idUsuario));
        request.getSession().setAttribute("usuario", usuario);
        request.getRequestDispatcher("admin/usuario/index.jsp").forward(request, response);
    }
}
