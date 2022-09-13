/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 *
 * @author Admin
 */
public class Datos {

    Connection p;
    PreparedStatement z;

    public Datos() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            p = DriverManager.getConnection("jdbc:mysql://localhost:3306/empresas", "root", "");
            System.out.println("Se conecto correctamente la base de datos");
        } catch (Exception e) {

            System.out.println("Error no se conecto a la base de datos" + e);
        }
    }

    public int registraPro(String a, String b, String c) {
        int f = 0;
        try {
            z = p.prepareStatement("insert into producto values(?,?,?)");
            z.setString(1, a);
            z.setString(2, b);
            z.setString(3, c);

            f = z.executeUpdate();

            System.out.println("Registro Correcto");

        } catch (Exception e) {
            System.out.println("Error no se registro" + e);
        }

        return f;
    }
    
    public int registraCliente(String dni, String nom, String apepat, String apemat) {
        int f = 0;
        try {
            z = p.prepareStatement("insert into cliente values(?,?,?,?)");
            z.setString(1, dni);
            z.setString(2, nom);
            z.setString(3, apepat);
            z.setString(4, apemat);

            f = z.executeUpdate();

            System.out.println("Registro Correcto");

        } catch (Exception e) {
            System.out.println("Error no se registro" + e);
        }

        return f;
    }
    
    
    public int editarCliente(String dni,String nom,String apepat,String apemat){
       int f=0;
          try {
           z=p.prepareStatement("update cliente set nombre=?,ape_pat=?,ape_mat=? WHERE dni=?");
           z.setString(1, nom);
           z.setString(2, apepat);
           z.setString(3, apemat);
           z.setString(4, dni);
           
           f=z.executeUpdate();
           
              System.out.println("Registro Correcto");
           
       } catch (Exception e) {
              System.out.println("Error no se registro"+e);
       }
         
       return f;
   }
    
      
    public int eliminarCliente(String dni) {
        int g = 0;
        try {
            z = p.prepareStatement("delete from cliente where dni=?");
            z.setString(1, dni);
            g = z.executeUpdate();

            System.out.println("Eliminado Correcto");

        } catch (Exception e) {
            System.out.println("Error no se Elimino" + e);
        }

        return g;

    }
    
}
