package com.integradorcac.oradorapp.managerDB;

import java.sql.Connection;
import java.sql.DriverManager;

public class ManagerDB {
    
    public static Connection getConnection() throws Exception{
        Connection conn;
        String host = "localhost";
        String port = "3306";
        String user = "root";
        String pass = "root";
        String database = "integrador_cac";
        String timeZone = "?serverTimezone=UTC";
        String url ="jdbc:mysql://"+host+":"+port+"/"+database+timeZone;
        String driveDB = "com.mysql.cj.jdbc.Driver";
        
        try {
            Class.forName(driveDB);
            conn = DriverManager.getConnection(url, user, pass);
            System.out.println("*********************");
            System.out.println("Conexión exitosa con Database");
        }catch(Exception e){
            System.out.println("*********************");
            System.out.println("Se detecto un error en class ManagerDB");
            e.getLocalizedMessage();
            e.printStackTrace();
            System.out.println("*********************");
            conn = null;
        }
        return conn;
        
    }
    
}
