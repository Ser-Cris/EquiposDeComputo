package mx.edu.utez.equiposdecomputo.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mx.edu.utez.equiposdecomputo.model.DaoEquipos;
import mx.edu.utez.equiposdecomputo.model.Equipos;

import java.io.IOException;

@WebServlet (name = "AdminServlet", value = "/admin-servlet")
public class AdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String operacion = req.getParameter("operacion");
        String respuesta = "";

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nombre = req.getParameter("nombre");
        String marca = req.getParameter("marca");
        double precio = Double.parseDouble(  req.getParameter("precio"));
        int stock = Integer.parseInt(req.getParameter("stock"));

        DaoEquipos dao = new DaoEquipos();
        Equipos epo = new Equipos(0,nombre,marca,precio,stock);
        dao.insert(epo);
        req.getSession().setAttribute("equipos",epo);
        resp.sendRedirect("index.jsp");

    }
}
