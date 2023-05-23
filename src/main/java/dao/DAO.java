package dao;

import model.Account;
import model.product;
import context.ConnectDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class DAO {
    Connection conn = null;
    PreparedStatement ps=null;
    ResultSet rs=null;

    public List<product> getAllProduct(){
        List<product> list =new ArrayList<>();
        String query="SELECT * FROM hanh_dbb.product;";
        try{
            conn =new ConnectDB().getConnection();
            ps =conn.prepareStatement(query);
            rs= ps.executeQuery();
            while(rs.next()){
                list.add(new product(rs.getInt(1),rs.getString(2)));
            }
        }
        catch (Exception e){

        }
        return list;
    }
    public Account login(String user, String pass) {
        String query = "select * from account where username=? and password=?";

        try {
            conn = new ConnectDB().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getInt(8)
                );
            }
        } catch (Exception e) {
            System.out.println(e);
        }

        return null;
    }
    /*public Account signup(String name,String usename, String email,String password){
        String query = "insert into hanh_dbb.Account()";

        try {
            conn = new ConnectDB().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getInt(8)
                );
            }
        } catch (Exception e) {
            System.out.println(e);
        }

        return null;
    }*/

    public String findByUserName(String username) {
        String query = "select name from hanh_dbb.account where username = ?";
        try {
            conn = ConnectDB.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            if (rs.next()) {
                String name = rs.getString("name");
                return name;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public static void main(String[] args) {
        DAO dao=new DAO();
        /*List<Product> list= dao.getAllProduct();
        for (product o:list)
            System.out.println(o);*/

        Account a = dao.login("Admin1","1234");
        System.out.println(a);
    }
}
