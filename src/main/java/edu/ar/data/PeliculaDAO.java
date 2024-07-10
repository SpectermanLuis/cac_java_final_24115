package edu.ar.data;

import static edu.ar.data.Conexion.close;
import static edu.ar.data.Conexion.getConexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import edu.ar.model.Pelicula;

public class PeliculaDAO {

  private static final String SQL_SELECT = "SELECT * FROM peliculas";
  
  public static List<Pelicula> obtener() {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    Pelicula pelicula = null;
    List<Pelicula> peliculas = new ArrayList<>();

    //bloque try catch finally
    try {
      conn = getConexion();
      ps = conn.prepareStatement(SQL_SELECT);
      rs = ps.executeQuery();
      
      //Itero los resultados devueltos por el select
      while (rs.next()) {
        int id = rs.getInt("id");
        String nombre = rs.getString("nombre");
        String descripcion = rs.getString("descripcion");
        String genero = rs.getString("genero");
        String calificacion = rs.getString("calificacion");
        int anio = rs.getInt("anio");
        byte estrellas = rs.getByte("estrellas");
        String director = rs.getString("director");

        //utilizo la instancia de persona y la inicializo
        pelicula = new Pelicula(id,nombre,descripcion,genero,calificacion,anio,estrellas,director);
        peliculas.add(pelicula);
      }
    } catch (Exception e) {
      e.printStackTrace(System.out);
    } finally {
      try {
        close(rs);
        close(ps);
        close(conn);
      } catch (Exception e) {
        e.printStackTrace(System.out);
      }
    }
    return peliculas;
  }
  
}
