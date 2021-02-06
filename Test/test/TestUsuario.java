package com.isil.test;

import com.isil.connectionDDBB.ConnectionDDBB;
import com.isil.daos.UsuarioDAO;
import com.isil.entities.Usuario;

public class TestUsuario {
    public static void main(String[] args) {
        ConnectionDDBB.getInstance();
        Usuario usuario = new Usuario();

        usuario.setNombre("Sandalio");
        usuario.setApellido("Meltronco");
        usuario.setCorreo("sandalio@brayans.pe");
        usuario.setContrasena("1234567");

        usuario.setTipoDocumento("1");
        usuario.setNumeroDocumento("44444444");
        usuario.setIdTipoUsuario(3);
        usuario.setEstado(1);

        UsuarioDAO usuarioDAO = new UsuarioDAO();
        if(usuarioDAO.insertar(usuario)) {
            System.out.println("Se insertaron correctamente los datos :)");
        } else {
            System.out.println("No se insertaron los datos :(");
        }
    }
}
