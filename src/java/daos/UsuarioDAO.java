package com.isil.daos;

import com.isil.connectionDDBB.ConnectionDDBB;
import com.isil.entities.Usuario;
import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class UsuarioDAO implements ServiceUsuario {
    private static ConnectionDDBB con;
    private static PreparedStatement pstm;
    private static ResultSet res;
    private static CallableStatement cstm;

    public UsuarioDAO() {
        con = ConnectionDDBB.getInstance();
    }

    @Override
    public Boolean insertar(Usuario usuario) {
        Boolean resultFlag = false;
        final String SQL_INSERT = "insert into usuario (nombre, apellido, correo, contrasena, tipoDocumento, numeroDocumento, idTipoUsuario, estado) values (?,?,?,?,?,?,?,?)";

        try {
            pstm = con.getConnection().prepareStatement(SQL_INSERT);

            pstm.setString(1, usuario.getNombre());
            pstm.setString(2, usuario.getApellido());
            pstm.setString(3, usuario.getCorreo());
            pstm.setString(4, usuario.getContrasena());

            pstm.setString(5, usuario.getTipoDocumento());
            pstm.setString(6, usuario.getNumeroDocumento());
            pstm.setInt(7, usuario.getIdTipoUsuario());
            pstm.setInt(8, usuario.getEstado());

            int result = pstm.executeUpdate();
            if(result > 0) {
                resultFlag = true;
            }
        } catch (Exception e) {
            System.out.println("Error al insertar el registro");
            e.printStackTrace();
        }
        finally {
            close();
        }
        return resultFlag;
    }

    @Override
    public List<Usuario> seleccionarTodo() {
        List<Usuario> usuarios = new ArrayList<>();
        final String SQL_SELECTALL = "{call usp_listarUsuarios()}";

        try {
            cstm = con.getConnection().prepareCall(SQL_SELECTALL);
            res = cstm.executeQuery();
            while(res.next()) {
                Usuario usuario = new Usuario();
                usuario.setIdUsuario(res.getInt(1));
                usuario.setNombre(res.getString("nombre"));
                usuario.setApellido(res.getString("apellido"));
                usuario.setCorreo(res.getString("correo"));
                usuario.setTipoDocumento(res.getString("tipoDocumento"));
                usuario.setNumeroDocumento(res.getString("numeroDocumento"));
                usuarios.add(usuario);
            }
        } catch (Exception e) {
            System.out.println("Error al recuperar el listado de usuarios");
            e.printStackTrace();
        }
        finally {
            close();
        }
        return usuarios;
    }

    @Override
    public Boolean actualizar(Usuario usuario) {
        Boolean resultFlag = false;
        final String SQL_UPDATE = "update usuario set nombre=?, apellido=?, correo=?, contrasena=?, numeroDocumento=? where id=?";

        try {
            pstm = con.getConnection().prepareStatement(SQL_UPDATE);
            pstm.setString(1, usuario.getNombre());
            pstm.setString(2, usuario.getApellido());
            pstm.setString(3, usuario.getCorreo());
            pstm.setString(4, usuario.getContrasena());
            pstm.setString(5, usuario.getNumeroDocumento());
            pstm.setInt(6, usuario.getIdUsuario());
            int result = pstm.executeUpdate();
            if(result > 0) {
                resultFlag = true;
            }
        } catch (Exception e) {
            System.out.println("Error al actualizar el registro");
            e.printStackTrace();
        }
        finally {
            close();
        }
        return resultFlag;
    }

    @Override
    public Boolean eliminar(Object id) {
        Boolean resultFlag = false;
        final String SQL_DELETE = "update usuario set estado=? where id=?";

        try {
            pstm = con.getConnection().prepareStatement(SQL_DELETE);
            //pstm.setString(1, usuario.setEstado(0));
            //pstm.setInt(2, usuario.getIdUsuario());
            int result = pstm.executeUpdate();
            if(result > 0) {
                resultFlag = true;
            }
        } catch (Exception e) {
            System.out.println("Error al eliminar al usuario");
            e.printStackTrace();
        }
        finally {
            close();
        }
        return resultFlag;
    }

    @Override
    public Usuario seleccionarPorId(Object id) {
        Usuario usuarioResult = new Usuario();
        final String SQL_SELECTBYID = "select * from usuario where id=?";

        try {
            pstm = con.getConnection().prepareStatement(SQL_SELECTBYID);
            pstm.setInt(1, Integer.parseInt(id.toString()));
            res = pstm.executeQuery();
            while(res.next()) {
                usuarioResult.setIdUsuario(res.getInt("idUsuario"));
                usuarioResult.setNombre(res.getString("nombre"));
                usuarioResult.setApellido(res.getString("apellido"));
                usuarioResult.setCorreo(res.getString("correo"));
                usuarioResult.setTipoDocumento(res.getString("tipoDocumento"));
                usuarioResult.setNumeroDocumento(res.getString("numeroDocumento"));
            }
        } catch (Exception e) {
            System.out.println("Error al recuperar los datos");
            e.printStackTrace();
        }
        finally {
            close();
        }
        return usuarioResult;
    }

    @Override
    public List<Usuario> seleccionarPorNombre(String nombre) {
        List<Usuario> lista = new ArrayList<>();
        final String SQL_SELECTBYNAME = "select * from usuario where nombre=?";

        try {
            pstm = con.getConnection().prepareStatement(SQL_SELECTBYNAME);
            pstm.setString(1, nombre);
            res = pstm.executeQuery();
            while(res.next()) {
                Usuario usuario = new Usuario();
                usuario.setNombre(res.getString("nombre"));
                usuario.setApellido(res.getString("apellido"));
                usuario.setCorreo(res.getString("correo"));
                usuario.setTipoDocumento(res.getString("tipoDocumento"));
                usuario.setNumeroDocumento(res.getString("numeroDocumento"));
            }
        } catch (Exception e) {
            System.out.println("Error al recuperar los datos");
            e.printStackTrace();
        }
        finally {
            close();
        }
        return lista;
    }

    @Override
    public Boolean login(Usuario usuario) {
        Boolean resultFlag = false;
        final String SQL_LOGIN = "{call usp_login(?, ?)}";

        try {
            cstm = con.getConnection().prepareCall(SQL_LOGIN);
            cstm.setString(1, usuario.getCorreo());
            cstm.setString(2, usuario.getContrasena());
            res = cstm.executeQuery();
            while(res.next()) {
                int result = res.getInt(1);
                if(result == 1) {
                    resultFlag = true;
                }
            }
        } catch (Exception e) {
            System.out.println("Error al iniciar sesion");
            e.printStackTrace();
        }
        finally {
            close();
        }
        return resultFlag;
    }

    @Override
    public void close() {
        try {
            if(res != null) {
                res.close();
            }
            if(cstm != null) {
                cstm.close();
            }
            if(con != null) {
                con.close();
            }
            System.out.println("Conexión cerrada");
        } catch (Exception e) {
            System.out.println("Error al cerrar conexión: "+e.getMessage());
        }
    }
}
