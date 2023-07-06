<%@ page import="mx.edu.utez.equiposdecomputo.model.DaoEquipos" %>
<%@ page import="java.util.List" %>
<%@ page import="mx.edu.utez.equiposdecomputo.model.Equipos" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Actualizar y Eliminar</title>
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
                    <%
                        Equipos epo = new Equipos(0,"","",0,0);
                        request.getSession().setAttribute("equipos",epo);
                    %>
                </li>
            </ul>
        </div>
    </div>
</nav>
<h1 class="h1"> Actualizar y Eliminar Datos</h1>
<br>
<div class="container">
    <div class="row">
        <div class="col-12">
            <table class="table table-info  table-striped table-sm border-primary">
                <thead>
                <tr>
                    <th>Nombre: </th>
                    <th>Marca: </th>
                    <th>Precio: </th>
                    <th>Stock: </th>
                    <th class="col-1">Actualizar: </th>
                    <th class="col-1">Eliminar: </th>
                </tr>
                </thead>
                <tbody>
                <%
                    DaoEquipos dao = new DaoEquipos();
                    request.getSession().setAttribute("equipos",dao.findAll() );
                    //dao.delete(2);
                %>
                <c:forEach items="${equipos}" var="emi">
                    <tr>
                        <td>${emi.nombre}</td>
                        <td>${emi.marca}</td>
                        <td>$${emi.precio}</td>
                        <td>${emi.stock}</td>
                        <td><a class="btn btn-info" HREF="admin-servlet?id=${emi.id}&operacion=update">#</a></td>
                        <td><a class="btn btn-danger" HREF="usuario-servlet?id=${emi.id}&operacion=delete">X</a></td>
                    </tr>
                </c:forEach>

                <%--<%List<Usuario> listaUsuarios = (ArrayList)
                        request.getSession().getAttribute("usuarios");
                    for (Usuario u: listaUsuarios) {%>
                        <tr>
                            <td><%= u.getNombre()%></td>
                            <td><%= u.getCorreo()%></td>
                            <td><%= u.getContra()%></td>
                        </tr>
                    <% } %> --%>

                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>