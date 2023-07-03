package mx.edu.utez.equiposdecomputo.model;

import java.util.List;

public interface DaoRepository <T>{
    List<T> findAll();
    T findOne(int id);

    boolean update(int id);

    boolean delete(int id);
}
