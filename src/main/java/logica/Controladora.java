
package logica;


import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import persistencia.ControladoraPersistencia;
import persistencia.exceptions.NonexistentEntityException;


public class Controladora {
    
    ControladoraPersistencia controlPersis = new ControladoraPersistencia();
    
    public void crearUsuario(String nombreUsuario,String contrasenia,String rol){
      
        Usuario usu = new Usuario();
        usu.setNombreUsuario(nombreUsuario);
        usu.setContrasenia(contrasenia);
        usu.setRol(rol);
        
        controlPersis.crearUsuario(usu);
    }

    public List <Usuario> getUsuarios() {
        
        return controlPersis.getUsuarios();
        
    }

    public void borrarUsuario(int id) throws NonexistentEntityException {
        controlPersis.borrarUsuario(id);
    }

    public Usuario traerUsuario(int id) {
        return controlPersis.traerUsuario(id);
    }

    public void editarUsuario(Usuario usu) {
        controlPersis.editarUsuario(usu);
    }

    public boolean comprobarIngreso(String usuario, String contrasenia) {
        
        boolean ingreso = false;
        
        List<Usuario> listaUsuarios = new ArrayList<Usuario>();
        listaUsuarios = controlPersis.getUsuarios(); 
        
        for (Usuario usu : listaUsuarios) {
            if(usu.getNombreUsuario().equals(usuario)){
                if(usu.getContrasenia().equals(contrasenia)){
                   ingreso = true; 
                } 
            }
        }
        return ingreso;
    }

    public void crearOdontologo(String nombre, String apellido, String dni, String telefono, String direccion, Date fechanac, String especialidad, String usuario, String horarioInicio, String horarioFin) {
        ArrayList<Turno> listaTurno = new ArrayList<>();
        Usuario usu = controlPersis.traerUsuarioName(usuario);
        Horario horario = verificarHorario(horarioInicio, horarioFin);

        if (horario == null) {
            horario = new Horario(0, horarioInicio, horarioFin);
        }

        Odontologo odonto = new Odontologo(especialidad, listaTurno, usu, horario, 0, dni, nombre, apellido, telefono, direccion, fechanac);

        controlPersis.crearOdontologo(odonto);

    }

    public Horario verificarHorario(String horarioInicio, String horarioFin) {
        List<Horario> listaHorarios = controlPersis.traerHorarios();

        for (Horario aux : listaHorarios) {
            if (aux.getHorario_inicio().equals(horarioInicio) && aux.getHorario_fin().equals(horarioFin)) {
                return aux; // Retornar el horario existente en lugar de crear uno nuevo
            }
        }

        return null; // Si no se encontró un horario coincidente, retornamos null
    }

}
