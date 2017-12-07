<%-- 
    Document   : checkout
    Created on : Jun 10, 2017, 2:59:08 AM
    Author     : Hallow
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Sanpham"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Luxury Watches A Ecommerce Category Flat Bootstarp Resposive Website Template | Checkout :: w3layouts</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
        <script src="js/jquery-1.11.0.min.js"></script>
        <!--Custom-Theme-files-->
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
                            <a href="checkout.jsp"><img src="images/cart-1.png" alt="" /></br>
                            Shopping Cart
                            </a>
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
                            <ul class="memenu skyblue"><li><a href="index.jsp">Home</a></li>
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
                        <li class="active">Checkout</li>
                    </ol>
                </div>
            </div>
        </div>
        <!--end-breadcrumbs-->
        <!--start-ckeckout-->
        <div class="ckeckout">
            <div class="container">
                <div class="ckeck-top heading">
                    <h2>CHECKOUT</h2>
                </div>
                <div class="ckeckout-top">
                    <form action="login">
                    <div class="cart-items">
                        <h3>My Shopping Bag </h3>
                        
                        <div class="in-check" >
                            <ul class="unit">
                                <li><span>Item</span></li>
                                <li><span>Product Name</span></li>		
                                <li><span>Unit Price</span></li>
                                <li><span style="margin-left: -10px">Quantity</span></li>
                                <div class="clearfix"> </div>
                            </ul>
                            <c:set var="shop" value="${sessionScope.SHOP}"/>
                            <c:forEach var="rows" items="${shop}">
                                <ul class="cart-header">
                                    <li class="ring-in"><a href="single.jsp" ><img src=${rows.value.image} class="img-responsive" alt="" style="width: 82px; height: 117px"></a></li>
                                    <li><span class="name">${rows.value.tensp}</span></li>
                                    <li><span class="cost">${rows.value.gia}</span></li>
                                    <li><span>${rows.value.quantity}<input type="checkbox" name="rmv" value="${rows.value.tensp}"style="margin-left: 160px"></span></li>
                                    
                                    <div class="clearfix"> </div>
                                </ul>
                            </c:forEach>
                        </div>
                            <input type="submit" name="btAction" value="Remove" style="float: right; margin-right: 80px">
                    </div>
                    </form>
                </div>
            </div>
        </div>
        <!--end-ckeckout-->
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
