/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Shop;
import Model.CartBean;
import Model.Sanpham;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Hallow
 */
@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {

    final private String errorPage = "fail.jsp";
    final private String showPage = "admin.jsp";
    final private String homePage = "account.jsp";
    final private String indexPage = "index.jsp";
    final private String cartPage = "checkout.jsp";
    final private String testPage = "test.jsp";

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String action = request.getParameter("btAction");
            if (action.equals("Login")) {
                String username = request.getParameter("txtUsername");
                String password = request.getParameter("txtPass");
                ConnectionData login = new ConnectionData();
                boolean result = login.checkLogin(username, password);
                String url = errorPage;
                if (result) {
                    HttpSession session = request.getSession(true);
                    session.setAttribute("USER", username);
                    url = showPage;
                }
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals("tryAgain")) {
                RequestDispatcher rd = request.getRequestDispatcher(homePage);
                rd.forward(request, response);
            } else if (action.equals("Upload")) {
                String tensp = request.getParameter("txtTensp");
                String gia = request.getParameter("txtGia");
                String kmai = request.getParameter("txtKmai");
                String mota = request.getParameter("txtMota");
                String image = request.getParameter("txtImage");
                ConnectionData login = new ConnectionData();
                boolean result = login.insert(tensp, gia, kmai, mota, image);
                RequestDispatcher rd = request.getRequestDispatcher(showPage);
                rd.forward(request, response);
            } else if (action.equals("Home")) {
                RequestDispatcher rd = request.getRequestDispatcher(indexPage);
                rd.forward(request, response);
            } else if (action.equals("Delete")) {
                String id = request.getParameter("id");
                String tensp = request.getParameter("tensp");
                ConnectionData login = new ConnectionData();
                boolean result = login.delete(tensp, id);
                RequestDispatcher rd = request.getRequestDispatcher(showPage);
                rd.forward(request, response);
            } else if (action.equals("Edit")) {
                String id = request.getParameter("id");
                String tensp = request.getParameter("Tensp");
                String gia = request.getParameter("Gia");
                String kmai = request.getParameter("Kmai");
                String mota = request.getParameter("Mota");
                String image = request.getParameter("Image");
                ConnectionData login = new ConnectionData();
                boolean result = login.edit(id, tensp, gia, kmai, mota, image);
                RequestDispatcher rd = request.getRequestDispatcher(showPage);
                rd.forward(request, response);
            } else if (action.equals(".")) {
                String tensp = request.getParameter("search");
                ConnectionData login = new ConnectionData();
                boolean result = login.search(tensp);
                String url = errorPage;
                if (result) {
                    url="test.jsp?tensp="+tensp;
                }
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals("Add To Cart")) {
                HttpSession session = request.getSession(true);
                CartBean shop = (CartBean) session.getAttribute("SHOP");
                if (shop == null) {
                    shop = new CartBean();
                }
                String id = request.getParameter("id");
                String image = request.getParameter("image");
                String tensp = request.getParameter("tensp");
                String gia = request.getParameter("gia");
                Shop book = new Shop(tensp, gia, image);
                shop.addBook(book);
                session.setAttribute("SHOP", shop);
                String url = "single.jsp?id=" + id;
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals("Remove")) {
                String[] list = request.getParameterValues("rmv");
                if (list != null) {
                    HttpSession session = request.getSession();
                    if (session != null) {
                        CartBean shop = (CartBean) session.getAttribute("SHOP");
                        if (shop != null) {
                            for (int i = 0; i < list.length; i++) {
                                shop.removeBook(list[i]);
                            }
                            session.setAttribute("SHOP", shop);
                        }
                    }
                }
                RequestDispatcher rd = request.getRequestDispatcher(cartPage);
                rd.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
