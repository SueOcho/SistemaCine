package com.isil.connectionDDBB;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionDDBB {
    private static ConnectionDDBB instance = null;
    private static Connection con = null;
    private static final String URL = "jdbc:sqlserver://localhost:1433;database=SistemaCine";
   // private static final String DRV = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private static final String USR = "sa";
    private static final String PSS = "123456";
    private ConnectionDDBB() {
        try {
   //         Class.forName(DRV).newInstance();
            con = DriverManager.getConnection(URL, USR, PSS);
            System.out.println("Conexión exitosa a la base de datos");
            System.out.println(""+con.toString());
        } catch (Exception e) {
            System.out.println("Error al intentar conectarse con la base de datos");
            e.printStackTrace();
        }
    }
    public synchronized static ConnectionDDBB getInstance() {
        if (instance == null) {
            instance = new ConnectionDDBB();
        }
        return instance;
    }
    public Connection getConnection() {
        return con;
    }
    public void close() {
        instance = null;
    }
}
