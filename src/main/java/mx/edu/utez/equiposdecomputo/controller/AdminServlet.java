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
        if (operacion.equals("update")){
            DaoEquipos dao = new DaoEquipos();
            int id = Integer.parseInt(req.getParameter("id"));
            Equipos epo = (Equipos) dao.findOne(id);
            epo.setId(id);
            req.getSession().setAttribute("equipos",epo);

            respuesta ="equiposForm.jsp";
        } else if (operacion.equals("delete")) {
            DaoEquipos dao = new DaoEquipos();
            dao.delete(Integer.parseInt(req.getParameter("id")));
            respuesta = "index.jsp";
        }
        resp.sendRedirect(respuesta);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nombre = req.getParameter("nombre");
        String marca = req.getParameter("marca");
        double precio = Double.parseDouble(  req.getParameter("precio"));
        int stock = Integer.parseInt(req.getParameter("stock"));

        DaoEquipos dao = new DaoEquipos();
        if(!req.getParameter("id").isEmpty()){
            int id = Integer.parseInt(req.getParameter("id"));
            dao.update(id,new Equipos(id,nombre, marca,precio,stock));
        }else {

            Equipos epo = new Equipos(0, nombre, marca, precio, stock);
            dao.insert(epo);
        }
        resp.sendRedirect("index.jsp");

    }
}
