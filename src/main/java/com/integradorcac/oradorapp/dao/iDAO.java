package com.integradorcac.oradorapp.dao;

import entity.Orador;
import java.util.List;

public interface iDAO {
    
    public void create(Orador newOrador) throws Exception;
    
    public void update(Orador orador) throws Exception; 
    
    public Orador findById(Long id) throws Exception;

    public List<Orador> search(String clave) throws Exception;

    public List<Orador> findAll() throws Exception;	

    public void delete(Long id) throws Exception;

    public void deleteOrador(Orador orador) throws Exception;

    
}