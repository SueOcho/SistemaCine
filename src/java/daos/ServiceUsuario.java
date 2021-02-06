package com.isil.daos;
import com.isil.entities.Usuario;
import java.util.List;

public interface ServiceUsuario extends crud<Usuario> {
    List<Usuario> seleccionarPorNombre(String nombre);
    Boolean login(Usuario usuario);
}
