package controll;

import dao.DAO;
import model.Account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;



@WebServlet("/signin")
public class signIn extends HttpServlet{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("user");
        String password = request.getParameter("pass");
        DAO dao = new DAO();

        Account a = dao.login(username, password);
        /*String nameUser = dao.findByUserName(username);*/

        if (a == null) {
            request.setAttribute("mess", "Wrong username or password");
            request.getRequestDispatcher("signin.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            /*session.setAttribute("acc", a);*/
            /*request.setAttribute("nameUser", nameUser);*/
            request.getRequestDispatcher("home.jsp").forward(request, response);
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

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
