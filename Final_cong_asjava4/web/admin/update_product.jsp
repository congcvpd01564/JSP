<%-- 
    Document   : update_product
    Created on : Oct 16, 2016, 1:16:45 PM
    Author     : CONGCAO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cập nhật sản phẩm</title>

        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
        <script type="text/javascript" src="../js/validform.js"></script>
        <style type="text/css">
            .err{
                color:red;
                font-style: italic;
            }
        </style>

    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    <h3>Cập nhật sản phẩm</h3>
                    <form action="/Final_cong_asjava4/ManagerProductServlet" method="POST"
                          name="insert" onsubmit="return checkProduct()">
                        <table width="95%">
                            <tr>
                                <td style="float: right"><b>Mã danh mục:</b></td>
                                <td>
                                    <input type="text" class="sedang" name="maDanhMuc">
                                    <span class="err" id="error_maDanhMuc"></span>
                                </td>
                            </tr>
                            <tr>
                                <td style="float: right"><b>Tên sản phẩm:</b></td>
                                <td>
                                    <input type="text" class="sedang" name="tenSanPham">
                                    <span class="err" id="error_tenSanPham"></span>
                                </td>
                            </tr>
                            <tr>
                                <td style="float: right"><b>Hình ảnh sản phẩm:</b></td>
                                <td>
                                    <input type="text" class="sedang" name="hinhanh">
                                    <span class="err" id="error_hinhanh"></span>
                                </td>
                            </tr>
                            <tr>
                                <td style="float: right"><b>Giá sản phẩm:</b></td>
                                <td>
                                    <input type="text" class="sedang" name="giaSanPham">
                                    <span class="err" id="error_giaSanPham"></span>
                                </td>
                            </tr>
                            <tr>
                                <td style="float: right"><b>Mô tả sản phẩm:</b></td>
                                <td>
                                    <input type="text" class="sedang" name="motaSanPham">
                                    <span class="err" id="error_motaSanPham"></span>
                                </td>
                            </tr>
                            <tr><td></td><td>
                                    <input type="hidden" name="command" value="update">
                                    <input type="hidden" name="product_id" value="<%=request.getParameter("product_id")%>">
                                <input type="submit" class="button" value="Lưu dữ liệu">
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="clear"></div>

            <jsp:include page="footer.jsp"></jsp:include>

        </div>


    </body>
</html>