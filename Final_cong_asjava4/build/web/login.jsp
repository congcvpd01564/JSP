<%-- 
    Document   : login
    Created on : Oct 12, 2016, 7:00:07 PM
    Author     : CONGCAO
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/validform.js"></script>
        <style type="text/css">
            .err{
                color:red;
                font-style: italic;
            }
        </style>
        <title>login</title>
    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>

            <div class="container">
                <div class="account">
                    <h2 class="account-in">login</h2>
                    <form action="UsersServlet" method="POST" name="login" onsubmit="return checkLogin()" >
                    <%if (request.getParameter("error") != null) {%>
                    <div>
                        <p style="color:red"><%=request.getParameter("error")%></p>
                    </div> 
                    <%}%>
                    <div>               
                        <span>Username *</span>
                        <span class="err" id="error_email"></span><br>
                        <input type="text" name="email">
                    </div> 	
                    <div>
                        <span class="word">Password *</span>
                        <span class="err" id="error_pass"></span><br>  
                        <input type="password" name="pass">            
                    </div>			
                    <input type="hidden" value="login" name="command">
                    <input type="submit" value="Login"> 
                </form>
            </div>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>


    </body>
</html>

