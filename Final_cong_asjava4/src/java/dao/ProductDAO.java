package dao;

import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.Product;

public class ProductDAO {

    // get danh sách sản phẩm dựa vào mã danh mục
    public ArrayList<Product> getListProductByCategory(long category_id) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM product WHERE category_id = '" + category_id + "'";
        PreparedStatement ps = connection.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getLong("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getDouble("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
    }

    // hiển thị chi tiết sản phẩm theo masp
    public Product getProduct(long productID) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM product WHERE product_id = '" + productID + "'";
        PreparedStatement ps = connection.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Product product = new Product();
        while (rs.next()) {
            product.setProductID(rs.getLong("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getDouble("product_price"));
            product.setProductDescription(rs.getString("product_description"));
        }
        return product;
    }

    // lấy danh sách sản phẩm theo ma danh muc
    public ArrayList<Product> getListProductByNav(long categoryID, int firstResult, int maxResult) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM product WHERE category_id = '" + categoryID + "' limit ?,?";
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1, firstResult);
        ps.setInt(2, maxResult);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getLong("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getDouble("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
    }

    // tính tổng sản phẩm
    public int countProductByCategory(long categoryID) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT count(product_id) FROM product WHERE category_id = '" + categoryID + "'";
        PreparedStatement ps = connection.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        int count = 0;
        while (rs.next()) {
            count = rs.getInt(1);
        }
        return count;
    }

    //phan quan tri san pham
    //phuong thuc them mot san pham
    public boolean insertProduct(Product product) {
        try {
            Connection connection = DBConnect.getConnection();
            String sql = "INSERT INTO product VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setLong(1, product.getProductID());
            pst.setLong(2, product.getCategoryID());
            pst.setString(3, product.getProductName());
            pst.setString(4, product.getProductImage());
            pst.setDouble(5, product.getProductPrice());
            pst.setString(6, product.getProductDescription());
            pst.executeUpdate();
            return true;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    //phuong thuc cap nhat san pham
    public boolean updateProduct(Product product) {
        try {
            Connection connection = DBConnect.getConnection();
            String sql = "Update product SET category_id = ?, product_name = ?, "
                    + "product_image = ?, product_price = ?, product_description = ? WHERE product_id = ?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setLong(1, product.getCategoryID());
            pst.setString(2, product.getProductName());
            pst.setString(3, product.getProductImage());
            pst.setDouble(4, product.getProductPrice());
            pst.setString(5, product.getProductDescription());
            pst.setLong(6, product.getProductID());
            pst.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    //phuong thuc xoa mot san pham
    public boolean deleteProduct(long productId) {
        try {
            Connection connection = DBConnect.getConnection();
            String sql = "DELETE  FROM product WHERE product_id = ?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setLong(1, productId);
            pst.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    //phuong thuc lay toan bo danh sach san pham
    public List<Product> getAllProducts() throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM product";
        Statement st = connection.createStatement();
        ResultSet rs = st.executeQuery(sql);
        List<Product> products = new ArrayList<Product>();

        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getLong("product_id"));
            product.setCategoryID(rs.getLong("category_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getDouble("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            products.add(product);
        }
        return products;
    }

    public static void main(String[] args) throws SQLException {
        ProductDAO dao = new ProductDAO();
//        for (Product p : dao.getListProductByCategory(3)) {
//            System.out.println(p.getProductID() + " - " + p.getProductName());
//        }
        //System.out.println(dao.deleteProduct(16));
        //System.out.println(dao.countProductByCategory(1));
        System.out.println(dao.updateProduct(new Product(1, 2, "HP", "hj", 0, "abc")));
        //System.out.println(dao.insertProduct(12,2,"Macbook Pro MF839ZP/A","images/mac1.png",500,"Cảm ứng:	Không, Đồ họa:	Intel HD Graphics 6000, Share (Dùng chung bộ nhớ với RAM), Đĩa quang:	Không, Webcam:	1.3 MP, Chất liệu vỏ:	Vỏ kim loại nguyên khối, Cổng giao tiếp:	MagSafe 2, 2 x USB 3.0, Thunderbolt 2"));
    }
}
