package com.isil.test;

import com.isil.connectionDDBB.ConnectionDDBB;
import com.isil.daos.UsuarioDAO;
import com.isil.entities.Usuario;

public class TestLogin {
    public static void main(String[] args) {
        ConnectionDDBB.getInstance();
        Usuario usuario = new Usuario();

        usuario.setCorreo("sandalio@brayans.pe");
        usuario.setContrasena("1234567");

        UsuarioDAO usuarioDAO = new UsuarioDAO();
        if(usuarioDAO.login(usuario)) {
            System.out.println("Login con éxito :)");
        } else {
            System.out.println("No logeado :(");
        }
    }
}
