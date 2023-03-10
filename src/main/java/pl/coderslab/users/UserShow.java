package pl.coderslab.users;

import pl.coderslab.dao.UserDao;
import pl.coderslab.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/users/show")
public class UserShow extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        UserDao userDao = new UserDao();
        User user = userDao.readById(id);
        request.setAttribute("id", id);
        request.setAttribute("userName", user.getUserName());
        request.setAttribute("email", user.getEmail());
        getServletContext().getRequestDispatcher("/users/show.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
