<%-- 
    Document   : register
    Created on : Oct 12, 2016, 7:02:11 PM
    Author     : CONGCAO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>register</title>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="js/validform.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                var x_timer;
                $("#email").keyup(function (e) {
                    clearTimeout(x_timer);
                    var user_name = $(this).val();
                    x_timer = setTimeout(function () {
                        check_username_ajax(user_name);
                    }, 1000);
                });

            });
        </script>
        <style type="text/css">
            .err{
                color:red;
                font-style: italic;
            }
        </style>
    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>

            <div class="container">
                <div class="account">
                    <h2 class="account-in">Register</h2>
                    <form action="UsersServlet" method="POST" name="login" onsubmit="return checkLogin()">
                        <div>
                            <span class="word">Username *</span>
                            <span class="err" id="error_email"></span><br>
                            <input type="text" name="email" id="email">
                            <span id="user-result"></span>
                        </div> 	
                        <div> 
                            <span class="word">Password *</span>
                            <span class="err" id="error_pass"></span><br> 
                            <input type="password" name="pass">
                            <span></span>
                        </div>			
                        <input type="hidden" value="insert" name="command">
                        <input type="submit" value="Register"> 
                    </form>
                </div>
            </div>

        <jsp:include page="footer.jsp"></jsp:include>


    </body>
</html>