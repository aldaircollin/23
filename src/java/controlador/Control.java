/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Beans/Bean.java to edit this template
 */
package controlador;

import java.beans.*;
import java.io.Serializable;
import modelo.Datos;

/**
 *
 * @author Admin
 */
public class Control implements Serializable {
    
    Datos d = new Datos();
    
    public static final String PROP_SAMPLE_PROPERTY = "sampleProperty";
    
    private String sampleProperty;
    
    private PropertyChangeSupport propertySupport;
    
    public Control() {
        propertySupport = new PropertyChangeSupport(this);
    }
    
    public String getSampleProperty() {
        return sampleProperty;
    }
    
    public void setSampleProperty(String value) {
        String oldValue = sampleProperty;
        sampleProperty = value;
        propertySupport.firePropertyChange(PROP_SAMPLE_PROPERTY, oldValue, sampleProperty);
    }
    
    public void addPropertyChangeListener(PropertyChangeListener listener) {
        propertySupport.addPropertyChangeListener(listener);
    }
    
    public void removePropertyChangeListener(PropertyChangeListener listener) {
        propertySupport.removePropertyChangeListener(listener);
    }
    
    public int regProd(String a, String b, String c) {

        return d.registraPro(a, b, c);
    }
    
    public int registrarCliente(String dni, String nom, String apepat, String apemat) {

        return d.registraCliente(dni, nom, apepat, apemat);
    }
    
    public int editarCliente(String dni, String nom, String apepat, String apemat) {

        return d.editarCliente(dni, nom, apepat, apemat);
    }
    
     public int eliminarCliente(String dni) {

        return d.eliminarCliente(dni);
    }
    
}
