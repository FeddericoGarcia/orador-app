package com.integradorcac.oradorapp.controllers;

import com.integradorcac.oradorapp.dao.iDAO;
import com.integradorcac.oradorapp.dao.implement.DAO;

import com.integradorcac.oradorapp.entity.Orador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/DashboardOradorController")
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
            e.printStackTrace();
            System.out.println("*************");
            System.out.println("Se detecto un error en DashboardOradorController.java");
        }
//        if (lista != null) {
//            req.setAttribute("lista", lista);
//        } else {
//            System.out.println("lista nulla "+ lista);
//        }
        req.setAttribute("orador", lista);
        getServletContext().getRequestDispatcher("/dashboard.jsp").forward(req, resp);
    
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp); 
    }
    
    
}
