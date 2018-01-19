

<%@page import="java.util.List"%>
<%@page import="model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý sản phẩm</title>

        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />

    </head>
    <body>
        <%
            ProductDAO productDAO = new ProductDAO();
            List<Product> listProduct = productDAO.getAllProducts();
        %>

        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    <h3>Quản lý sản phẩm</h3>

                    <a href="${root}/admin/insert_product.jsp">Thêm sản phẩm</a>

                <table class="data">
                    <tr class="data">

                        <th class="data" width="30px">STT</th>
                        <th class="data">Mã sản phẩm</th>
                        <th class="data">Mã danh mục</th>
                        <th class="data">Tên sản phẩm</th>
                        <th class="data">Hình ảnh sản phẩm</th>
                        <th class="data">Giá sản phẩm</th>
                        <th class="data">Mô tả sản phẩm</th>
                        <th class="data" width="90px">Tùy chọn</th>
                    </tr>
                    <%
                        int count = 0;
                        for (Product product : listProduct) {
                            count++;
                    %>

                    <tr class="data">
                        <td class="data" width="30px"><%=count%></td>
                        <td class="data"><%=product.getProductID()%></td>
                        <td class="data"><%=product.getCategoryID()%></td>
                        <td class="data"><%=product.getProductName()%></td>
                        <td class="data"><%=product.getProductImage()%></td>
                        <td class="data"><%=product.getProductPrice()%></td>
                        <td class="data"><%=product.getProductDescription()%></td>
                        <td class="data" width="75px">
                    <center>
                        <a href="${root}/admin/update_product.jsp?command=update&product_id=<%=product.getProductID()%>">Sửa</a>&nbsp;&nbsp; | &nbsp;&nbsp;
                        <a href="/Final_cong_asjava4/ManagerProductServlet?command=delete&product_id=<%=product.getProductID()%>">Xóa</a>
                    </center>
                    </td>
                    </tr>
                    <%}%>

                </table>
            </div>
            <div class="clear"></div>

            <jsp:include page="footer.jsp"></jsp:include>

        </div>
    </body>
</html>