<%-- 
    Document   : footer
    Created on : Oct 12, 2016, 6:54:49 PM
    Author     : CONGCAO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>footer</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <!-- Custom Theme files -->
        <!--theme-style-->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
        <!--//theme-style-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Bonfire Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!--fonts-->
        <link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <!--//fonts-->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!--slider-script-->
        <script src="js/responsiveslides.min.js"></script>
        <script>
            $(function () {
                $("#slider1").responsiveSlides({
                    auto: true,
                    speed: 500,
                    namespace: "callbacks",
                    pager: true,
                });
            });
        </script>
        <!--//slider-script-->
        <script>$(document).ready(function (c) {
                $('.alert-close').on('click', function (c) {
                    $('.message').fadeOut('slow', function (c) {
                        $('.message').remove();
                    });
                });
            });
        </script>
        <script>$(document).ready(function (c) {
                $('.alert-close1').on('click', function (c) {
                    $('.message1').fadeOut('slow', function (c) {
                        $('.message1').remove();
                    });
                });
            });
        </script>
    </head>
    <body>

        <!---->
        <div class="footer">
            <div class="footer-top">
                <div class="container">
                    <div class="col-md-4 footer-in">
                        <h4><i> </i>Hình thức thanh toán</h4>
                        <p>Thanh toán bằng ATM, Visa, Credit Card.</p>
                    </div>
                    <div class="col-md-4 footer-in">
                        <h4><i class="cross"> </i>Miễn phí vận chuyển</h4>
                        <p>Trên phạm vi toàn thành phố Đà Nẵng với mỗi hóa đơn trị giá trên 5 triệu đồng.</p>
                    </div>
                    <div class="col-md-4 footer-in">
                        <h4><i class="down"> </i>Dịch vụ hỗ trợ</h4>
                        <p>Sẵn sàng phục vụ 24/7.Sự hài lòng của quý khách là hạnh phúc của chúng tôi.</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <!---->
            <div class="footer-middle">
                <div class="container">
                    <div class="footer-middle-in">
                        <h6>VỀ CHÚNG TÔI</h6>
                        <p>Tự hào luôn là doanh nghiệp dẫn dầu về công nghệ với nhiều sản phẩm đạ dạng phong phú, chúng tôi cam kết cung cấp dịch vụ tốt nhất.</p>
                    </div>
                    <div class="footer-middle-in">
                        <h6>THÔNG TIN</h6>
                        <ul>
                            <li><a href="#">Về chúng tôi</a></li>
                            <li><a href="#">Thông tin giao hàng</a></li>
                            <li><a href="#">Hình thức thanh toán</a></li>
                            <li><a href="#">Chính sách bảo mật</a></li>
                            <li><a href="#">Điều kiện và hạn chế</a></li>
                        </ul>
                    </div>
                    <div class="footer-middle-in">
                        <h6>DỊCH VỤ</h6>
                        <ul>
                            <li><a href="contact.html">Liên hệ với chúng tôi</a></li>
                            <li><a href="#">Chế độ bảo hành</a></li>
                            <li><a href="#">Hướng dẫn chỉ đường</a></li>
                        </ul>
                    </div>
                    <div class="footer-middle-in">
                        <h6>ĐĂNG NHẬP</h6>
                        <ul>
                            <li><a href="account.html">Tài khoản của tôi</a></li>
                            <li><a href="#">Lịch sử mua hàng</a></li>
                            <li><a href="wishlist.html">Danh sách mua hàng</a></li>
                            <li><a href="#">Ý kiến phản hồi</a></li>
                        </ul>
                    </div>
                    <div class="footer-middle-in">
                        <h6>MỞ RỘNG</h6>
                        <ul>
                            <li><a href="#">Hãng sản xuất</a></li>
                            <li><a href="#">Phiếu quà tặng</a></li>
                            <li><a href="#">Chi nhánh</a></li>
                            <li><a href="#">khuyến mại</a></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <p class="footer-class">Copyright © 2016 Modern Template by  <a href="#" target="_blank">CongCao</a> </p>
            <script type="text/javascript">
                $(document).ready(function () {
                    /*
                     var defaults = {
                     containerID: 'toTop', // fading element id
                     containerHoverID: 'toTopHover', // fading element hover id
                     scrollSpeed: 1200,
                     easingType: 'linear' 
                     };
                     */

                    $().UItoTop({easingType: 'easeOutQuart'});

                });
            </script>
            <a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

        </div>

    </body>
</html>
