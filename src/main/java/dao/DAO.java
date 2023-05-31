package dao;

import model.*;

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

    public List<product>getAllProduct(){
        List<product> list = new ArrayList<>();
        String query="SELECT * FROM product;";
        try{
            conn =new ConnectDB().getConnection();
            ps =conn.prepareStatement(query);
            rs= ps.executeQuery();
            while(rs.next()){
                list.add(new product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5)
                ));
            }
            return list;
        }
        catch (Exception e){
            System.out.println("error");
        }
        return null;
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
    public Account signup(String username,String name,String email,String password){
        String query = "insert into hanh_dbb.account(username,password,name,email,isCustomer,isSell,isAdmin) values (?,?,?,?,1,0,0)";

        try {
            conn = new ConnectDB().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, name);
            ps.setString(4, email);

            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
    public Account checkAccountExist(String user) {
        String query = "select * from account where username=?";

        try {
            conn = new ConnectDB().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
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
    /*public String findByUserName(String username) {
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
    }*/
    public List<Cart> getCartProducts(ArrayList<Cart> cartList) {
        List<Cart> book = new ArrayList<>();
        conn = new ConnectDB().getConnection();
        try {
            if (cartList.size() > 0) {
                for (Cart item : cartList) {
                    String query = "select * from product where id=?";
                    ps = conn.prepareStatement(query);
                    ps.setInt(1, item.getId());
                    rs = ps.executeQuery();
                    while (rs.next()) {
                        Cart row = new Cart();
                        row.setId(rs.getInt("id"));
                        row.setName(rs.getString("name"));
                        row.setPrice(rs.getInt("price")*item.getQuantity());
                        row.setQuantity(item.getQuantity());
                        book.add(row);
                    }

                }
            }

        } catch (Exception e) {

        }
        return book;
    }
    public static void main(String[] args) {
        DAO dao=new DAO();
        /*List<product> list= dao.getAllProduct();
        for (product o:list)
            System.out.println(o);*/

        /*Account a = dao.signup("test","1234","test","test3@gmail.com");
        System.out.println(a);*/
    }
}
