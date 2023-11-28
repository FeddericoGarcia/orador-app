package com.integradorcac.oradorapp.controllers;

import com.integradorcac.oradorapp.dao.iDAO;
import com.integradorcac.oradorapp.dao.implement.DAO;
import entity.Orador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;
import java.util.ArrayList;

@WebServlet("/FindAllOradorController")
public class FindAllOradorController  extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        iDAO dao = new DAO();
        List<Orador> oradores = new ArrayList<>();

        try {
          oradores = dao.findAll();
        } catch (Exception e) {
          e.printStackTrace(); 
        }
        req.setAttribute("listadoOradores", oradores);
        getServletContext().getRequestDispatcher("/listadoOradores.jsp").forward(req, resp);

    }
        
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
