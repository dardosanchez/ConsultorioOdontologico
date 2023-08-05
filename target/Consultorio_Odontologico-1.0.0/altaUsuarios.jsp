<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@ include file="components/header.jsp" %>
<%@ include file="components/bodyPrimeraparte.jsp" %>



<div class="container ">
    <h1>Nuevo Usuario </h1>
    <p>Este es el aparatado para dar de alta los diferentes usuarios al sistema. </p>

    <form class="user" action="SvUsuarios" method="POST">
    <div class="form-group row ">
        <div class="col-sm-6 mb-3 mb-sm-0 ">
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
    
    
    
    
    <button class="btn btn-primary btn-user  col-sm-6 mb-5 " type="submit"> 
        Crear Usuario 
    </button>
        
        <hr class="mb-5">
    
</form>
</div>



<%@ include file="components/bodyFinal.jsp" %>
