<%-- 
    Document   : index
    Created on : Jun 10, 2017, 2:50:20 AM
    Author     : Hallow
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.Sanpham"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Luxury Watches A Ecommerce Category Flat Bootstrap Resposive Website Template | Home :: w3layouts</title>
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
                            <ul class="memenu skyblue"><li class="active"><a href="index.jsp">Home</a></li>
                                <li class="grid"><a href="products.jsp">Product</a></li>
                                <li class="grid"><a href="contact.jsp">Contact</a>
                                </li>
                            </ul>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="col-md-3 header-right"> 
                        <form action="login" method="get">
                            <div class="search-bar">
                                <input type="text" name="search" value="" placeholder="Search" >
                                <input type="submit" value="." name="btAction" >
                            </div>
                        </form>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!--bottom-header-->
        <!--banner-starts-->
        <div class="bnr" id="home">
            <div  id="top" class="callbacks_container">
                <ul class="rslides" id="slider4">
                    <li>
                        <img src="images/bnr-1.jpg" alt=""/>
                    </li>
                    <li>
                        <img src="images/bnr-2.jpg" alt=""/>
                    </li>
                    <li>
                        <img src="images/bnr-3.jpg" alt=""/>
                    </li>
                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>
        <!--banner-ends--> 
        <!--Slider-Starts-Here-->
        <script src="js/responsiveslides.min.js"></script>
        <script>
            // You can also use "$(window).load(function() {"
            $(function () {
                // Slideshow 4
                $("#slider4").responsiveSlides({
                    auto: true,
                    pager: true,
                    nav: true,
                    speed: 500,
                    namespace: "callbacks",
                    before: function () {
                        $('.events').append("<li>before event fired.</li>");
                    },
                    after: function () {
                        $('.events').append("<li>after event fired.</li>");
                    }
                });

            });
        </script>
        <!--End-slider-script-->
        <!--about-starts-->
        <div class="about"> 
            <div class="container">
                <div class="about-top grid-1">
                    <div class="col-md-4 about-left">
                        <figure class="effect-bubba">
                            <img class="img-responsive" src="images/abt-1.jpg" alt=""/>
                            <figcaption>
                                <h2>There is no maximum now</h2>
                                <p>The carrots sapien eros obesity</p>	
                            </figcaption>			
                        </figure>
                    </div>
                    <div class="col-md-4 about-left">
                        <figure class="effect-bubba">
                            <img class="img-responsive" src="images/abt-2.jpg" alt=""/>
                            <figcaption>
                                <h4>The largest propaganda</h4>
                                <p>The carrots sapien eros obesity</p>	
                            </figcaption>			
                        </figure>
                    </div>
                    <div class="col-md-4 about-left">
                        <figure class="effect-bubba">
                            <img class="img-responsive" src="images/abt-3.jpg" alt=""/>
                            <figcaption>
                                <h4>Tomorrow elit</h4>
                                <p>The carrots sapien eros obesity</p>	
                            </figcaption>			
                        </figure>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!--about-end-->
        <!--product-starts-->
        <div class="product"> 
            <div class="container">
                <div class="product-top">
                    <div class="product-one">

                        <%!
                            int id;
                            String Tensp;
                            String Gia;
                            String Kmai;
                            String Mota;
                            String Image;
                        %>
                        <%
                            Sanpham sp = new Sanpham();
                            ArrayList<Sanpham> arr = sp.getConnectSanpham();
                            for (int i = 0; i < 4; i++) {
                                id = arr.get(i).getId();
                                Tensp = arr.get(i).getTensp();
                                Gia = arr.get(i).getGia();
                                Kmai = arr.get(i).getKmai();
                                Image = arr.get(i).getImage();
                        %>  

                        <div class="col-md-3 product-left">
                            <div class="product-main simpleCart_shelfItem">
                                <a href="single.jsp?id=<%=id%>" class="mask"><img class="img-responsive zoom-img" src="<%= Image%>" alt="" /></a>
                                <div class="product-bottom">
                                    <h3><%= Tensp%></h3>
                                    <p>Explore Now</p>
                                </div>
                                <div class="srch">
                                    <span><%= Kmai%></span>
                                </div>
                            </div>
                        </div>
                        <%}
                        %>

                        <div class="clearfix"></div>
                    </div>

                </div>
            </div>
        </div>
        <!--product-end-->
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

    </body>
</html>
