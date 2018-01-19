package controller;

import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Product;

/**
 *
 * @author CONGCAO
 */
public class ManagerProductServlet extends HttpServlet {

    ProductDAO productDAO = new ProductDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        String product_id = request.getParameter("product_id");
        String url = "";
        try {
            switch (command) {
                case "delete":
                    productDAO.deleteProduct(Long.parseLong(product_id));
                    url = "/admin/manager_product.jsp";
                    break;

            }
        } catch (Exception e) {
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Product product = new Product();

        product.setProductName(request.getParameter("tenSanPham"));
        product.setProductImage(request.getParameter("hinhanh"));
        product.setProductDescription(request.getParameter("motaSanPham"));

        double giaSanPham = Double.parseDouble(request.getParameter("giaSanPham"));
        product.setProductPrice(giaSanPham);

        long maDanhMuc = Long.parseLong(request.getParameter("maDanhMuc"));
        product.setCategoryID(maDanhMuc);

        String command = request.getParameter("command");
        String url = "", error = "";

        try {
            if (error.length() == 0) {
                switch (command) {
                    case ("insert"):
                        productDAO.insertProduct(product);
                        url = "/admin/manager_product.jsp";
                        break;
                    case ("update"):
                        productDAO.updateProduct(product);
                        url = "/admin/manager_product.jsp";
                        break;
                }
            } else {
                url = "/admin/insert_product.jsp";
            }
        } catch (Exception e) {
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }

}
