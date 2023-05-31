package controll;

import dao.DAO;
import model.Account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/signup")
public class signup extends HttpServlet{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        String name = request.getParameter("name_user");
        String username = request.getParameter("user");
        String email = request.getParameter("email");
        String password = request.getParameter("pass");
        String re_pass = request.getParameter("repass");



        if (!password.equals(re_pass)) {
            request.setAttribute("mes", "Invalid Password");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        } else {
            DAO dao = new DAO();
            Account a = dao.checkAccountExist(username);
            if (a == null) {
                //dc signup
                dao.signup(name,username,email,password);
                request.getRequestDispatcher("home.jsp").forward(request, response);
            } else {
                request.setAttribute("mes", "Username already exists");
                request.getRequestDispatcher("signup.jsp").forward(request, response);
            }
        }
    }
        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            processRequest(req, resp);
        }

        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            processRequest(req, resp);
        }

}
