//Trang Login
function checkLogin() {
    var d = document.login;

    //check email;
    /*
     1.Email không được rỗng
     2. Email phai ít nhất có 5 ký tự
     3.Email không bắt đầu bằng @.
     4.Sau ký tự '.' phải là ít nhất một ký tự khác nữa
     5.Giữa hai ký tự @ và '.' phải có ký tự.
     */
    var mail = document.all.email.value;
    var acong = mail.indexOf('@');
    var dodai = mail.length - 1;
    var daucham = mail.lastIndexOf('.');
    var daucach = mail.indexOf( );

    //check email

    if ((dodai <= 5) || (acong < 1) || (daucham <= acong + 1) || (daucach != -1))
    {
        //alert("Please enter the email format. For example: abc@gmail.com");
        document.getElementById("error_email").innerHTML = "Please enter the email format. For example: abc@gmail.com";
        d.email.focus();
        return false;
    } else {
        document.getElementById("error_email").innerHTML = "";
    }
    //check pass
    if (d.pass.value == "") {
        //alert("Password is not empty");
        document.getElementById("error_pass").innerHTML = "Password is not empty !";
        d.pass.focus();
        return false;
    } else {
        document.getElementById("error_pass").innerHTML = "";
    }

    // return true;
}


//Trang Category;
function checkCategory() {
    var x = document.insert;
    //check ten danh muc
    if (x.tenDanhMuc.value == "") {
        document.getElementById("error_tenDanhMuc").innerHTML = "Tên danh mục không được để trống";
        x.tenDanhMuc.focus();
        return false;
    } else {
        document.getElementById("error_tenDanhMuc").innerHTML = "";
    }

    //return true;
}

//Trang Product;
function checkProduct() {
    var a = document.insert;
    //check ma danh muc
    if (a.maDanhMuc.value == "") {
        document.getElementById("error_maDanhMuc").innerHTML = "Mã danh mục không được để trống";
        a.maDanhMuc.focus();
        return false;
    } else {
        document.getElementById("error_maDanhMuc").innerHTML = "";
    }
    //tenSanPham
    if (a.tenSanPham.value == "") {
        document.getElementById("error_tenSanPham").innerHTML = "Tên sản phẩm không được để trống";
        a.tenSanPham.focus();
        return false;
    } else {
        document.getElementById("error_tenSanPham").innerHTML = "";
    }
    //hinhanh
    if (a.hinhanh.value == "") {
        document.getElementById("error_hinhanh").innerHTML = "Hình ảnh không được để trống";
        a.hinhanh.focus();
        return false;
    } else {
        document.getElementById("error_hinhanh").innerHTML = "";
    }
    //giaSanPham
    var checkGiaSanPham = isNaN(a.giaSanPham.value);
    if (a.giaSanPham.value == "") {
        document.getElementById("error_giaSanPham").innerHTML = "Giá sản phẩm không được để trống";
        a.giaSanPham.focus();
        return false;
    } else {
        document.getElementById("error_giaSanPham ").innerHTML = "";
    }
    if (checkGiaSanPham == true) {
        document.getElementById("error_giaSanPham").innerHTML = "Giá sản phẩm phải là số";
        a.giaSanPham.focus();
        return false;
    } else {
        document.getElementById("error_giaSanPham").innerHTML = "";
    }
    //motaSanPham
    if (a.motaSanPham.value == "") {
        document.getElementById("error_motaSanPham").innerHTML = "Mô tả không được để trống";
        a.motaSanPham.focus();
        return false;
    } else {
        document.getElementById("error_motaSanPham").innerHTML = "";
    }

    return true;
}






























