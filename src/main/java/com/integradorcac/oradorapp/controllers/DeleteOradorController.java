package com.integradorcac.oradorapp.controllers;

import com.integradorcac.oradorapp.dao.iDAO;
import com.integradorcac.oradorapp.dao.implement.DAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;


@WebServlet("/DeleteOradorController")
public class DeleteOradorController extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id_orador = Long.parseLong(req.getParameter("id"));
        iDAO dao = new DAO();
        System.out.println("ID_ORADOR DeleteController "+ id_orador);
        try{
            dao.delete(id_orador);
            req.setAttribute("orador", List.of("Se elimino el orador ID: "+ id_orador + " ✔"));
        }catch(Exception e){
            e.getMessage();
            e.printStackTrace();
            System.out.println("❌ Surgió un error al eliminar orador ID " + id_orador + " ❌");
        }
        
        getServletContext().getRequestDispatcher("/DashboardOradorController").forward(req, resp);
  
    }

}
