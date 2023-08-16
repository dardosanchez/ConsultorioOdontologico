
package servlets;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Usuario;


@WebServlet(name = "SvOdontologos", urlPatterns = {"/SvOdontologos"})
public class SvOdontologos extends HttpServlet {
    
    Controladora control = new Controladora();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        List<Usuario> listaUsuario = new ArrayList<Usuario>();
        
        listaUsuario =  control.getUsuarios();
        
        HttpSession misession = request.getSession();
        misession.setAttribute("listaUsuarios", listaUsuario);
        
        
        response.sendRedirect("altaOdontologo.jsp");
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            
            try {
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String dni = request.getParameter("dni");
            String telefono = request.getParameter("telefono");
            String direccion = request.getParameter("direccion");
            String fechaNacStr = request.getParameter("fechaNac");
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date fechanac = dateFormat.parse(fechaNacStr);
            String especialidad = request.getParameter("especialidad");
            String usuario = request.getParameter("usuario");
            String horarioInicio = request.getParameter("horarioInicio");
            String horarioFin = request.getParameter("horarioFin");

            control.crearOdontologo(nombre, apellido, dni, telefono, direccion, fechanac, especialidad, usuario, horarioInicio, horarioFin);

            response.sendRedirect("index.jsp");
        } catch (Exception e) {
            // Manejo de excepciones si ocurre algún problema en la conversión
            response.sendRedirect("error.jsp");
        }


        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
