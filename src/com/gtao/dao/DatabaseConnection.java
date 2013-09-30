package com.gtao.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created with IntelliJ IDEA.
 * User: HP
 * Date: 13-9-6
 * Time: ÏÂÎç12:37
 * To change this template use File | Settings | File Templates.
 */
public class DatabaseConnection {
    public static final String DBDRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    public static final String DBUSER = "sa";
    public static final String DBPASS = "dzb_01";
    public static final String DBURL = "jdbc:sqlserver://10.1.0.131:1433;DatabaseName=gtaonew";
    private Connection conn = null;

    public DatabaseConnection(){
        try{
            Class.forName(DBDRIVER);
            this.conn = DriverManager.getConnection(DBURL,DBUSER,DBPASS);
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }

    public Connection getConnection(){
        return this.conn;
    }

    public void close(){
        if(this.conn!=null){
            try{
                this.conn.close();
            }
            catch (SQLException e){
                e.printStackTrace();
            }
        }
    }
}
