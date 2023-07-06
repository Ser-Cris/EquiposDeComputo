<%@ page import="mx.edu.utez.equiposdecomputo.model.Equipos" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Registro</title>
  <link href="css/bootstrap.css" type="text/css" rel="stylesheet" >
  <script src="js/bootstrap.js" type="text/javascript" ></script>
  <style>
    .form-control{
      border-color: #161719;
    }
  </style>
</head>
<body>
<% request.getSession().removeAttribute("equipos");%>
<nav class="navbar navbar-expand-lg" style="background-color: #e3f2fd;">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">BonzyBuddyStore</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="inicio.jsp">Inicio</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="equiposForm2.jsp">Registro</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="index.jsp">Modificar</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<br>
<div class="container col-12">
  <div class="row align-self-start">
    <h1 class="mb-3 row">Nuevo elemento</h1>
    <div class="col col-4">
      <form action="admin-servlet" method="post"  class="col-12 form-control fw-bolder" style="background-color: #e3f2fd;">
        <div class="mb-3 row">
          <label  class="col-sm-4 col-form-label" >Nombre:</label>
          <div class="col-sm-8"  >
              <input type="text"  name="nombre" value="${equipos.nombre}" class="form-control">
          </div>
        </div>
        <div class="mb-3 row">
          <label  class="col-sm-4 col-form-label">Marca:</label>
          <div class="col-sm-8">
            <input type="text"  name="marca" value="${equipos.marca}" class="form-control">
          </div>
        </div>
        <div class="mb-3 row">
          <label  class="col-sm-4 col-form-label">Precio:</label>
          <div class="col-sm-8">
            <input type="number"  name="precio" value="${equipos.precio}" class="form-control">
          </div>
        </div>
        <div class="mb-3 row">
          <label  class="col-sm-4 col-form-label">Stock:</label>
          <div class="col-sm-8">
            <input type="number"  name="stock" value="${equipos.stock}" class="form-control">
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">
            <input type="submit" name="registro" value="Registrar" class="btn btn-primary">
          </div>
        </div>
        <input type="hidden" name="id" value="${equipos.id}">
      </form>
    </div>
  </div>
</div>
</body>
</html>
