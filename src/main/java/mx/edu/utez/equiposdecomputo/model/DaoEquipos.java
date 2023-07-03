package mx.edu.utez.equiposdecomputo.model;

import mx.edu.utez.equiposdecomputo.utils.MysqlConector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DaoEquipos implements  DaoRepository{
    @Override
    public List findAll() {
        List<Equipos> listaEquipos = new ArrayList<>();
        MysqlConector con = new MysqlConector();
        Connection conexion =  con.connect();

        try {
            PreparedStatement stmt = conexion.prepareStatement("select * from equipos");
            ResultSet resultado = stmt.executeQuery();

            while (resultado.next()){
                Equipos epo = new Equipos();
                epo.setId(resultado.getInt("id"));
                epo.setNombre(resultado.getString("nombre"));
                epo.setMarca(resultado.getString("marca"));
                epo.setPrecio(resultado.getDouble("precio"));
                epo.setStock(resultado.getInt("stock"));
                listaEquipos.add(epo);

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return  listaEquipos;
    }

    @Override
    public Object findOne(int id) {
        return null;
    }

    @Override
    public boolean update(int id) {
        return false;
    }

    @Override
    public boolean delete(int id) {
        return false;
    }
}
