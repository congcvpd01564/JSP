<%-- 
    Document   : update_category
    Created on : Oct 12, 2016, 6:51:06 PM
    Author     : CONGCAO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cập nhật danh mục</title>

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
                    <h3>Cập nhật danh mục</h3>
                    <form action="/Final_cong_asjava4/ManagerCategoryServlet" method="post"
                          name="insert" onsubmit="return checkCategory()">
                        <table width="95%">
                            <tr>
                                <td style="float: right"><b>Tên danh mục:</b></td>
                                <td>
                                    <input type="text" class="sedang" name="tenDanhMuc">
                                    <span class="err" id="error_tenDanhMuc"></span>
                                </td>
                        </tr>
                        <tr><td></td><td>
                                <input type="hidden" name="command" value="update">
                                <input type="hidden" name="category_id" value="<%=request.getParameter("category_id")%>">
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