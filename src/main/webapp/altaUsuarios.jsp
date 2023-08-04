<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@ include file="components/header.jsp" %>
<%@ include file="components/bodyPrimeraparte.jsp" %>

<h1>Alta Usuarios </h1>
<p>Este es el aparatado para dar de alta los diferentes usuarios del sistema. </p>


<form class="user" action="SvUsuarios" method="POST">
    <div class="form-group row">
        <div class="col-sm-6 mb-3 mb-sm-0">
            <input type="text" class="form-control form-control-user" id="nombreUsu" name="nombreUsu" placeholder="Usuario">
        </div>
        
    </div>
    <div class="form-group row">
        <div class="col-sm-6">
            <input type="password" class="form-control form-control-user" id="contrasenia" name="contrasenia" placeholder="Contraseña">
        </div>
    </div>
    <div class="form-group row">
        <div class="col-sm-6 mb-3 mb-sm-0">
            <input type="text   " class="form-control form-control-user" id="rol" name="rol" placeholder="Rol">
        </div>
        
     </div>  
    
    
    
    
    <button class="btn btn-primary btn-user btn-block" type="submit"> 
        Crear Usuario 
    </button>
    <hr>
    
</form>


<%@ include file="components/bodyFinal.jsp" %>
