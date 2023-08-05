<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@ include file="components/header.jsp" %>
<%@ include file="components/bodyPrimeraparte.jsp" %>

<h1>Edicion de Usuario </h1>
<p>Este es el aparatado para modificar un usuario del sistema. </p>

<% Usuario usu = (Usuario)request.getSession().getAttribute("usuEditar"); %>

<form class="user" action="SvEditUsuarios" method="POST">
    <div class="form-group row">
        <div class="col-sm-6 mb-3 mb-sm-0">
            <input type="text" class="form-control form-control-user" id="nombreUsu" name="nombreUsu" placeholder="Usuario" value="<%= usu.getNombreUsuario() %>">
        </div>
        
    </div>
    <div class="form-group row">
        <div class="col-sm-6">
            <input type="password" class="form-control form-control-user" id="contrasenia" name="contrasenia" placeholder="Contraseña" value="<%= usu.getContrasenia() %>">
        </div>
    </div>
    <div class="form-group row">
        <div class="col-sm-6 mb-3 mb-sm-0">
            <input type="text   " class="form-control form-control-user" id="rol" name="rol" placeholder="Rol" value="<%= usu.getRol() %>">
        </div>
        
     </div>  
    
    
    
    
    <button class="btn btn-primary btn-user btn-block" type="submit"> 
        Guardar Modificación 
    </button>
    <hr>
    
</form>


<%@ include file="components/bodyFinal.jsp" %>
