<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Inicio</title>
  <link href="css/bootstrap.css" type="text/css" rel="stylesheet" >
  <script src="js/bootstrap.js" type="text/javascript" ></script>
  <style>
    #main-carousel-item,
    .carousel-item {
      height: 550px !important;
    }

    #carrusel-UTEZ {
      margin-bottom: 50px;
    }

    .card-img-top {
      width: auto;
      height: 18rem;
    }

    .row {
      margin-bottom: 25px;
    }
    a {
      text-decoration: none;
    }
  </style>
</head>
<body>
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
<h1 class="h1"> Bienvenido al Sistema Admin!</h1>
<hr class="border border-primary border-3 opacity-75">
<br>
<div id="carrusel-UTEZ" class="carousel slide" data-bs-ride="carousel" class="row-cols-md-6">

  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="5000">
      <img src="img/venta-computadoras.jpg"
           class="d-block w-100" alt="Estudiantes aplicando su examen de admisión 1">
    </div>
    <div class="carousel-item" data-bs-interval="5000">
      <img src="img/venta-computadoras2.jpg"
           class="d-block w-100" alt="Estudiantes aplicando su examen de admisión 2">
    </div>
    <div class="carousel-item">
      <img src="img/venta-computadoras3.jpg"
           class="d-block w-100" alt="Estudiantes aplicando su examen de admisión 3">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carrusel-UTEZ" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previo</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carrusel-UTEZ" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Siguiente</span>
  </button>

</div>
</body>
</html>
