package controll;

import dao.DAO;
import model.product;import model.Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet(name = "AddToCartServlet", urlPatterns = "/add-to-cart")
public class addtocart extends HttpServlet{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
//        	out.print("add to cart servlet");

            ArrayList<Cart> cartList = new ArrayList<>();
            int id = Integer.parseInt(request.getParameter("id"));
            Cart cm = new Cart();
            cm.setId(id);
            cm.setQuantity(1);
            HttpSession session = request.getSession();
            ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
            if (cart_list == null) {
                cartList.add(cm);
                session.setAttribute("cart-list", cartList);
                /*out.println("session created and added to cart");*/
                response.sendRedirect("allProduct");
            } else {
                cartList = cart_list;

                boolean exist= false;
                for (Cart c : cart_list) {
                    if (c.getId() == id) {

                        out.println("<h3 style='color:crimson; text-align: center'>Item Already in Cart. <a href='cart.jsp'>GO to Cart Page</a></h3>");
                        exist=true;
                        /*out.println("product exits");*/
                    }
                }

                if (!exist) {
                    cartList.add(cm);
                    /*out.println("added to cart");*/
                    response.sendRedirect("allProduct");
                }


            }

        }
    }
}
