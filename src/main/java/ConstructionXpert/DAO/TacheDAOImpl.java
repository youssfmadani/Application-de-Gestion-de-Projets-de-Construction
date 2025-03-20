package ConstructionXpert.DAO;

import ConstructionXpert.model.Tache;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class TacheDAOImpl implements TacheDAO {

    @Override
    public ArrayList<Tache> ShowTaches(Integer projet_id) throws SQLException, ClassNotFoundException {
        ArrayList<Tache> taches=new ArrayList<>();
        String sql="SELECT * FROM Tache WHERE projet_id=?";
        PreparedStatement statement = ConnectionDAO.getConnection().prepareStatement(sql);
        statement.setInt(1,projet_id);
        ResultSet resultat = statement.executeQuery();


        while (resultat.next()) {
            Integer tache_id = resultat.getInt("tache_id");
            String description_tache=resultat.getString("description_tache");
            Date date_debutT = resultat.getDate("date_debut");
            Date date_finT = resultat.getDate("date_fin");
            String statut = resultat.getString("statut");
            Tache th=new Tache(tache_id,description_tache,date_debutT,date_finT,statut,projet_id);
            taches.add(th);


        }


        return taches;
    }
    @Override
    public void AddTaches(Tache tache) throws SQLException, ClassNotFoundException {
        String sql = "INSERT INTO Tache (description_tache, date_debut, date_fin, statut, projet_id) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement s = ConnectionDAO.getConnection().prepareStatement(sql);
        s.setString(1, tache.getDescription_tache());
        s.setDate(2, tache.getDate_debut());
        s.setDate(3, tache.getDate_fin());
        s.setString(4, tache.getStatut());
        s.setInt(5, tache.getProjet_id());
        s.executeUpdate();
    }
    @Override
    public void DeleteTaches(Integer idTache) throws SQLException, ClassNotFoundException {
        String sql = "DELETE FROM Tache WHERE tache_id = ?";
        PreparedStatement s = ConnectionDAO.getConnection().prepareStatement(sql);
        s.setInt(1,idTache);
        s.executeUpdate();

    }

    @Override
    public Tache RecupererTache(Integer idTache) throws SQLException, ClassNotFoundException {
        String requet = "SELECT * FROM  Tache WHERE tache_id=?";
        PreparedStatement statement = ConnectionDAO.getConnection().prepareStatement(requet);
        statement.setInt(1, idTache);
        ResultSet resultat = statement.executeQuery();
        Tache th= null;
        while (resultat.next()) {
            String description_tache = resultat.getString("description_tache");
            Date date_debut= resultat.getDate("date_debut");
            Date date_fin = resultat.getDate("date_fin");
            String statut = resultat.getString("statut");
            Integer projet_id = resultat.getInt("projet_id");
            th = new Tache (idTache,description_tache,date_debut,date_fin,statut,projet_id);
            System.out.println(th);
        }

        return th;
    }
    @Override
    public void UpdateTache(Integer idTache, Tache tache) throws SQLException, ClassNotFoundException {
        String sqls = "UPDATE tache SET description_tache=?, date_debut=?,date_fin=?,statut=?,projet_id=? WHERE tache_id=?";
        PreparedStatement s = ConnectionDAO.getConnection().prepareStatement(sqls);
        s.setString(1,tache.getDescription_tache());
        s.setDate(2,tache.getDate_debut());
        s.setDate(3,tache.getDate_fin());
        s.setString(4,tache.getStatut());
        s.setInt(5,tache.getProjet_id());
        s.setInt(6,idTache);
        s.executeUpdate();

    }
}
