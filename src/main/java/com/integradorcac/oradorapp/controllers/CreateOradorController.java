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
import java.util.Date;
import java.util.List;

@WebServlet("/CreateOradorController")
public class CreateOradorController extends HttpServlet {
    
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        
        String nombre = req.getParameter("nombre");
        String apellido = req.getParameter("apellido");
        String email = req.getParameter("email");
        String tema = req.getParameter("tema");
        
        ArrayList<String> errores = new ArrayList<>();
        if(nombre == null || nombre.isEmpty()){
            errores.add("❌ Nombre incorrecto ❌");
        }
        if(apellido == null || apellido.isEmpty()){
            errores.add("❌ Apellido incorrecto ❌");
        }
        if(email == null || email.isEmpty()){
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
        
        orador = new Orador(nombre, apellido, email, tema);
        System.out.println("Orador desde CreatOradorController.java" + orador);
        try{
            dao.create(orador); 
            req.setAttribute("success", List.of("Alta de Orador exitosa"));
        }catch(Exception e){
            e.getMessage();
            e.printStackTrace();
            System.out.println("**************");
            System.out.println("Se detecto error en CreateOradorController.java");
        }
        getServletContext().getRequestDispatcher("/FindAllOradorController").forward(req, resp);
    }
    
    
}
