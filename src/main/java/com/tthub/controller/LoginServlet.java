package com.tthub.controller;

import com.tthub.util.DBUtil;
import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        System.out.println("LOGIN SERVLET HIT");

        String login = req.getParameter("username");
        String password = req.getParameter("password");

        try (Connection con = DBUtil.getConnection()) {

            PreparedStatement ps = con.prepareStatement(
                "SELECT * FROM users WHERE (username=? OR email=?) AND password=?"
            );
            ps.setString(1, login);
            ps.setString(2, login);
            ps.setString(3, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                HttpSession session = req.getSession(true);
                session.setAttribute("username", rs.getString("username"));
                res.sendRedirect("index.jsp");
            } else {
                res.sendRedirect("login.jsp?error=invalid");
            }

        } catch (Exception e) {
            e.printStackTrace();
            res.sendRedirect("login.jsp?error=db");
        }
    }
}
