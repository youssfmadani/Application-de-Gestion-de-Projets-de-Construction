CREATE DATABASE construction;
USE construction;

CREATE TABLE Projet (
                        projet_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                        nom_projet VARCHAR(255) NOT NULL,
                        description_projet TEXT,
                        date_debut DATE,
                        date_fin DATE,
                        budget DECIMAL(10,2),
                        Picture_Url VARCHAR(255)
);

CREATE TABLE Tache (
                       tache_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                       description_tache TEXT NOT NULL,
                       date_debut DATE,
                       date_fin DATE,
                       statut varchar(255) not null,
                       projet_id INT UNSIGNED,
                       FOREIGN KEY (projet_id) REFERENCES Projet(projet_id) ON DELETE CASCADE
);

CREATE TABLE Ressource (
                           ressource_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                           ressource_nom VARCHAR(255) NOT NULL,
                           type_ressource varchar(255) NOT NULL,
                           quantite INT UNSIGNED NOT NULL DEFAULT 1,
                           fournisseur VARCHAR(255),
                           tache_id INT UNSIGNED,
                           FOREIGN KEY (tache_id) REFERENCES Tache(tache_id) ON DELETE CASCADE
);
