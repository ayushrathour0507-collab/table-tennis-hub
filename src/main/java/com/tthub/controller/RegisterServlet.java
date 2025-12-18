package com.tthub.controller;

import com.tthub.util.DBUtil;
import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        System.out.println("REGISTER SERVLET HIT");

        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        try (Connection con = DBUtil.getConnection()) {

            if (con == null) {
                System.out.println("DB CONNECTION FAILED");
                res.sendRedirect("register.jsp?error=db");
                return;
            }

            PreparedStatement check = con.prepareStatement(
                "SELECT * FROM users WHERE username=? OR email=?"
            );
            check.setString(1, username);
            check.setString(2, email);
            ResultSet rs = check.executeQuery();

            if (rs.next()) {
                res.sendRedirect("register.jsp?error=exists");
                return;
            }

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO users(username,email,password) VALUES(?,?,?)"
            );
            ps.setString(1, username);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.executeUpdate();

            System.out.println("USER INSERTED SUCCESSFULLY");
            res.sendRedirect("login.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            res.sendRedirect("register.jsp?error=exception");
        }
    }
}
