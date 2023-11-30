package com.integradorcac.oradorapp.controllers;

import com.integradorcac.oradorapp.dao.iDAO;
import com.integradorcac.oradorapp.dao.implement.DAO;

import com.integradorcac.oradorapp.entity.Orador;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class DashboardOradorController extends HttpServlet  {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        iDAO dao = new DAO();
        List<Orador> lista = new ArrayList<>();
        
        try{
            lista = dao.findAll();
        }catch(Exception e){
            e.getLocalizedMessage();
            e.getStackTrace();
            System.out.println("*************");
            System.out.println("Se detecto un error en DashboardOradorController.java");
        }
        req.setAttribute("lista", lista);
        getServletContext().getRequestDispatcher("/dashboard.jsp").forward(req, resp);
    
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp); 
    }
    
}
