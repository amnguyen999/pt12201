/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Hallow
 */
public class ConnectionData {

    Connection con;

    public Connection getCon() {
        return con;
    }

    public void setCon(Connection con) {
        this.con = con;
    }

    public Connection connectData(String dataname) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=" + dataname;
            con = DriverManager.getConnection(url, "sa", "123");
        } catch (Exception e) {

        }
        return con;
    }
    
    public boolean checkLogin(String username, String password) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=shop;instanceName=SQL2005";
            con = DriverManager.getConnection(url, "sa", "123");
            String sql = "Select * from [user] where Id=? and Pass=?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            boolean result = rs.next();
            rs.close();
            stm.close();
            con.close();
            if (result) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

     public boolean insert(String Tensp, String Gia, String Kmai, String Mota, String Image ) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=shop;instanceName=SQL2005";
            con = DriverManager.getConnection(url, "sa", "123");
            String sql = "Insert into [Sanpham](Tensp,Gia,Kmai,Mota,Image)" + "Values(?,?,?,?,?)";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, Tensp);
            stm.setString(2, Gia);
            stm.setString(3, Kmai);
            stm.setString(4, Mota);
            stm.setString(5, Image);
            int result = stm.executeUpdate();
            stm.close();
            con.close();
            if (result > 0) {
                return true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
     public boolean delete( String Tensp,String Id) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=shop;instanceName=SQL2005";
            con = DriverManager.getConnection(url, "sa", "123");
            String sql = "Delete from [Sanpham] where  Tensp=? and Id=?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, Tensp);
            stm.setString(2, Id);
            int result = stm.executeUpdate();
            stm.close();
            con.close();
            if (result > 0) {
                return true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    boolean edit(String id,String tensp,String gia,String kmai,String mota,String image) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=shop;instanceName=SQL2005";
            con = DriverManager.getConnection(url, "sa", "123");
            String sql = "Update Sanpham Set Tensp=?,Gia=?,Kmai=?,Mota=?,Image=?  Where Id=?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, tensp);
            stm.setString(2, gia);
            stm.setString(3, kmai);
            stm.setString(4, mota);
            stm.setString(5, image);
            stm.setString(6, id);
            int result = stm.executeUpdate();
            stm.close();
            con.close();
            if (result > 0) {
                return true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    boolean search(String tensp) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=shop;instanceName=SQL2005";
            con = DriverManager.getConnection(url, "sa", "123");
            String sql = "Select * from Sanpham where Tensp=?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, tensp);
            ResultSet rs = stm.executeQuery();
            boolean result = rs.next();
            rs.close();
            stm.close();
            con.close();
            if (result) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    
}
