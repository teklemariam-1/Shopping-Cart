package controllers;

import DAO.DataBase;
import Model.Product;
import com.google.gson.Gson;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class ProductController
 */
@WebServlet({"/admin"})
public class ProductController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private DataBase dao;
    Gson mapper = new Gson();

    @Override
    public void init() throws ServletException {
        dao = new DataBase();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("products", dao.getAllProducts());
        RequestDispatcher view = request.getRequestDispatcher("product.jsp");
        view.forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Mapping to Java Object
        Product product = mapper.fromJson(request.getParameter("product"), Product.class);
        product.setId(dao.genId());

        // Add to Data Base
        dao.addProduct(product);
        request.setAttribute("product", product);
        RequestDispatcher dispatcher = request.getRequestDispatcher("productList");
        dispatcher.forward(request, response);

    }

}
