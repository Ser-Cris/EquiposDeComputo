<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Registro</title>
  <link href="css/bootstrap.css" type="text/css" rel="stylesheet" >
  <script src="js/bootstrap.js" type="text/javascript" ></script>
</head>
<body>
<nav class="navbar navbar-expand-lg" style="background-color: #e3f2fd;">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="inicio.jsp">Inicio</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="equiposForm.jsp">Registro</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="index.jsp">Modificar</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<h1 class="h1">Nuevo elemento</h1>
<br>
<div class="container">
  <div class="row">
    <div class="col-sm-7">
      <form action="admin-servlet" method="post">
        <div class="mb-3 row">
          <label  class="col-sm-3 col-form-label">Nombre:</label>
          <div class="col-sm-4">
            <input type="text"  name="nombre" value="${equipos.nombre}" class="form-control">
          </div>
        </div>
        <div class="mb-3 row">
          <label  class="col-sm-3 col-form-label">Marca:</label>
          <div class="col-sm-4">
            <input type="text"  name="marca" value="${equipos.marca}" class="form-control">
          </div>
        </div>
        <div class="mb-3 row">
          <label  class="col-sm-3 col-form-label">Precio:</label>
          <div class="col-sm-4">
            <input type="number"  name="precio" value="${equipos.precio}" class="form-control">
          </div>
        </div>
        <div class="mb-3 row">
          <label  class="col-sm-3 col-form-label">Stock:</label>
          <div class="col-sm-4">
            <input type="number"  name="stock" value="${equipos.stock}" class="form-control">
          </div>
        </div>
        <div class="row">
          <div class="col-sm-3">
            <input type="submit" name="registro" value="Registrar" class="btn btn-primary">
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>
