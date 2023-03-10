package pl.coderslab.users;

import pl.coderslab.dao.UserDao;
import pl.coderslab.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/users/edit")
public class UserEdit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        UserDao userDao = new UserDao();
        User user = userDao.readById(id);
        request.setAttribute("id", id);
        request.setAttribute("userName", user.getUserName());
        request.setAttribute("email", user.getEmail());
        request.setAttribute("action", "Edytuj");
        getServletContext().getRequestDispatcher("/users/edit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String name = request.getParameter("userName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        UserDao userDao = new UserDao();
        User user = userDao.readById(id);
        if(!name.equals("")){
            user.setUserName(name);
        }
        if(!email.equals("")) {
            user.setEmail(email);
        }
        if(!password.equals("")) {
            user.setPassword(password);
        }
        userDao.update(user);
        response.sendRedirect(request.getContextPath() + "/users/list");
    }
}
