/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Controller.ConnectionData;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Hallow
 */
public class Sanpham implements Serializable{

    private int id;
    private String Tensp;
    private String Gia;
    private String Image;
    private String Kmai;
    private String MoTa;
    
    public String getKmai() {
        return Kmai;
    }

    public void setKmai(String Kmai) {
        this.Kmai = Kmai;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTensp() {
        return Tensp;
    }

    public void setTensp(String Tensp) {
        this.Tensp = Tensp;
    }

    public String getGia() {
        return Gia;
    }

    public void setGia(String Gia) {
        this.Gia = Gia;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String Image) {
        this.Image = Image;
    }

    public String getMoTa() {
        return MoTa;
    }

    public void setMoTa(String MoTa) {
        this.MoTa = MoTa;
    }

    public ArrayList<Sanpham> getConnectSanpham() {
        ConnectionData c = new ConnectionData();
        Connection conn = c.connectData("shop");
        String sql="Select * from Sanpham";
        ArrayList<Sanpham>arr =new ArrayList<>();
        try{
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Sanpham sp= new Sanpham();
                sp.setId(rs.getInt("Id"));
                sp.setTensp(rs.getString("Tensp"));
                sp.setGia(rs.getString("Gia"));
                sp.setKmai(rs.getString("Kmai"));
                sp.setMoTa(rs.getString("MoTa"));
                sp.setImage(rs.getString("Image"));
                arr.add(sp);
            }
            conn.close();
        }catch(Exception ae){
            ae.printStackTrace();
        }
        return arr;
    }
    public ArrayList<Sanpham> getsingle(String id) {
        ConnectionData c = new ConnectionData();
        Connection conn = c.connectData("shop");
        String sql="Select * from Sanpham where Id="+id;
        ArrayList<Sanpham>arr =new ArrayList<>();
        try{
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Sanpham sp= new Sanpham();
                sp.setId(rs.getInt("Id"));
                sp.setTensp(rs.getString("Tensp"));
                sp.setGia(rs.getString("Gia"));
                sp.setKmai(rs.getString("Kmai"));
                sp.setMoTa(rs.getString("MoTa"));
                sp.setImage(rs.getString("Image"));
                arr.add(sp);
            }
            conn.close();
        }catch(Exception ae){
            ae.printStackTrace();
        }
        return arr;
    }
    
    public ArrayList<Sanpham> getsearch(String tensp) {
        ConnectionData c = new ConnectionData();
        Connection conn = c.connectData("shop");
        String sql="Select * from Sanpham where Tensp='"+tensp+"'";
        ArrayList<Sanpham>arr =new ArrayList<>();
        try{
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Sanpham sp= new Sanpham();
                sp.setId(rs.getInt("Id"));
                sp.setTensp(rs.getString("Tensp"));
                sp.setGia(rs.getString("Gia"));
                sp.setKmai(rs.getString("Kmai"));
                sp.setMoTa(rs.getString("MoTa"));
                sp.setImage(rs.getString("Image"));
                arr.add(sp);
            }
            conn.close();
        }catch(Exception ae){
            ae.printStackTrace();
        }
        return arr;
    }
    
    public ArrayList<Sanpham> getListByPage(ArrayList<Sanpham> arr , int start, int end){
        ArrayList<Sanpham> list = new ArrayList<>();
        for(int i=start;i<end;i++){
            list.add(arr.get(i));
        }
        return list;
    }

}
