package com.integradorcac.oradorapp.controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.integrador.dao.iOradorDAO;
import com.integrador.db.AdministradorDeConexiones;

@WebServlet("/DeleteOradorController")
public class DeleteOradorController extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id_orador = Long.parseLong(req.getParameter("id_orador"));
                
        iDAO dao = new DAO();
        
        
        
    }
    
    
}
