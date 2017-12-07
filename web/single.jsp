<%-- 
    Document   : single
    Created on : Jun 10, 2017, 3:02:00 AM
    Author     : Hallow
--%>

<%@page import="Controller.ConnectionData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Sanpham"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Luxury Watches A Ecommerce Category Flat Bootstarp Resposive Website Template | Single :: w3layouts</title>
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
        <script type="text/javascript">
            $(function () {

                var menu_ul = $('.menu_drop > li > ul'),
                        menu_a = $('.menu_drop > li > a');

                menu_ul.hide();

                menu_a.click(function (e) {
                    e.preventDefault();
                    if (!$(this).hasClass('active')) {
                        menu_a.removeClass('active');
                        menu_ul.filter(':visible').slideUp('normal');
                        $(this).addClass('active').next().stop(true, true).slideDown('normal');
                    } else {
                        $(this).removeClass('active');
                        $(this).next().stop(true, true).slideUp('normal');
                    }
                });

            });
        </script>		
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
                                <li class="active"><a href="products.jsp">Products</a>
                                </li>
                                <li><a href="contact.jsp">Contact</a>
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
                        <li class="active">Single</li>
                    </ol>
                </div>
            </div>
        </div>
        <!--end-breadcrumbs-->
        <!--start-single-->
        <div class="single contact">
            <div class="container">
                <div class="single-main">
                    <div class="col-md-9 single-main-left">
                        <%
                            String id = request.getParameter("id");
                            Sanpham sp = new Sanpham();
                            ArrayList<Sanpham> sing = sp.getsingle(id);

                            String Tensp = sing.get(0).getTensp();
                            String Gia = sing.get(0).getGia();
                            String Image = sing.get(0).getImage();
                            String Kmai;
                            String id1;
                        %>
                        <div class="sngl-top">
                            <div class="col-md-5 single-top-left">	
                                <div class="flexslider">
                                    <ul class="slides">
                                        <li data-thumb=<%=Image%>>
                                            <div class="thumb-image"> <img src=<%=Image%> data-imagezoom="true" class="img-responsive" alt="" style="width:300px;height: 400px "/> </div>
                                        </li>

                                    </ul>
                                </div>
                                <!-- FlexSlider -->
                                <script src="js/imagezoom.js"></script>
                                <script defer src="js/jquery.flexslider.js"></script>
                                <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

                                <script>
                                // Can also be used with $(document).ready()
                                $(window).load(function () {
                                    $('.flexslider').flexslider({
                                        animation: "slide",
                                        controlNav: "thumbnails"
                                    });
                                });
                                </script>
                            </div>	
                            <form action="login" method="get">
                                <input type="hidden" value="<%=id%>" name="id">
                                <input type="hidden" value="<%=Tensp%>" name="tensp">
                                <input type="hidden" value="<%=Gia%>" name="gia">
                                <input type="hidden" value="<%=Image%>" name="image">
                                <div class="col-md-7 single-top-right">

                                    <div class="single-para simpleCart_shelfItem">
                                        <h2><%=Tensp%></h2>
                                        <h5 class="item_price"><%=Gia%></h5>
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>

                                        <input type="submit" value="Add To Cart" name="btAction" />

                                    </div>
                                </div>
                            </form>
                            <div class="clearfix"> </div>
                        </div>

                        <div class="latestproducts">
                            <div class="product-one">
                                <%
                                    ArrayList<Sanpham> arr = sp.getConnectSanpham();
                                    for (int i = 0;
                                            i < 3; i++) {
                                        id1 = "" + arr.get(i).getId();
                                        Tensp = arr.get(i).getTensp();
                                        Kmai = arr.get(i).getKmai();
                                        Image = arr.get(i).getImage();
                                        Gia = arr.get(i).getGia();
                                %>
                                <div class="col-md-4 product-left p-left"> 
                                    <div class="product-main simpleCart_shelfItem">
                                        <a href="single.jsp?id=<%=id1%>" class="mask"><img class="img-responsive zoom-img" src=<%=Image%> alt="" /></a>
                                        <div class="product-bottom">
                                            <h3><%=Tensp%></h3>
                                            <p>Explore Now</p>
                                        </div>
                                        <div class="srch">
                                            <span><%=Kmai%></span>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 single-right">
                        <div class="w_sidebar">
                            <section  class="sky-form">
                                <h4>Catogories</h4>
                                <div class="row1 scroll-pane">
                                    <div class="col col-4">
                                        <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>All Accessories</label>
                                    </div>
                                    <div class="col col-4">								
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Women </label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Kids </label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Men </label>			
                                    </div>
                                </div>
                            </section>
                            <section  class="sky-form">
                                <h4>Brand</h4>
                                <div class="row1 row2 scroll-pane">
                                    <div class="col col-4">
                                        <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>kurtas</label>
                                    </div>
                                    <div class="col col-4">
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Sonata</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Titan</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Casio</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Omax</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox" ><i></i>shree</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Fastrack</label>		
                                    </div>
                                </div>
                            </section>
                            <section class="sky-form">
                                <h4>discount</h4>
                                <div class="row1 row2 scroll-pane">
                                    <div class="col col-4">
                                        <label class="radio"><input type="radio" name="radio"><i></i>40 % and above</label>
                                        <label class="radio"><input type="radio" name="radio"><i></i>30 % and above</label>
                                        <label class="radio"><input type="radio" name="radio"><i></i>20 % and above</label>
                                        <label class="radio"><input type="radio" name="radio"><i></i>10 % and above</label>
                                    </div>
                                </div>						
                            </section>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!--end-single-->
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
