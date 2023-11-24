package com.integradorcac.oradorapp.controllers;


import com.integradorcac.oradorapp.dao.iDAO;
import com.integradorcac.oradorapp.dao.implement.DAO;
import entity.Orador;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class CreateOradorController extends HttpServlet {
    
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        
        String nombre = req.getParameter("nombre");
        String apellido = req.getParameter("apellido");
        String mail = req.getParameter("mail");
        String tema = req.getParameter("tema");
        
        ArrayList<String> errores = new ArrayList<>();
        if(nombre == null || nombre.isEmpty()){
            errores.add("❌ Nombre incorrecto ❌");
        }
        if(apellido == null || apellido.isEmpty()){
            errores.add("❌ Apellido incorrecto ❌");
        }
        if(mail == null || mail.isEmpty()){
            errores.add("❌ eMail incorrecto ❌");
        }
        if(tema == null || tema.isEmpty()){
            errores.add("❌ Tema incorrecto ❌");
        }
        
        if(!errores.isEmpty()) {
            req.setAttribute("errors", errores);
            getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
            return;
        }
        
        iDAO dao = new DAO();
        Orador orador;
        
        orador = new Orador(nombre, apellido, mail, tema);
        
        try{
            dao.create(orador); 
            req.setAttribute("success", List.of("Alta de Orador exitosa"));
        }catch(Exception e){
            System.out.println("Error en alta de Orador");
            e.getMessage();
            e.getStackTrace();
        }
        getServletContext().getRequestDispatcher("/FindAllOradorController").forward(req, resp);
    }
    
    
}
