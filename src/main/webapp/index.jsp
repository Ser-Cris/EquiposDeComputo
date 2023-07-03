<%@ page import="mx.edu.utez.equiposdecomputo.model.DaoEquipos" %>
<%@ page import="java.util.List" %>
<%@ page import="mx.edu.utez.equiposdecomputo.model.Equipos" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" >
    <script src="js/bootstrap.js" type="text/javascript" ></script>
</head>
<body>
<h1 ><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<table>
    <thead>
    <tr>
        <th>Nombre: </th>
        <th>Marca: </th>
        <th>Precio: </th>
        <th>Stock: </th>
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
            <td>${emi.precio}</td>
            <td>${emi.stock}</td>
            <td><a class="btn btn-info" HREF="usuario-servlet?id=${emi.id}&operacion=update">#</a></td>
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
</body>
</html>