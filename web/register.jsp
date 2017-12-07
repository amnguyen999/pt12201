<%-- 
    Document   : register
    Created on : Jun 10, 2017, 3:01:51 AM
    Author     : Hallow
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Luxury Watches A Ecommerce Category Flat Bootstarp Resposive Website Template | Register :: w3layouts</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
        <script src="js/jquery-1.11.0.min.js"></script>
        <!--Custom Theme files-->
        <!--theme-style-->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
        <!--//theme-style-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Luxury Watches Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>	
        <!--start-menu-->
        <script src="js/simpleCart.min.js"></script>
        <link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/memenu.js"></script>
        <script>$(document).ready(function () {
                $(".memenu").memenu();
            });</script>	
        <!--dropdown-->
        <script src="js/jquery.easydropdown.js"></script>			
    </head>
    <body> 
        <!--top-header-->
        <div class="top-header">
            <div class="container">
                <div class="top-header-main">
                    <div class="col-md-6 top-header-left">
                        <a href="index.jsp" style="position: absolute; margin-top: -20px; color: white"><h1>Luxury Watches</h1></a>
                    </div>
                    <div class="col-md-6 top-header-left">
                        <div class="cart box_1">
                            <a href="checkout.jsp">
                                <div class="total">
                                    <span class="simpleCart_total"></span></div>
                                <img src="images/cart-1.png" alt="" />
                            </a>
                            <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!--top-header-->
        <!--start-logo-->

        <!--start-logo-->
        <!--bottom-header-->
        <div class="header-bottom">
            <div class="container">
                <div class="header">
                    <div class="col-md-9 header-left">
                        <div class="top-nav">
                            <ul class="memenu skyblue"><li class="active"><a href="index.jsp">Home</a></li>
                                <li class="grid"><a href="products.jsp">Products</a>
                                </li>
                                <li class="grid"><a href="contact.jsp">Contact</a>
                                </li>
                            </ul>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="col-md-3 header-right"> 
                        <div class="search-bar">
                            <input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Search';
                                    }">
                            <input type="submit" value="">
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!--bottom-header-->
        <!--start-breadcrumbs-->
        <div class="breadcrumbs">
            <div class="container">
                <div class="breadcrumbs-main">
                    <ol class="breadcrumb">
                        <li><a href="index.jsp">Home</a></li>
                        <li class="active">Register</li>
                    </ol>
                </div>
            </div>
        </div>
        <!--end-breadcrumbs-->
        <!--register-starts-->
        <div class="register">
            <div class="container">
                <div class="register-top heading">
                    <h2>REGISTER</h2>
                </div>
                <div class="register-main">
                    <div class="col-md-6 account-left">
                        <input placeholder="User name" type="text" tabindex="1" required>
                        <input placeholder="Last name" type="text" tabindex="2" required>
                        <input placeholder="Email address" type="text" tabindex="3" required>
                        <ul>
                            <li><label class="radio left"><input type="radio" name="radio" checked=""><i></i>Male</label></li>
                            <li><label class="radio"><input type="radio" name="radio"><i></i>Female</label></li>
                            <div class="clearfix"></div>
                        </ul>
                    </div>
                    <div class="col-md-6 account-left">
                        <input placeholder="Password" type="password" tabindex="4" required>
                        <input placeholder="Retype password" type="password" tabindex="4" required>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="address submit">
                    <input type="submit" value="Submit">
                </div>
            </div>
        </div>
        <!--register-end-->
        <!--information-starts-->
        <div class="footer">
            <div class="container">
                <div class="infor-top">
                    <div class="col-md-3 infor-left">
                        <h3>Follow Us</h3>
                        <ul>
                            <li><a href="#"><span class="fb"></span><h6>Facebook</h6></a></li>
                            <li><a href="#"><span class="google"></span><h6>Google+</h6></a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 infor-left">
                        <h3>Information</h3>
                        <ul>
                            <li><a href="#"><p>Specials</p></a></li>
                            <li><a href="#"><p>Our Stores</p></a></li>
                            <li><a href="contact.jsp"><p>Contact Us</p></a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 infor-left">
                        <h3>My Account</h3>
                        <ul>
                            <li><a href="account.jsp"><p>My Account</p></a></li>
                            <li><a href="#"><p>My Credit slips</p></a></li>
                            <li><a href="#"><p>My Personal info</p></a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 infor-left">
                        <h3>Store Information</h3>
                    </div>
                </div>
            </div>
        </div>
        <!--footer-end-->	
    </body>
</html>
