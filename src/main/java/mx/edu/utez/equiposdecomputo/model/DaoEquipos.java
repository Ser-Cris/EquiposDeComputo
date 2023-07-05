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
        Equipos epo = new Equipos();
        MysqlConector con = new MysqlConector();
        Connection connection = con.connect();
        try {
            PreparedStatement stmt =
                    connection.prepareStatement("select * from equipos where id=?");
            stmt.setInt(1,id);
            ResultSet res = stmt.executeQuery();
            if (res.next()) {
                epo.setNombre(res.getString("nombre"));
                epo.setMarca(res.getString("marca"));
                epo.setPrecio(res.getDouble("precio"));
                epo.setStock(res.getInt("stock"));
            } else {
                epo.setNombre("No existe el usuario con el id: "+id);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return epo;
    }

    @Override
    public boolean update(int id) {
        return false;
    }

    @Override
    public boolean delete(int id) {
        return false;
    }

    public boolean insert(Equipos epo){
        boolean resultado = false;
        MysqlConector con = new MysqlConector();
        Connection conection = con.connect();
        try {
            PreparedStatement stmt =
                    conection.prepareStatement(
                            "insert into equipos(nombre,marca,precio,stock) " +
                                    "values (?,?,?,?)");
            stmt.setString(1,epo.getNombre());
            stmt.setString(2, epo.getMarca());
            stmt.setDouble(3,epo.getPrecio());
            stmt.setInt(4,epo.getStock());
            int res = stmt.executeUpdate();
            if(res>=1) resultado=true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return resultado;
    }
}

