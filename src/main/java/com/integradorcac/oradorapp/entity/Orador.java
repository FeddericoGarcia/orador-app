package com.integradorcac.oradorapp.entity;

public class Orador {
    private Long id;
    private String nombre;
    private String apellido;
    private String mail;
    private String tema;

    public Orador() {
    }

    public Orador(Long id, String nombre, String apellido, String mail, String tema) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.mail = mail;
        this.tema = tema;
    }
    public Orador(String nombre, String apellido, String mail, String tema) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.mail = mail;
        this.tema = tema;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getTema() {
        return tema;
    }

    public void setTema(String tema) {
        this.tema = tema;
    }

    @Override
    public String toString() {
        return "Orador{" + "id=" + id + ", nombre=" + nombre + ", apellido=" + apellido 
                + ", mail=" + mail + ", tema=" + tema + '}';
    }
    
}
