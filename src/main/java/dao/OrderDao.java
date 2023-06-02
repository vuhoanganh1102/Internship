package dao;

import context.ConnectDB;

import java.sql.*;
import java.util.Map;

import model.*;
public class OrderDao {
    Connection conn = null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    public boolean insertOrder(Order model) {
        boolean result = false;

        try {
            conn = new ConnectDB().getConnection();
            String query = "insert into hanh_dbb.orders (p_id, u_id, o_quantity, o_date, bill_code) values(?,?,?,?,?)";
            ps = conn.prepareStatement(query);
            ps.setInt(1, model.getId());
            ps.setInt(2, model.getUid());
            ps.setInt(3, model.getQuantity());
            ps.setString(4, model.getDate());
            ps.setString(5, model.getBill_code());
            ps.executeUpdate();
            result = true;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return result;
    }
    public  boolean updateQuantity(int id,int daban, int bandau) {
        boolean result = false;
        try {
            conn = new ConnectDB().getConnection();
            String query = "update hanh_dbb.product set number= ? where id=?";
            ps = conn.prepareStatement(query);
            ps.setInt(1, bandau - daban);
            ps.setInt(2, id);

            ps.executeUpdate();
            result = true;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return result;
    }


}
