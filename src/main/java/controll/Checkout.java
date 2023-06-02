package controll;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.*;
import dao.*;
@WebServlet("/cart-check-out")
public class Checkout extends HttpServlet{
    public String RandGeneratedStr(int l)

    {

        // a list of characters to choose from in form of a string

        String AlphaNumericStr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvxyz0123456789";

        // creating a StringBuffer size of AlphaNumericStr

        StringBuilder s = new StringBuilder(l);

        int i;

        for ( i=0; i<l; i++) {

            //generating a random number using math.random()


            int ch = (int)(AlphaNumericStr.length() * Math.random());

            //adding Random character one by one at the end of s

            s.append(AlphaNumericStr.charAt(ch));

        }

        return s.toString();

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try(PrintWriter out = response.getWriter()){
            String bill_code=RandGeneratedStr(10);
            HttpSession session = request.getSession();
            session.setAttribute("bill_code", bill_code);
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            Date date = new Date();
            ArrayList<Cart> cart_list = (ArrayList<Cart>) request.getSession().getAttribute("cart-list");
            Account a = (Account) request.getSession().getAttribute("acc");
            if(cart_list != null && a!=null) {
                for(Cart c:cart_list) {

                    Order order = new Order();

                    order.setId(c.getId());
                    // update quantity in table product
                    if(c.getId()>0){
                        DAO dao=new DAO();
                        List<product> list= dao.getAllProduct();
                        for (product p:list){
                            if(c.getId() == p.getId()){
                                OrderDao odao= new OrderDao();
                                odao.updateQuantity(c.getId(),c.getQuantity(),p.getNumber());
                                break;
                            }
                        }
                    }

                    order.setUid(a.getId());
                    order.setQuantity(c.getQuantity());
                    order.setDate(formatter.format(date));
                    order.setBill_code(bill_code);

                    OrderDao dao = new OrderDao();
                    boolean result = dao.insertOrder(order);
                    if(!result) break;
                }

                cart_list.clear();

                response.sendRedirect("cart.jsp");
                System.out.println();
            }else {
                if(a == null) {
                    response.sendRedirect("signin.jsp");
                }
                response.sendRedirect("cart.jsp");
            }
        } catch (Exception e) {

        }
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}
