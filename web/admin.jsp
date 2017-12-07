<%-- 
    Document   : admin
    Created on : Jun 25, 2017, 9:35:00 PM
    Author     : Hallow
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.Sanpham"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
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
    <body style="margin-top: 10px;margin-left: 20px">
        <%
            Sanpham sp = new Sanpham();
            ArrayList<Sanpham> arr = sp.getConnectSanpham();
            int start = 0, end = 5;
            if (arr.size() < 5) {
                end = arr.size();
            }
            if (request.getParameter("start") != null) {
                start = Integer.parseInt(request.getParameter("start"));
            }
            if (request.getParameter("end") != null) {
                end = Integer.parseInt(request.getParameter("end"));
            }
            ArrayList<Sanpham> list = sp.getListByPage(arr, start, end);
        %>
        <%!
            int id;
            String Tensp;
            String Gia;
            String Kmai;
            String Mota;
            String Image;
        %>

        <table border="3" style="width: 1000px">
            <thead>
                <tr >
                    <td style="width: 50px">ID</td>
                    <td>Ten San Pham</td>
                    <td>Gia</th>
                    <td>Khuyen Mai</td>
                    <td>Mo Ta</th>
                    <td>Image</th>
                    <td style="width: 90px">Delete</td>
                    <td style="width: 90px">Edit</td>
                </tr>
            </thead>
            <%
                for (Sanpham sph : list) {
                    id = sph.getId();
                    Tensp = sph.getTensp();
                    Gia = sph.getGia();
                    Kmai = sph.getKmai();
                    Mota = sph.getMoTa();
                    Image = sph.getImage();
            %>  
            <form action="login" method="get">
                    <tr>
                        <td><%=id%></td>
                        <td><input type="text" name="Tensp" value=<%=Tensp%>></td>
                        <td><input type="text" name="Gia" value=<%=Gia%>></td>
                        <td><input type="text" name="Kmai" value=<%=Kmai%>></td>
                        <td><input type="text" name="Mota" value=<%=Mota%>></td>
                        <td><input type="text" name="Image" value=<%=Image%>></td>
                        <td><a href="login?id=<%=id%>&tensp=<%=Tensp%>&btAction=Delete">Delete</a></td>
                        <td><input type="hidden" name="id" value=<%=id%>>
                            <input type="submit" value="Edit" name="btAction" style="width: 90px"/></td>
                    </tr>
            </form>
            <%
                }
            %>

        </table>
        <ul class="pagination" style="margin-left: 20px">
            <%
                int a, b;
                int limit = arr.size() / 5;
                if (limit * 5 < arr.size()) {
                    limit += 1;
                }
                for (int i = 1; i <= limit; i++) {
                    a = (i - 1) * 5;
                    b = i * 5;
                    if (b > arr.size()) {
                        b = arr.size();
                    }

            %>
            <li class="active"><a href="admin.jsp?start=<%=a%>&end=<%=b%>"><%=i%></a></li>
                <%
                    }
                %>
        </ul>
        <form action="login" methor="get" style="width: 300px">
            <p>Ten San Pham  :<input type="text" name="txtTensp" value="" style="float: right"/></p>
            <p>Gia  :<input type="text" name="txtGia" value="" style="float: right"/></p>
            <p>Khuyen Mai  :<input type="text" name="txtKmai" value="" style="float: right"/></p>
            <p>Mo Ta  :<input type="text" name="txtMota" value="" style="float: right"/></p>
            <p>URL Image  :<input type="text" name="txtImage" value="" style="float: right"/></p>

            <input type="submit" value="Upload" name="btAction" />
            <input type="submit" value="Home" name="btAction" />
        </form>  
    </body>
</html>
