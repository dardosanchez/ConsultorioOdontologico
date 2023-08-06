<%@page import="Enums.Rol"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@ include file="components/header.jsp" %>
<%@ include file="components/bodyPrimeraparte.jsp" %>



<div class="container ">
    <br>    
    <br>
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
    
    <!<!-- Nueva Parte del Codigo -->
    <div class="form-group row">
        <div class="col-sm-6">
            <select name="rol" id="roles" class="  form-select form-control"  style="
                    border-radius: 10rem;
                    font-size: .8rem;
                    width: 100%; 
                    height: 4em;
                    padding: 1rem!important;
                    color: #6e707e;
                    border: 1px solid #d1d3e2;
                    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
                    ">
                <option selected disabled value="Null">Rol</option>
                <% for (Rol roles : Rol.values()) { %>
                        <option value=<%= roles.name() %>><%= roles.name() %></option>
                <% } %>
            </select>
        </div>
    </div>

    <br>

    <button class="btn btn-primary btn-user  col-sm-6 mb-5" type="submit"> 
        Crear Usuario 
    </button>
        
        <hr class="mb-5">
    
</form>
</div>



<%@ include file="components/bodyFinal.jsp" %>
