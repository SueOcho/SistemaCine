package com.isil.daos;
import java.util.List;

public interface crud <T> {
    Boolean insertar(T t);
    Boolean actualizar(T t);
    T seleccionarPorId(Object id);
    List<T> seleccionarTodo();
    Boolean eliminar(Object id);
    void close();
}
