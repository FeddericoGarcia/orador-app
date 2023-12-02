package com.integradorcac.oradorapp.controllers;

import com.integradorcac.oradorapp.dao.iDAO;
import com.integradorcac.oradorapp.dao.implement.DAO;
import com.integradorcac.oradorapp.entity.Orador;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.ServletException;

@WebServlet("/UpdateOradorController")
public class UpdateOradorController extends HttpServlet {
	
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        String nombre= req.getParameter("nombre");
        String apellido = req.getParameter("apellido");
        String mail = req.getParameter("email");
        String tema = req.getParameter("tema");

        List<String> errores = new ArrayList<>();
        if(nombre == null || "".equals(nombre)) {
            errores.add("Nombre vacío");
        }
        if(apellido == null || "".equals(apellido)) {
            errores.add("Apellido vacío");
        }
        if(mail == null || "".equals(mail)) {
            errores.add("Mail vacío");
        }
        if(tema == null || "".equals(tema)) {
            errores.add("Tema vacío");
        }
        if(!errores.isEmpty()) {
            req.setAttribute("error", errores);
            getServletContext().getRequestDispatcher("/dashboard.jsp").forward(req, resp);
            return;
        }

        iDAO dao = new DAO();
        Orador orador = new Orador(Long.parseLong(id),nombre,apellido,mail,tema);
        System.out.println("errores UpdateCon " + errores);
        System.out.println("orador UpdateCon " + orador);
        try { 
            dao.update(orador);
            req.setAttribute("orador", List.of("Orador id:" + orador.getId() + " actualizado correctamente"));
        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("error", List.of("Error actualizando Orador<" + e.getMessage()));
            System.out.println("*************");
            System.out.println("Se detecto un error en doPost UpdateOradorController.java");
        }

        getServletContext().getRequestDispatcher("/DashboardOradorController").forward(req, resp);

    }
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id_orador");
        iDAO dao = new DAO();
        Orador orador = null;

        try {
            orador = dao.findById(Long.valueOf(id));
            System.out.println("orador desde updatecontroller"+ orador);
        } catch (Exception e) {
            System.out.println("*************");
            e.getLocalizedMessage();
            e.printStackTrace();
            System.out.println("Se detecto un error en doGet UpdateOradorController.java");
        }

        req.setAttribute("orador", orador);
        getServletContext().getRequestDispatcher("/editar.jsp").forward(req, resp);
        
    }

}

