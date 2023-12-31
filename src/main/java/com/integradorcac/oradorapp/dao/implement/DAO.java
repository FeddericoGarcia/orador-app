package com.integradorcac.oradorapp.dao.implement;

import com.integradorcac.oradorapp.dao.iDAO;
import com.integradorcac.oradorapp.entity.Orador;
import com.integradorcac.oradorapp.managerDB.ManagerDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DAO implements iDAO{

    @Override
    public void create(Orador newOrador) throws Exception {

        Connection connection = ManagerDB.getConnection();
        String sql = "insert into oradores (nombre, apellido, email, tema) value (?, ?, ?, ?)";
        PreparedStatement statement = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
        
        statement.setString(1,newOrador.getNombre());
        statement.setString(2,newOrador.getApellido());
        statement.setString(3,newOrador.getMail());
        statement.setString(4,newOrador.getTema());
        statement.execute();
        
        ResultSet rSet = statement.getGeneratedKeys();
        
        if(rSet.next()){
            System.out.println("Orador creado exitosamente");
        } else {
            System.out.println("Orador NO creado (DAO)");
        }

        connection.close();
    }

    @Override
    public void update(Orador orador) throws Exception {
        Connection connection = ManagerDB.getConnection();
        String sql = "update oradores set nombre = ?, apellido = ?, email = ?, tema = ? where id_orador= ?";
        PreparedStatement statement = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
        
        statement.setString(1,orador.getNombre());
        statement.setString(2,orador.getApellido());
        statement.setString(3,orador.getMail());
        statement.setString(4,orador.getTema());
        statement.setLong(5, orador.getId());
        
        try{
            statement.execute();
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("Error detectado desde UPDATE.");
        } finally{
            connection.close();    
        }

    }

    @Override
    public Orador findById(Long id) throws Exception {
        Connection connection = ManagerDB.getConnection();
        String sql = "SELECT * FROM oradores WHERE id_orador = ?";

        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setLong(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                String nombre = resultSet.getString("nombre");
                String apellido = resultSet.getString("apellido");
                String email = resultSet.getString("email");
                String tema = resultSet.getString("tema");
                
                return new Orador(id, nombre, apellido, email, tema);
            }
        } catch(Exception e){
            e.printStackTrace();
            System.out.println("Error desde DAO findByID");
        }finally {
            connection.close();
        }
        return null;
    }

    @Override
    public List<Orador> search(String clave) throws Exception {
        Connection connection = ManagerDB.getConnection();
        String sql = "select * from oradores where tema like ?";
        PreparedStatement preStatement = connection.prepareStatement(sql);
        preStatement.setString(1, "%" + clave + "%");
        ResultSet rSet = preStatement.executeQuery();
        
        List<Orador> orador = new ArrayList<Orador>();
        
        while(rSet.next()){
            orador.add(crearOrador(rSet));
        }
        
        connection.close();
        return orador;    
    }

    @Override
    public List<Orador> findAll() throws Exception {
        Connection connection = ManagerDB.getConnection();
        String sql = "select * from oradores";
        Statement statement = connection.createStatement();
        ResultSet rSet = statement.executeQuery(sql);

        List<Orador> lista = new ArrayList<Orador>();
       
        while (rSet.next()){
            
            Long id = rSet.getLong("id_orador");
            String nombre = rSet.getString("nombre");
            String apellido = rSet.getString("apellido");
            String email = rSet.getString("email");
            String tema = rSet.getString("tema");
            
            Orador ora = new Orador(id, nombre, apellido, email, tema);
            lista.add(ora);
            
        }
        connection.close();
        System.out.println("lista desde DAO " + lista);
        return lista; 
    
    }

    @Override
    public void delete(Long id) throws Exception {
        
        Connection connection = ManagerDB.getConnection();
        String sql = "delete from oradores where id_orador = "+ id;
        Statement statement = connection.createStatement();
 
        try{
            statement.executeUpdate(sql);
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("Se detecto un error en DELETE.DAO");
        } finally {
            connection.close(); 
        }
        
    }

    @Override
    public void deleteOrador(Orador orador) throws Exception {
        
        Connection connection = ManagerDB.getConnection();
        String sql = "select id_orador from oradores where mail = ";
        
        PreparedStatement preStatement = connection.prepareStatement(sql);
        preStatement.setString(1,sql);
        ResultSet rSet = preStatement.executeQuery(sql);
        
        if(rSet.next()){
            Long id_orador = rSet.getLong("id_orador");
            String deleteSql = "DELETE FROM oradores WHERE id_orador = ?";
            PreparedStatement deleteStatement = connection.prepareStatement(deleteSql);
            deleteStatement.setLong(1, id_orador);
            deleteStatement.executeUpdate();
        }

        connection.close();  
    }

    private Orador crearOrador(ResultSet rSet) throws SQLException {
        Long id = rSet.getLong("id_orador");
        String nombre = rSet.getString("nombre");
        String apellido = rSet.getString("apellido");
        String mail = rSet.getString("email");
        String tema = rSet.getString("tema");
        
        return new Orador(id, nombre, apellido, mail, tema);
    }
    
    
}
