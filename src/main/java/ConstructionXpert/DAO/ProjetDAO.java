package ConstructionXpert.DAO;

import ConstructionXpert.model.Projet;

import java.sql.SQLException;
import java.util.ArrayList;

public interface ProjetDAO {
    ArrayList<Projet> ShowProjet() throws SQLException, ClassNotFoundException;

    ArrayList<Projet> ShowProjet(Integer projectId) throws SQLException, ClassNotFoundException;

    void AddProjet(Projet Projet) throws SQLException, ClassNotFoundException;
    void SupprimerProjet(Integer projet_id) throws SQLException, ClassNotFoundException;

    Projet RecupererProjet(Integer projet_id) throws SQLException, ClassNotFoundException;

    void UpdateProjet(Integer idProjet, Projet projet) throws SQLException, ClassNotFoundException;
}
