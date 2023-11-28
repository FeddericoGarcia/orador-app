package com.integradorcac.oradorapp.controllers;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;

import java.io.IOException;

@WebServlet("/LoginAdminController")
public class LoginAdminController  extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            String nombre= req.getParameter("nombre");
            String password = req.getParameter("password");

            getServletContext().getRequestDispatcher("/DashboardOradorController").forward(req, resp);
		
	}
}
