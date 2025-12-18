package com.tthub.controller;

import com.tthub.util.DBUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

@WebServlet("/db-test")
public class DBTestServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<html><body style='font-family:Arial;'>");
        out.println("<h2>Database Connection Test</h2>");

        try {
            Connection con = DBUtil.getConnection();

            if (con != null && !con.isClosed()) {
                out.println("<p style='color:green;font-size:18px;'>✅ Database Connected Successfully!</p>");
                con.close();
            } else {
                out.println("<p style='color:red;font-size:18px;'>❌ Connection Failed</p>");
            }

        } catch (Exception e) {
            out.println("<p style='color:red;font-size:18px;'>❌ Exception Occurred</p>");
            out.println("<pre>" + e.getMessage() + "</pre>");
            e.printStackTrace();
        }

        out.println("</body></html>");
    }
}
