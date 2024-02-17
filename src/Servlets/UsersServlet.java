package Servlets;

import Classes.DBManagerUsers;
import Classes.Users;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet(value = "/login")
public class UsersServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-CONTENT/login.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("userEmail");
        String password = req.getParameter("userPassword");
        Users user = DBManagerUsers.getUser(email);

        String redirect = "";
        if(user!=null) {
            if(user.getEmail().equals(email) && user.getPassword().equals(password)) {
                redirect = "/profile";
            } else {
                redirect = "/login?errorCredits";
            }
        } else {
            redirect="/login?error";
        }
        resp.sendRedirect(redirect);
    }
}
