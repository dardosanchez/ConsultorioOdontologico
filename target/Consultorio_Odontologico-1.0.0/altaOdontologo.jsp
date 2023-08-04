
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<%@ include file="components/header.jsp" %>
<%@ include file="components/bodyPrimeraparte.jsp" %>

<h1>Alta Odontólogos </h1>
<p>Esta es la pagina de altas </p>


<form class="user">
    <div class="form-group row">
        <div class="col-sm-6 mb-3 mb-sm-0">
            <input type="text" class="form-control form-control-user" id="nombre" placeholder="Nombre">
        </div>
        <div class="col-sm-6">
            <input type="text" class="form-control form-control-user" id="apellido" placeholder="Apellido">
        </div>
    </div>
    <div class="form-group row">
        <div class="col-sm-6 mb-3 mb-sm-0">
            <input type="number" class="form-control form-control-user" id="dni" placeholder="Dni">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-0">
            <input type="number" class="form-control form-control-user" id="telefono" placeholder="Teléfono">
        </div>
     </div>  
    <div class="form-group row">
        <div class="col-sm-6 mb-3 mb-sm-0">
            <input type="text" class="form-control form-control-user" id="direccion" placeholder="Dirección">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-0">
            <input type="date" class="form-control form-control-user" id="fechaNacimiento" placeholder="Fecha de Nacimiento">
        </div>
     </div>
    <div class="form-group row">
        <div class="col-sm-12 mb-3 mb-sm-0">
            <input type="text" class="form-control form-control-user" id="especialidad" placeholder="Especialidad">
        </div>
     </div>
    
    <!!<!-- Aca va a ir todo lo que respecta a horarios y usuarios -->
    
    <a href="#" class="btn btn-primary btn-user btn-block"> Guardar Odontólogo </a>
    <hr>
    
</form>


<%@ include file="components/bodyFinal.jsp" %>

    

