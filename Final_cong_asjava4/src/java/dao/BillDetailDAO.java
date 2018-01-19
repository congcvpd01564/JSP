package dao;

import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.BillDetail;

public class BillDetailDAO {

    /*public void insertBillDetail(BillDetail bd) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "INSERT INTO bill_detail VALUES(?,?,?,?,?)";
        PreparedStatement ps = connection.prepareCall(sql);
        ps.setLong(1, bd.getBillDetailID());
        ps.setLong(2, bd.getBillID());
        ps.setLong(3, bd.getProductID());
        ps.setDouble(4, bd.getPrice());
        ps.setInt(5, bd.getQuantity());
        ps.executeUpdate();
    }*/
    public void insertBillDetail(BillDetail bd) {
        Connection conn = DBConnect.getConnection();
        String sql = "INSERT INTO bill_detail VALUES(?,?,?,?,?)";
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setLong(1, bd.getBillDetailID());
            pst.setLong(2, bd.getBillID());
            pst.setLong(3, bd.getProductID());
            pst.setDouble(4, bd.getPrice());
            pst.setInt(5, bd.getQuantity());
            pst.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) throws SQLException {
        new BillDetailDAO().insertBillDetail(new BillDetail(0, 0, 0, 0, 0));
    }
}
